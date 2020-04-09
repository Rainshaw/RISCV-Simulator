//
//  MemoryManager.hpp
//  lab2
//
//  Created by 郜瑞啸 on 2020/4/4.
//  Copyright © 2020 郜瑞啸. All rights reserved.
//

#ifndef MemoryManager_hpp
#define MemoryManager_hpp

#include <cstdint>
#include <string>
#include <cstdio>

using std::string;

class MemoryManager{
private:
    static uint16_t getFirstIndex(uint32_t addr);
    static uint16_t getSecondIndex(uint32_t addr);
    static uint16_t getPageOffset(uint32_t addr);
    bool addrExist(uint32_t addr);
    uint8_t **memory[1024]{};

public:
    MemoryManager();
    ~MemoryManager();

    void addPage(uint32_t addr);
    bool pageExist(uint32_t addr);

    string dumpMemory();
    void printInfo();

    bool copyMemory(void *src, uint32_t dest, uint32_t len);

    bool setByte(uint32_t addr, uint8_t val);
    uint8_t getByte(uint32_t addr);

    bool setNByte(uint32_t addr, uint8_t n, void* val);
    bool setShort(uint32_t addr, uint16_t val);
    bool setInt(uint32_t addr, uint32_t val);
    bool setLong(uint32_t addr, uint64_t val);
    
    uint16_t getShort(uint32_t addr);
    uint32_t getInt(uint32_t addr);
    uint64_t getLong(uint32_t addr);
    

};

#endif /* MemoryManager_hpp */
