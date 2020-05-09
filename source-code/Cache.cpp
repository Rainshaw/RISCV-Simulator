//
//  Cache.cpp
//  lab3
//
//  Created by 郜瑞啸 on 2020/4/21.
//  Copyright © 2020 郜瑞啸. All rights reserved.
//

#include "Cache.hpp"

#define is_pow(x) (x&(x-1))==0
using std::vector;

uint32_t log2(uint32_t val) {
    if (val == 0) {
        fprintf(stderr, "log2 0, invalid!\n");
        exit(-1);
    }
    uint32_t res = 0;
    while (val > 1) {
        val >>= 1;
        res++;
    }
    return res;
}

bool Cache::policyValid() const {
    if (!(is_pow(policy.cache_size))) {
        fprintf(stderr, "Cache Size Invalid: %d\n", policy.cache_size);
        return false;
    }
    if (!(is_pow(policy.block_size))) {
        fprintf(stderr, "Block Size Invalid: %d\n", policy.block_size);
        return false;
    }
    if (policy.block_num * policy.block_size != policy.cache_size) {
        fprintf(stderr, "block_num * block_size != cache_size\n");
        return false;
    }
    if (policy.block_num % policy.associativity != 0) {
        fprintf(stderr, "block_num %% associativity != 0\n");
        return false;
    }
    return true;
}

void Cache::initCache() {
    this->blocks = std::vector<Block>(policy.block_num);
    for (uint32_t i = 0; i < this->blocks.size(); i++) {
        Block &b = this->blocks[i];
        b.size = policy.block_size;
        b.id = i / policy.associativity;
        b.data = std::vector<uint8_t>(b.size);
    }
    this->plru_bit = new int *[this->policy.block_num / this->policy.associativity];
    for (uint32_t i = 0; i < this->policy.block_num / this->policy.associativity; i++) {
        this->plru_bit[i] = new int[this->policy.associativity];
        for (uint32_t j = 0; j < this->policy.associativity; j++) {
            this->plru_bit[i][j] = 0;
        }
    }
    this->mct = new uint64_t *[this->policy.block_num / this->policy.associativity];
    for (uint32_t i = 0; i < this->policy.block_num / this->policy.associativity; i++) {
        this->mct[i] = new uint64_t[this->mct_size];
        for (uint32_t j = 0; j < this->mct_size; j++) {
            this->mct[i][j] = (uint64_t) -1;
        }
    }

}

bool Cache::cacheSetFull(uint32_t set_id) const {
    uint32_t begin = set_id * this->policy.associativity;
    uint32_t end = begin + this->policy.associativity;
    for (uint32_t i = begin; i < end; i++) {
        if (!this->blocks[i].valid)
            return false;
    }
    return true;
}


uint32_t Cache::getReplacementBlockId(uint32_t set_id) {
    uint32_t begin = set_id * this->policy.associativity;
    uint32_t end = begin + this->policy.associativity;
    // 空的
    for (uint32_t i = begin; i < end; i++) {
        if (!this->blocks[i].valid)
            return i;
    }

    if (this->replace_policy == Cache::ReplacePolicy::LRU) {
        // LRU
        uint32_t min_reference = this->blocks[begin].last_reference;
        uint32_t return_id = begin;
        for (uint32_t i = begin; i < end; i++) {
            if (this->blocks[i].last_reference < min_reference) {
                return_id = i;
                min_reference = this->blocks[i].last_reference;
            }
        }
        return return_id;
    } else if (this->replace_policy == Cache::ReplacePolicy::RANDOM) {
        // RANDOM
        return begin + rand() % (end - begin);
    } else {
        //PLRU
        int node, res = 0, base;
        for (node = 1, base = 1; node < this->policy.associativity; base *= 2) {
            res += base * plru_bit[set_id][node];
            node = node * 2 + plru_bit[set_id][node];
        }
        return res + begin;
    }
}

void Cache::loadBlockFromLowerLevel(uint32_t addr, uint32_t *cycles) {
    // get block from memory or lower cache
    Block b;
    b.valid = true;
    b.dirty = false;
    b.tag = this->getTag(addr);
    b.id = this->getId(addr);
    b.size = this->policy.block_size;
    b.data = vector<uint8_t>(b.size);
    uint32_t bits = log2(b.size);
    uint32_t mask = ~((1 << bits) - 1);
    uint32_t block_begin_addr = addr & mask;
    for (uint32_t i = block_begin_addr; i < block_begin_addr + b.size; i++) {
        if (this->lower_cache == nullptr) {
            b.data[i - block_begin_addr] = this->memory->getByteNoCache(i);
        } else {
            if (i == block_begin_addr)
                b.data[i - block_begin_addr] = this->lower_cache->getByte(i, cycles);
            else
                b.data[i - block_begin_addr] = this->lower_cache->getByteCopy(i);
        }
    }
    if (this->lower_cache == nullptr) {
        this->statistics.cycle_cnt += 100;
        if (cycles)
            *cycles += 100;
    } else {
        this->statistics.cycle_cnt += this->lower_cache->policy.hit_latency;
        if (cycles)
            *cycles += this->lower_cache->policy.hit_latency;
    }

    // replace cache

    uint32_t replace_id = this->getReplacementBlockId(b.id);
    Block replace_block = this->blocks[replace_id];
    if (this->write_back && replace_block.valid && replace_block.dirty) {
        this->writeBlockToLowerLevel(replace_block, cycles);
    }
    this->blocks[replace_id] = b;
}

void Cache::PLRUUpdate(uint32_t block_id) {
    uint32_t set_id = block_id / this->policy.associativity;
    uint32_t id2 = block_id % this->policy.associativity;
    int node, tmp;
    for (node = 1, tmp = id2; node < this->policy.associativity;) {
        plru_bit[set_id][node] = tmp % 2 == 0 ? 1 : 0;
        node = node * 2 + tmp % 2;
        tmp /= 2;
    }
}

void Cache::MCTUpdate(uint32_t id, uint32_t addr) {
    for (uint32_t i = this->mct_size - 1; i > 0; i--) {
        mct[id][i] = mct[id][i - 1];
    }
    mct[id][0] = this->getTag(addr);
}

void Cache::writeBlockToLowerLevel(Block &b, uint32_t *cycles) {
    uint32_t addr_begin = this->getAddr(b);

    if (this->lower_cache == nullptr) {
        if (cycles) {
            *cycles += 100;
        }
        for (uint32_t i = 0; i < b.size; i++) {
            this->memory->setByteNoCache(addr_begin + i, b.data[i]);
        }
    } else {
        for (uint32_t i = 0; i < b.size; i++) {
            if (i == 0)
                this->lower_cache->setByte(addr_begin, b.data[0], cycles);
            else
                this->lower_cache->setByteCopy(addr_begin + i, b.data[i]);
        }
        if (cycles) {
            *cycles += this->lower_cache->policy.hit_latency;
        }
    }
}

uint32_t Cache::getTag(uint32_t addr) const {
    uint32_t offset_bits = log2(this->policy.block_size);
    uint32_t id_bits = log2(this->policy.block_num / this->policy.associativity);
    uint32_t mask = (1 << (32 - offset_bits - id_bits)) - 1;
    return (addr >> (offset_bits + id_bits)) & mask;
}

uint32_t Cache::getId(uint32_t addr) const {
    uint32_t offset_bits = log2(policy.block_size);
    uint32_t id_bits = log2(this->policy.block_num / this->policy.associativity);
    uint32_t mask = (1 << id_bits) - 1;
    return (addr >> offset_bits) & mask;
}

uint32_t Cache::getOffset(uint32_t addr) const {
    uint32_t bits = log2(this->policy.block_size);
    uint32_t mask = (1 << bits) - 1;
    return addr & mask;
}

uint32_t Cache::getAddr(Block &b) const {
    uint32_t offset_bits = log2(this->policy.block_size);
    uint32_t id_bits = log2(this->policy.block_num / this->policy.associativity);
    return (b.tag << (offset_bits + id_bits)) | (b.id << offset_bits);
}


Cache::Cache(MemoryManager *manager, Policy policy, Cache *lower_cache,
             bool write_back, bool write_allocate, uint32_t mct_size) {
    this->memory = manager;
    this->mct_size = mct_size;
    this->policy = policy;
    this->lower_cache = lower_cache;
    this->reference_cnt = 0;
    if (!this->policyValid()) {
        fprintf(stderr, "Policy invalid\n");
        exit(-1);
    }
    this->initCache();
    this->write_allocate = write_allocate;
    this->write_back = write_back;
}

void Cache::printStatistics() {
    printf("--------- STATISTICS -----------\n");
    printf("Num Read: %d\n", this->statistics.read_cnt);
    printf("Num Write: %d\n", this->statistics.write_cnt);
    printf("Num Hit: %d\n", this->statistics.hit_cnt);
    printf("Num Miss: %d\n", this->statistics.miss_cnt);
    printf("Total Cycles: %u\n", this->statistics.cycle_cnt);
    if (this->lower_cache != nullptr) {
        printf("----------- LOWER CACHE -----------\n");
        this->lower_cache->printStatistics();
    }
}

void Cache::printInfo() {
    printf("----------- Cache Info ------------\n");
    printf("Cache Size: %d bytes\n", this->policy.cache_size);
    printf("Block Size: %d bytes\n", this->policy.block_size);
    printf("Block Num: %d\n", this->policy.block_num);
    printf("Associativiy: %d\n", this->policy.associativity);
    printf("Hit Latency: %d\n", this->policy.hit_latency);
//    printf("Miss Latency: %d\n", this->policy.miss_latency);

    for (int i = 0; i < this->blocks.size(); i++) {
        const Block &b = this->blocks[i];
        printf("Block %d:\ttag 0x%x\tid %d\t%s\t%s\tlast ref %d\n", i, b.tag, b.id,
               b.valid ? "valid" : "invalid",
               b.dirty ? "modified" : "unmodified", b.last_reference);
    }

}


bool Cache::inCache(uint32_t addr) {
    return getBlockId(addr) != (uint32_t) -1;
}

uint32_t Cache::getBlockId(uint32_t addr) {
    uint32_t tag = this->getTag(addr);
    uint32_t id = this->getId(addr);
    for (uint32_t i = id * this->policy.associativity; i < (id + 1) * this->policy.associativity; i++) {
        if (this->blocks[i].id != id) {
            fprintf(stderr, " Inconsistent ID in block %d\n", i);
            exit(-1);
        }
        if (this->blocks[i].valid && this->blocks[i].tag == tag) {
            return i;
        }
    }
    return -1;
}

uint8_t Cache::getByte(uint32_t addr, uint32_t *cycles) {
    this->reference_cnt++;
    this->statistics.read_cnt++;
    int block_id;
    if ((block_id = this->getBlockId(addr)) != -1) {
        // in cache
        uint32_t offset = this->getOffset(addr);
        this->statistics.hit_cnt++;
        this->statistics.cycle_cnt += this->policy.hit_latency;
        this->PLRUUpdate(block_id);
        this->blocks[block_id].last_reference = this->reference_cnt;
        if (cycles)
            *cycles += this->policy.hit_latency;
        return this->blocks[block_id].data[offset];
    }

    this->statistics.miss_cnt++;
    if (this->bypass) {
        if (this->cacheSetFull(getId(addr))) {
            bool next_level = true;
            uint32_t set_id = getId(addr);
            uint32_t tag = getTag(addr);
            for (int tmp = 0; tmp < this->mct_size; tmp++) {
                if (mct[set_id][tmp] == (uint64_t) -1 || mct[set_id][tmp] == tag) {
                    next_level = false;
                    break;
                }
            }
            if (next_level) {
                uint8_t res;
                if (this->lower_cache == nullptr) {
                    if (cycles)
                        *cycles += 100;
                    this->statistics.cycle_cnt += 100;
                    res = this->memory->getByteNoCache(addr);
                } else {
                    this->statistics.cycle_cnt += this->lower_cache->policy.hit_latency;
                    res = this->lower_cache->getByte(addr, cycles);
                }
                MCTUpdate(getId(addr), addr);
                return res;
            }
        }
        MCTUpdate(getId(addr), addr);
    }

    this->loadBlockFromLowerLevel(addr, cycles);
    if (this->pre_fetch)
        preFetch(addr);

    if ((block_id = this->getBlockId(addr)) != -1) {
        uint32_t offset = this->getOffset(addr);
        this->PLRUUpdate(block_id);
        this->blocks[block_id].last_reference = this->reference_cnt;
        return this->blocks[block_id].data[offset];
    } else {
        fprintf(stderr, "Error, data should in top level cache, but it seems not\n");
        exit(-1);
    }
}

uint8_t Cache::getByteCopy(uint32_t addr, uint32_t *cycles) {
    int block_id;
    if ((block_id = this->getBlockId(addr)) != -1) {
        // in cache
        uint32_t offset = this->getOffset(addr);
        return this->blocks[block_id].data[offset];
    }
    this->loadBlockFromLowerLevel(addr, cycles);
    if ((block_id = this->getBlockId(addr)) != -1) {
        uint32_t offset = this->getOffset(addr);
        return this->blocks[block_id].data[offset];
    } else {
        fprintf(stderr, "Error, data should in top level cache, but it seems not\n");
        exit(-1);
    }
}

void Cache::setByte(uint32_t addr, uint8_t val, uint32_t *cycles) {
    this->reference_cnt++;
    this->statistics.write_cnt++;
    int block_id;
    if ((block_id = this->getBlockId(addr)) != -1) {
        //in cache
        uint32_t offset = this->getOffset(addr);
        this->statistics.hit_cnt++;
        this->statistics.cycle_cnt += this->policy.hit_latency;
        this->blocks[block_id].dirty = true;
        this->PLRUUpdate(block_id);
        this->blocks[block_id].last_reference = this->reference_cnt;
        this->blocks[block_id].data[offset] = val;
        if (!this->write_back) {
            this->writeBlockToLowerLevel(this->blocks[block_id], cycles);
//            this->statistics.cycle_cnt += this->policy.miss_latency;
        }
        if (cycles) {
            *cycles += this->policy.hit_latency;
        }
        return;
    }

    this->statistics.miss_cnt++;
//    this->statistics.cycle_cnt += this->policy.miss_latency;

    if (!this->write_allocate) {
        if (this->lower_cache == nullptr) {
            this->memory->setByteNoCache(addr, val);
            this->statistics.cycle_cnt += 100;
            if (cycles)
                *cycles += 100;
        } else {
            this->lower_cache->setByte(addr, val, cycles);
            if (cycles)
                this->statistics.cycle_cnt += *cycles;
        }
    } else {
        if (this->bypass) {
            if (this->cacheSetFull(getId(addr))) {
                bool next_level = true;
                uint32_t set_id = getId(addr);
                uint32_t tag = getTag(addr);
                for (int tmp = 0; tmp < this->mct_size; tmp++) {
                    if (mct[set_id][tmp] == (uint64_t) -1 || mct[set_id][tmp] == tag) {
                        next_level = false;
                        break;
                    }
                }
                if (next_level) {
                    if (this->lower_cache == nullptr) {
                        if (cycles)
                            *cycles += 100;
                        this->statistics.cycle_cnt += 100;
                        this->memory->setByteNoCache(addr, val);
                    } else {
                        this->statistics.cycle_cnt += this->lower_cache->policy.hit_latency;
                        this->lower_cache->setByte(addr, val, cycles);
                    }
                    MCTUpdate(getId(addr), addr);
                    return;
                }
            }
            MCTUpdate(getId(addr), addr);
        }
        this->loadBlockFromLowerLevel(addr, cycles);
        if (this->pre_fetch)
            preFetch(addr);
        if ((block_id = this->getBlockId(addr)) != -1) {
            uint32_t offset = this->getOffset(addr);
            this->blocks[block_id].dirty = true;
            this->PLRUUpdate(block_id);
            this->blocks[block_id].last_reference = this->reference_cnt;
            this->blocks[block_id].data[offset] = val;
//            if (cycles)
//                *cycles += this->policy.hit_latency;
            return;
        } else {
            fprintf(stderr, "Error: data should in top level cache, but it seems not\n");
            exit(-1);
        }
    }
}

void Cache::setByteCopy(uint32_t addr, uint8_t val, uint32_t *cycles) {
    int block_id;
    if ((block_id = this->getBlockId(addr)) != -1) {
        //in cache
        uint32_t offset = this->getOffset(addr);
        this->blocks[block_id].dirty = true;
        this->blocks[block_id].data[offset] = val;
        if (!this->write_back) {
            this->writeBlockToLowerLevel(this->blocks[block_id], cycles);
        }
        return;
    }

    if (!this->write_allocate) {
        if (this->lower_cache == nullptr) {
            this->memory->setByteNoCache(addr, val);
        } else {
            this->lower_cache->setByteCopy(addr, val, cycles);
        }
    } else {
        this->loadBlockFromLowerLevel(addr, cycles);
        if ((block_id = this->getBlockId(addr)) != -1) {
            uint32_t offset = this->getOffset(addr);
            this->blocks[block_id].dirty = true;
            this->blocks[block_id].data[offset] = val;
            return;
        } else {
            fprintf(stderr, "Error: data should in top level cache, but it seems not\n");
            exit(-1);
        }
    }
}

void Cache::preFetch(uint32_t begin_addr) {
    for (uint32_t addr = begin_addr + this->policy.block_size;
         addr <= begin_addr + this->policy.block_size * this->pre_fetch_num; addr += this->policy.block_size) {
        if (inCache(addr) || !this->memory->pageExist(addr))
            continue;
        uint32_t set_id = getId(addr);
        if (bypass) {
            if (this->cacheSetFull(set_id)) {
                bool next_level = true;
                uint32_t tag = getTag(addr);
                for (int tmp = 0; tmp < this->mct_size; tmp++) {
                    if (mct[set_id][tmp] == (uint64_t) -1 || mct[set_id][tmp] == tag) {
                        next_level = false;
                        break;
                    }
                }
                if (next_level) {
                    MCTUpdate(set_id, addr);
                    continue;
                }
            }
            MCTUpdate(set_id, addr);
        }

        Block b;
        b.valid = true;
        b.dirty = false;
        b.tag = this->getTag(addr);
        b.id = this->getId(addr);
        b.size = this->policy.block_size;
        b.data = vector<uint8_t>(b.size);
        uint32_t bits = log2(b.size);
        uint32_t mask = ~((1 << bits) - 1);
        uint32_t block_begin_addr = addr & mask;
        for (uint32_t i = block_begin_addr; i < block_begin_addr + b.size; i++) {
            if (this->lower_cache == nullptr) {
                b.data[i - block_begin_addr] = this->memory->getByteNoCache(i);
            } else {
                if (i == block_begin_addr)
                    b.data[i - block_begin_addr] = this->lower_cache->getByte(i);
                else
                    b.data[i - block_begin_addr] = this->lower_cache->getByteCopy(i);
            }
        }
        // replace cache

        uint32_t replace_id = this->getReplacementBlockId(b.id);
        Block replace_block = this->blocks[replace_id];
        if (this->write_back && replace_block.valid && replace_block.dirty) {
            this->writeBlockToLowerLevel(replace_block);
        }
        this->blocks[replace_id] = b;
    }
}