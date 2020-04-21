//
//  Cache.cpp
//  lab3
//
//  Created by 郜瑞啸 on 2020/4/21.
//  Copyright © 2020 郜瑞啸. All rights reserved.
//

#include "Cache.hpp"
#define is_pow(x) (x&(x-1))==0

bool Cache::policyValid() const {
    if(!(is_pow(policy.cache_size))){
        fprintf(stderr, "Cache Size Invalid: %d\n", policy.cache_size);
        return false;
    }
    if(!(is_pow(policy.block_size))){
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
    for(uint32_t i = 0; i < this->blocks.size(); i++){
        Block &b = this->blocks[i];
        b.size = policy.block_size;
        b.id = i/policy.associativity;
        b.data = std::vector<uint8_t>(b.size);
    }
}

void Cache::loadBlockFromLowerLevel(uint32_t addr, uint32_t *cycles) {

}

void Cache::writeBlockToLowerLevel(Block &b) {

}

uint32_t Cache::getReplacementBlockId(uint32_t begin, uint32_t end) {

}


Cache::Cache(MemoryManager *manager, Policy policy, Cache *lower_cache, bool write_back, bool write_allocate) {
    this->manager = manager;
    this->policy = policy;
    this->lower_cache = lower_cache;
    if(!this->policyValid()){
        fprintf(stderr, "Policy invalid\n");
        exit(-1);
    }
    this->initCache();
    this->write_allocate = write_allocate;
    this->write_back = write_back;
}

