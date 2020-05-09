//
//  CacheMain.cpp
//  lab3
//
//  Created by 郜瑞啸 on 2020/4/21.
//  Copyright © 2020 郜瑞啸. All rights reserved.
//

#include <fstream>
#include "Cache.hpp"
#include "MemoryManager.hpp"

bool verbose = false;
bool single_step = false;
char *trace_file_name = nullptr;

bool parsePara(int argc, char **argv) {
    for (int i = 1; i < argc; i++) {
        if (argv[i][0] == '-') {
            switch (argv[i][1]) {
                case 'v':
                    verbose = true;
                    break;
                case 's':
                    single_step = true;
                    break;
                default:
                    return false;
            }
        } else {
            trace_file_name = argv[i];
        }
    }

    return trace_file_name != nullptr;
}

void printUsage() {
    printf("Usage: ./CacheSim trace-file-name [-v] [-s]\n");
    printf("\tParameters:\n");
    printf("\t\t[-v]: to use verbose mode\n");
    printf("\t\t[-s]: to enter single step mode\n");
}

void cacheSimulate(std::ofstream &out, uint32_t cache_size, uint32_t block_size, uint32_t associativity,
                   bool write_back, bool write_allocate) {
    Cache::Policy policy;
    policy.cache_size = cache_size;
    policy.block_size = block_size;
    policy.associativity = associativity;
    policy.block_num = cache_size / block_size;
    policy.hit_latency = 1;
//    policy.miss_latency = 8;

    auto *memory = new MemoryManager();
    auto *cache = new Cache(memory, policy, nullptr, write_back, write_allocate);
    memory->setCache(cache);

    std::ifstream trace(trace_file_name);
    if (!trace.is_open()) {
        fprintf(stderr, "File %s do not exist\n", trace_file_name);
        exit(-1);
    }

    char type;
    uint32_t addr;
    while (trace >> type >> std::hex >> addr) {
        if (verbose) {
            printf("%c %x\n", type, addr);
        }
        if (!memory->pageExist(addr)) {
            memory->addPage(addr);
        }
        switch (type) {
            case 'r':
                cache->getByte(addr);
                break;
            case 'w':
                cache->setByte(addr, 0);
                break;
            default:
                fprintf(stderr, "Illegal operation %c\n", type);
                exit(-1);
        }
        if (verbose) {
            cache->printInfo();
        }
        if (single_step) {
            printf("Press any key to continue...");
            getchar();
        }
    }
    cache->printStatistics();
    double miss_rate = (double) cache->statistics.miss_cnt / (cache->statistics.hit_cnt + cache->statistics.miss_cnt);
    out << cache_size << "," << block_size << "," << associativity << "," << write_back << "," << write_allocate << ","
        << miss_rate << "," << cache->statistics.cycle_cnt << std::endl;

    delete cache;
    delete memory;

}

int main(int argc, char **argv) {
    if (!parsePara(argc, argv)) {
        printUsage();
        exit(-1);
    }
    std::ofstream out(std::string(trace_file_name) + ".csv");
    out << "cache_size,block_size,associativity,write_back,write_allocate,miss_rate,total_cycle\n";

    for (uint32_t cache_size = 32 * 1024; cache_size <= 32 * 1024 * 1024; cache_size <<= 1u) {
        for (uint32_t block_size = 1; block_size <= 4096; block_size <<= 1u) {
            for (uint32_t associativity = 1; associativity <= 32; associativity <<= 1u) {
                uint32_t block_num = cache_size / block_size;
                if (block_num % associativity != 0)
                    continue;
                cacheSimulate(out, cache_size, block_size, associativity, true, true);
                cacheSimulate(out, cache_size, block_size, associativity, true, false);
                cacheSimulate(out, cache_size, block_size, associativity, false, true);
                cacheSimulate(out, cache_size, block_size, associativity, false, false);
            }
        }
    }
    out.close();
    return 0;
}