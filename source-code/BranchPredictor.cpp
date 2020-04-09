//
//  BranchPredictor.cpp
//  lab2
//
//  Created by 郜瑞啸 on 2020/4/4.
//  Copyright © 2020 郜瑞啸. All rights reserved.
//

#include "BranchPredictor.hpp"
//#include "assert.h"
using std::string;

BranchPredictor::BranchPredictor(Strategy strategy){
    this->strategy = strategy;
    for(auto & i : this->predbuf){
        //memset(this->predbuf, 1, sizeof(PredictorState)*PRED_BUF_SIZE)
        i = WEAK_TAKEN;
    }
}


BranchPredictor::~BranchPredictor()= default;


bool BranchPredictor::predict(uint32_t pc, int64_t offset){
    switch(this->strategy){
        case AT:
            return true;
        case NT:
            return false;
        case BTFNT:
            return offset<0;
        default:
            //assert(this->strategy == BPB);
            PredictorState state = this->predbuf[pc & 0xFFFu];
            if(state == STRONG_TAKEN || state == WEAK_TAKEN){
                return true;
            }
            else if(state == WEAK_NOT_TAKEN || state == STRONG_NOT_TAKEN){
                return false;
            }
            break;
    }
    return false;
}


void BranchPredictor::update(uint32_t pc, bool branch){
    if(strategy == BPB){
        int index = (int)(pc & 0xFFFu);
        PredictorState state = this->predbuf[index];
        if(branch){
            if (state == STRONG_TAKEN){
                return;
            }
            else if(state == WEAK_TAKEN){
                this->predbuf[index] = STRONG_TAKEN;
                return;
            }
            else if(state == WEAK_NOT_TAKEN){
                this->predbuf[index] = WEAK_TAKEN;
                return;
            }
            else{
                //assert(state == STRONG_NOT_TAKEN);
                this->predbuf[index] = WEAK_NOT_TAKEN;
                return;
            }
        }
        else{
            if(state == STRONG_TAKEN){
                this->predbuf[index] = WEAK_TAKEN;
                return;
            }
            else if(state == WEAK_TAKEN){
                this->predbuf[index] = WEAK_NOT_TAKEN;
                return;
            }
            else if(state == WEAK_NOT_TAKEN){
                this->predbuf[index] = STRONG_NOT_TAKEN;
                return;
            }
            else{
                //assert(state==STRONG_NOT_TAKEN);
                return;
            }
        }
    }
}

string BranchPredictor::getStrategyName(){
    return STRATEGYNAME[this->strategy];
}
