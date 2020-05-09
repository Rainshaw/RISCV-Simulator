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
uint32_t loop = 100;
Cache *l1_cache, *l2_cache;

bool parsePara(int argc, char **argv) {
//    for (int i = 1; i < argc; i++) {
//        if (argv[i][0] == '-') {
//            switch (argv[i][1]) {
//                case 'v':
//                    verbose = true;
//                    break;
//                case 's':
//                    single_step = true;
//                    break;
//                default:
//                    return false;
//            }
//        } else {
    trace_file_name = argv[1];
    loop = atoi(argv[2]);
//        }
//    }

    return trace_file_name != nullptr;
}

void printUsage() {
    printf("Usage: ./CacheSim trace-file-name loop\n");
    printf("eg: ./CacheSim 1.trace 100");
//    printf("\tParameters:\n");
//    printf("\t\t[-v]: to use verbose mode\n");
//    printf("\t\t[-s]: to enter single step mode\n");
}

int main(int argc, char **argv) {
    if (!parsePara(argc, argv)) {
        printUsage();
        exit(-1);
    }

    auto l1_miss_rate = 0.0;
    auto l2_miss_rate = 0.0;

    for (int i = 0; i < loop; i++) {
        std::ifstream trace(trace_file_name);
        if (!trace.is_open()) {
            fprintf(stderr, "File %s do not exist\n", trace_file_name);
            exit(-1);
        }

        MemoryManager memory;
        Cache::Policy policy;


        policy.cache_size = 256 * 1024;
        policy.block_size = 64;
        policy.block_num = policy.cache_size / policy.block_size;
        policy.associativity = 8;
        policy.hit_latency = 10;
        l2_cache = new Cache(&memory, policy, nullptr, true, true);

        policy.cache_size = 32 * 1024;
        policy.block_size = 64;
        policy.block_num = policy.cache_size / policy.block_size;
        policy.associativity = 8;
        policy.hit_latency = 3;
        l1_cache = new Cache(&memory, policy, l2_cache, true, true);

        memory.setCache(l1_cache);

        char type;
        uint32_t addr;
        while (trace >> type >> std::hex >> addr) {
            if (verbose) {
                printf("%c %x\n", type, addr);
            }
            if (!memory.pageExist(addr)) {
                memory.addPage(addr);
            }
            switch (type) {
                case 'r':
                    memory.getByte(addr);
                    break;
                case 'w':
                    memory.setByte(addr, 0);
                    break;
                default:
                    fprintf(stderr, "Illegal operation %c\n", type);
                    exit(-1);
            }
            if (verbose) {
                memory.printCacheStatistics();
            }
            if (single_step) {
                printf("Press any key to continue...");
                getchar();
            }
        }
        memory.printCacheStatistics();
        l1_miss_rate +=
                (double) l1_cache->statistics.miss_cnt / (l1_cache->statistics.hit_cnt + l1_cache->statistics.miss_cnt);
        l2_miss_rate +=
                (double) l2_cache->statistics.miss_cnt / (l2_cache->statistics.hit_cnt + l2_cache->statistics.miss_cnt);
        trace.close();
        delete l2_cache;
        delete l1_cache;
    }

    printf("Average l1_cache miss rate: %f\n", l1_miss_rate / loop);
    printf("Average l2_cache miss rate: %f\n", l2_miss_rate / loop);

    return 0;
}