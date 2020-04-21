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



class Cache{
private:
    struct History{
        uint32_t read_num;
        uint32_t write_num;
        uint32_t hit_num;
        uint32_t miss_num;
        uint32_t cycle_num;
    } history{};

    struct Block{
        bool valid{};
        bool dirty{};
        uint32_t  tag{};
        uint32_t id{};
        uint32_t size{};
        uint32_t last_reference{};
        std::vector<uint8_t> data;
        Block()= default;
        Block(const Block &b){
            valid = b.valid;
            dirty = b.dirty;
            tag = b.tag;
            id = b.id;
            size = b.size;
            data = b.data;
        }
    };

    bool write_back;
    bool write_allocate;
    MemoryManager *manager;
    Cache *lower_cache;
    std::vector<Block> blocks;

    bool policyValid() const;


    void initCache();
    void loadBlockFromLowerLevel(uint32_t addr, uint32_t *cycles);
    void writeBlockToLowerLevel(Block &b);
    uint32_t getReplacementBlockId(uint32_t begin, uint32_t end);

public:
    struct Policy{
        uint32_t cache_size;
        uint32_t block_size;
        uint32_t block_num;
        uint32_t associativity;
        uint32_t hit_latency;
        uint32_t miss_latency;
    } policy{};

    Cache(MemoryManager *manager, Policy policy, Cache *lower_cache, bool write_back, bool write_allocate);

    bool inCache(uint32_t addr);
    uint32_t getBlockId(uint32_t addr);
    uint8_t getByte(uint32_t addr, uint32_t *cycles);
    void setByte(uint32_t addr, uint8_t val, uint32_t *cycles);

    void printInfo(bool verbose);
    void printStatistics();

};




#endif //RISCV_SIMULATOR_CACHE_HPP
