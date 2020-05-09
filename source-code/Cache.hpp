//
//  Cache.hpp
//  lab3
//
//  Created by 郜瑞啸 on 2020/4/21.
//  Copyright © 2020 郜瑞啸. All rights reserved.
//
#ifndef RISCV_SIMULATOR_CACHE_HPP
#define RISCV_SIMULATOR_CACHE_HPP

#include <vector>
#include "MemoryManager.hpp"

class MemoryManager;

class Cache {
private:

    struct Block {
        bool valid{};
        bool dirty{};
        uint32_t tag{};
        uint32_t id{};
        uint32_t size{};
        uint32_t last_reference{};
        std::vector<uint8_t> data;

        Block() = default;

        Block(const Block &b) {
            valid = b.valid;
            dirty = b.dirty;
            tag = b.tag;
            id = b.id;
            size = b.size;
            data = b.data;
        }
    };

    uint32_t reference_cnt;
    bool write_back;
    bool write_allocate;
    MemoryManager *memory;
    Cache *lower_cache;
    std::vector<Block> blocks;

    bool policyValid() const;


    void initCache();

    void loadBlockFromLowerLevel(uint32_t addr, uint32_t *cycles = nullptr);

    void writeBlockToLowerLevel(Block &b, uint32_t *cycles = nullptr);

    uint32_t getReplacementBlockId(uint32_t set_id);

    void PLRUUpdate(uint32_t block_id);

    void MCTUpdate(uint32_t block_id, uint32_t tag);

    bool cacheSetFull(uint32_t id) const;

    uint32_t getTag(uint32_t addr) const;

    uint32_t getId(uint32_t addr) const;

    uint32_t getOffset(uint32_t addr) const;

    uint32_t getAddr(Block &b) const;


public:
    struct Policy {
        uint32_t cache_size;
        uint32_t block_size;
        uint32_t block_num;
        uint32_t associativity;
        uint32_t hit_latency;
//        uint32_t miss_latency;
    } policy{};

    enum ReplacePolicy {
        LRU = 0,
        RANDOM = 1,
        PLRU = 2,
    } replace_policy = LRU;
    int **plru_bit{};

    bool bypass = false;
    uint64_t **mct{};
    uint32_t mct_size = 0;

    bool prefetch = false;

    struct Statistics {
        uint32_t read_cnt;
        uint32_t write_cnt;
        uint32_t hit_cnt;
        uint32_t miss_cnt;
        uint32_t cycle_cnt;
    } statistics{};

    Cache(MemoryManager *manager, Policy policy, Cache *lower_cache, bool write_back = true,
          bool write_allocate = true, uint32_t mct_size = 0);

    bool inCache(uint32_t addr);

    uint32_t getBlockId(uint32_t addr);

    uint8_t getByte(uint32_t addr, uint32_t *cycles = nullptr);

    uint8_t getByteCopy(uint32_t addr, uint32_t *cycles = nullptr);

    void setByte(uint32_t addr, uint8_t val, uint32_t *cycles = nullptr);

    void setByteCopy(uint32_t addr, uint8_t val, uint32_t *cycles = nullptr);

    void printInfo();

    void printStatistics();

};


#endif //RISCV_SIMULATOR_CACHE_HPP
