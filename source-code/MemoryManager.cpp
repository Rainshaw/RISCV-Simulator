//
//  MemoryManager.cpp
//  lab2
//
//  Created by 郜瑞啸 on 2020/4/4.
//  Copyright © 2020 郜瑞啸. All rights reserved.
//

#include "MemoryManager.hpp"
#include <cstring>
#include <cstdio>

using std::string;

MemoryManager::MemoryManager(){
    this->cache = nullptr;
    for(auto & i : this->memory){
        i = nullptr;
    }
}


MemoryManager::~MemoryManager(){
    for(auto & i : this->memory){
        if(i){
            for(uint16_t j = 0; j < 1024; j++){
                if(i[j])
                    delete[] i[j];
                i[j] = nullptr;
            }
            delete[] i;
            i = nullptr;
        }
    }
}


uint16_t MemoryManager::getFirstIndex(uint32_t addr){
    // 使用头10位做一级索引
    return ((addr>>22u) & 0x3FFu); //0x3FF = 0b11 1111 1111
}


uint16_t MemoryManager::getSecondIndex(uint32_t addr){
    // 使用11至20位做二级索引
    return ((addr>>12u) & 0x3FFu);
}


uint16_t MemoryManager::getPageOffset(uint32_t addr){
    return (addr & 0xFFFu);
}


bool MemoryManager::addrExist(uint32_t addr){
    uint16_t i = this->getFirstIndex(addr);
    uint16_t j = this->getSecondIndex(addr);
    return memory[i] && memory[i][j];
}


void MemoryManager::addPage(uint32_t addr){
    uint16_t i = this->getFirstIndex(addr);
    uint16_t j = this->getSecondIndex(addr);
    if(!this->memory[i]){
        this->memory[i] = new uint8_t* [1024];
        for(uint16_t k = 0; k < 1024; k++)
            this->memory[i][k] = nullptr;
    }
    if(!this->memory[i][j]){
        this->memory[i][j] = new uint8_t[4096];
        memset(this->memory[i][j], 0 , 4096);
//        for(uint16_t k = 0; k < 4096; k++)
//            this->memory[i][j][k] = 0;
    }
}


bool MemoryManager::pageExist(uint32_t addr){
    return this->addrExist(addr);
}


string MemoryManager::dumpMemory(){
    string dump_str;
    dump_str += "Memory:\n";
    char buf[1024];
    for(uint16_t i = 0; i < 1024; i++){
        if(this->memory[i] == nullptr){
            continue;
        }
        sprintf(buf, "0x%x-0x%x\n", i<<22u, (i+1u)<<22u);
        dump_str += buf;
        for(uint16_t j=0; j < 1024; j++){
            if(this->memory[i][j] == nullptr){
                continue;
            }
            sprintf(buf, "\t0x%x-0x%x\n", ((i<<22u)+(j<<12u)),
                    ((i<<22u)+((j+1u)<<12u)));
            dump_str += buf;
            
            for(uint16_t k = 0; k < 1024; k++){
                if(this->memory[i][j][k] == 0)
                    continue;
                sprintf(buf, "\t\t0x%x: 0x%x\n", ((i<<22u)+(j<<12u)+k), this->memory[i][j][k]);
                dump_str += buf;
            }
        }
    }
    return dump_str;
}


void MemoryManager::printInfo(){
    printf("Memory:\n");
    for(uint16_t i = 0; i < 1024; i++){
        if(this->memory[i] == nullptr){
            continue;
        }
        printf("0x%x-0x%x:\n", i << 22u, (i + 1u) << 22u);
        for (uint16_t j = 0; j < 1024; j++) {
            if (this->memory[i][j] == nullptr) {
                continue;
            }
            printf("\t0x%x-0x%x:\n", (i << 22u) + (j << 12u), (i << 22u) + ((j + 1u) << 12u));
        }
    }
}

void MemoryManager::printCacheStatistics() {
    printf("---------Cache Statistics--------\n");
    this->cache->printStatistics();
}


bool MemoryManager::copyMemory(void *src, uint32_t dest, uint32_t len) {
    for (uint32_t i = 0; i < len; i++) {
        if (!this->addrExist(dest + i)) {
            fprintf(stderr, "Data Copy Unsuccessfully, invalid addr 0x%x!\n", dest + i);
            exit(-1);
        }
        this->setByte(dest + i, ((uint8_t *) src)[i]);
    }
    return true;
}


bool MemoryManager::setByte(uint32_t addr, uint8_t val, uint32_t *cycles) {
    if (!this->addrExist(addr)) {
        fprintf(stderr, "Memory write to invalid addr 0x%x!\n", addr);
        exit(-1);
    }
    if (this->cache != nullptr) {
        this->cache->setByte(addr, val, cycles);
        return true;
    }
    uint16_t i = this->getFirstIndex(addr);
    uint16_t j = this->getSecondIndex(addr);
    uint16_t k = this->getPageOffset(addr);
    this->memory[i][j][k] = val;
    return true;
}

bool MemoryManager::setByteNoCache(uint32_t addr, uint8_t val) {
    if (!this->addrExist(addr)) {
        fprintf(stderr, "Memory write to invalid addr 0x%x!\n", addr);
        exit(-1);
    }

    uint16_t i = this->getFirstIndex(addr);
    uint16_t j = this->getSecondIndex(addr);
    uint16_t k = this->getPageOffset(addr);
    this->memory[i][j][k] = val;
    return true;
}

uint8_t MemoryManager::getByte(uint32_t addr, uint32_t *cycles) {
    if (!this->addrExist(addr)) {
        fprintf(stderr, "Memory read from invalid addr 0x%x!\n", addr);
        exit(-1);
    }
    if (this->cache != nullptr) {
        return this->cache->getByte(addr, cycles);
    }
    uint16_t i = this->getFirstIndex(addr);
    uint16_t j = this->getSecondIndex(addr);
    uint16_t k = this->getPageOffset(addr);
    return this->memory[i][j][k];
}

uint8_t MemoryManager::getByteNoCache(uint32_t addr) {
    if (!this->addrExist(addr)) {
        fprintf(stderr, "Memory read from invalid addr 0x%x!\n", addr);
        exit(-1);
    }
    uint16_t i = this->getFirstIndex(addr);
    uint16_t j = this->getSecondIndex(addr);
    uint16_t k = this->getPageOffset(addr);
    return this->memory[i][j][k];
}


//bool MemoryManager::setNByte(uint32_t addr, uint8_t n, void* val, uint32_t *cycles){
//    if(!this->addrExist(addr)){
//        printf("Memory write to invalid addr 0x%x!\n", addr);
//        exit(-1);
//        return false;
//    }
//    for(uint32_t i = 0; i < n; i++){
//        this->setByte(addr+i, (&val)&0xFF, cycles)
//    }
////    uint16_t i = this->getFirstIndex(addr);
////    uint16_t j = this->getSecondIndex(addr);
////    uint16_t k = this->getPageOffset(addr);
////    memcpy(&this->memory[i][j][k], (uint8_t *)val, n);
//    return true;
//}


bool MemoryManager::setShort(uint32_t addr, uint16_t val, uint32_t *cycles) {
//    return setNByte(addr, 2, &val, cycles);
    if (!this->addrExist(addr)) {
        printf("Memory write to invalid addr 0x%x!\n", addr);
        exit(-1);
    }
    this->setByte(addr, val & 0xff, cycles);
    this->setByte(addr + 1, (val >> 8u) & 0xff);
    return true;
}


bool MemoryManager::setInt(uint32_t addr, uint32_t val, uint32_t *cycles) {
//    return setNByte(addr, 4, &val, cycles);
    if (!this->addrExist(addr)) {
        printf("Memory write to invalid addr 0x%x!\n", addr);
        exit(-1);
    }
    this->setByte(addr, val & 0xff, cycles);
    this->setByte(addr + 1, (val >> 8u) & 0xff);
    this->setByte(addr + 2, (val >> 16u) & 0xff);
    this->setByte(addr + 3, (val >> 24u) & 0xff);
    return true;
}


bool MemoryManager::setLong(uint32_t addr, uint64_t val, uint32_t *cycles) {
//    return setNByte(addr, 8, &val, cycles);
    if (!this->addrExist(addr)) {
        printf("Memory write to invalid addr 0x%x!\n", addr);
        exit(-1);
    }
    this->setByte(addr, val & 0xff, cycles);
    this->setByte(addr + 1, (val >> 8u) & 0xff);
    this->setByte(addr + 2, (val >> 16u) & 0xff);
    this->setByte(addr + 3, (val >> 24u) & 0xff);
    this->setByte(addr + 4, (val >> 32u) & 0xff);
    this->setByte(addr + 5, (val >> 40u) & 0xff);
    this->setByte(addr + 6, (val >> 48u) & 0xff);
    this->setByte(addr + 7, (val >> 56u) & 0xff);
    return true;
}


uint16_t MemoryManager::getShort(uint32_t addr, uint32_t *cycles) {
    uint16_t b1 = this->getByte(addr, cycles);
    uint16_t b2 = this->getByte(addr + 1);
    return b1 + (b2 << 8u);
}


uint32_t MemoryManager::getInt(uint32_t addr, uint32_t *cycles) {
    uint32_t b1 = this->getByte(addr, cycles);
    uint32_t b2 = this->getByte(addr + 1);
    uint32_t b3 = this->getByte(addr + 2);
    uint32_t b4 = this->getByte(addr + 3);
    return b1 + (b2 << 8u) + (b3 << 16u) + (b4 << 24u);
}


uint64_t MemoryManager::getLong(uint32_t addr, uint32_t *cycles) {
    uint64_t b1 = this->getByte(addr, cycles);
    uint64_t b2 = this->getByte(addr + 1);
    uint64_t b3 = this->getByte(addr + 2);
    uint64_t b4 = this->getByte(addr + 3);
    uint64_t b5 = this->getByte(addr + 4);
    uint64_t b6 = this->getByte(addr + 5);
    uint64_t b7 = this->getByte(addr + 6);
    uint64_t b8 = this->getByte(addr + 7);
    return b1 + (b2 << 8u) + (b3 << 16u) + (b4 << 24u) + (b5 << 32u) + (b6 << 40u) + (b7 << 48u) + (b8 << 56u);
}

void MemoryManager::setCache(Cache *pCache) {
    this->cache = pCache;
}