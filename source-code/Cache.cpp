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
    if(policy.block_num * policy.block_size != policy.cache_size){
        fprintf(stderr, "block_num * block_size != cache_size\n");
        return false;
    }
    if(policy.block_num % policy.associativity != 0){
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
}

uint32_t Cache::getReplacementBlockId(uint32_t begin, uint32_t end) {
    // 空的
    for (uint32_t i = begin; i < end; i++) {
        if (!this->blocks[i].valid)
            return i;
    }

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
            if (cycles)
                *cycles = 100;
        } else {
            b.data[i - block_begin_addr] = this->lower_cache->getByte(i, cycles);
        }
    }

    // replace cache
    uint32_t block_begin = b.id * this->policy.associativity;
    uint32_t block_end = block_begin + this->policy.associativity;
    uint32_t replace_id = this->getReplacementBlockId(block_begin, block_end);
    Block replace_block = this->blocks[replace_id];
    if (this->write_back && replace_block.valid && replace_block.dirty) {
        this->writeBlockToLowerLevel(replace_block);
        this->statistics.cycle_cnt += this->policy.miss_latency;
    }
    this->blocks[replace_id] = b;
}

void Cache::writeBlockToLowerLevel(Block &b) {
    uint32_t addr_begin = this->getAddr(b);
    if (this->lower_cache == nullptr) {
        for (uint32_t i = 0; i < b.size; i++) {
            this->memory->setByteNoCache(addr_begin + i, b.data[i]);
        }
    } else {
        for (uint32_t i = 0; i < b.size; i++) {
            this->lower_cache->setByte(addr_begin + i, b.data[i], nullptr);
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


Cache::Cache(MemoryManager *manager, Policy policy, Cache *lower_cache, bool write_back, bool write_allocate) {
    this->memory = manager;
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

void Cache::printInfo(bool verbose) {
    printf("----------- Cache Info ------------\n");
    printf("Cache Size: %d bytes\n", this->policy.cache_size);
    printf("Block Size: %d bytes\n", this->policy.block_size);
    printf("Block Num: %d\n", this->policy.block_num);
    printf("Associativiy: %d\n", this->policy.associativity);
    printf("Hit Latency: %d\n", this->policy.hit_latency);
    printf("Miss Latency: %d\n", this->policy.miss_latency);

    if (verbose) {
        for (int i = 0; i < this->blocks.size(); i++) {
            const Block &b = this->blocks[i];
            printf("Block %d:\ttag 0x%x\tid %d\t%s\t%s\tlast ref %d\n", i, b.tag, b.id,
                   b.valid ? "valid" : "invalid",
                   b.dirty ? "modified" : "unmodified", b.last_reference);
        }
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
        this->blocks[block_id].last_reference = this->reference_cnt;
        if (cycles)
            *cycles = this->policy.hit_latency;
        return this->blocks[block_id].data[offset];
    }

    this->statistics.miss_cnt++;
    this->statistics.cycle_cnt += this->policy.miss_latency;
    this->loadBlockFromLowerLevel(addr, cycles);

    if ((block_id = this->getBlockId(addr)) != -1) {
        uint32_t offset = this->getOffset(addr);
        this->blocks[block_id].last_reference = this->reference_cnt;
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
        this->blocks[block_id].last_reference = this->reference_cnt;
        this->blocks[block_id].data[offset] = val;
        if (!this->write_back) {
            this->writeBlockToLowerLevel(this->blocks[block_id]);
            this->statistics.cycle_cnt += this->policy.miss_latency;
        }
        if (cycles)
            *cycles = this->policy.hit_latency;
        return;
    }

    this->statistics.miss_cnt++;
    this->statistics.cycle_cnt += this->policy.miss_latency;

    if (!this->write_allocate) {
        if (this->lower_cache == nullptr) {
            this->memory->setByteNoCache(addr, val);
        } else {
            this->lower_cache->setByte(addr, val, nullptr);
        }
    } else {
        this->loadBlockFromLowerLevel(addr, cycles);
        if ((block_id = this->getBlockId(addr)) != -1) {
            uint32_t offset = this->getOffset(addr);
            this->blocks[block_id].dirty = true;
            this->blocks[block_id].last_reference = this->reference_cnt;
            this->blocks[block_id].data[offset] = val;
            return;
        } else {
            fprintf(stderr, "Error: data should in top level cache, but it seems not\n");
            exit(-1);
        }
    }
}


