//
//  BranchPredictor.hpp
//  lab2
//
//  Created by 郜瑞啸 on 2020/4/4.
//  Copyright © 2020 郜瑞啸. All rights reserved.
//

#ifndef BranchPredictor_hpp
#define BranchPredictor_hpp

#include <string>
#include <cstdint>

using std::string;

const int PRED_BUF_SIZE = 4096;

class BranchPredictor{
private:
    enum PredictorState {
        STRONG_TAKEN     = 0,
        WEAK_TAKEN       = 1,
        WEAK_NOT_TAKEN   = 2,
        STRONG_NOT_TAKEN = 3,
    } predbuf[PRED_BUF_SIZE];


public:
    enum Strategy{
        AT = 0, // Always Taken
        NT = 1, // Always Not Taken
        BTFNT = 2, // Backward Taken, Forward Not Taken
        BPB = 3, // Branch Prediction Buffer
    } strategy;

    const char* STRATEGYNAME[4] = {
        "Always Taken",
        "Always Not Taken",
        "Backward Taken Forward Not Taken",
        "Branch Prediction Buff",
    };

    BranchPredictor();
    ~BranchPredictor();

    bool predict(uint32_t pc, int64_t offset);

    void update(uint32_t pc, bool branch);

    string getStrategyName();

};


#endif /* BranchPredictor_hpp */
