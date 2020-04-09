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

BranchPredictor::BranchPredictor(){
    for(int i = 0; i< PRED_BUF_SIZE; i++){
        //memset(this->predbuf, 1, sizeof(PredictorState)*PRED_BUF_SIZE)
        this->predbuf[i] = WEAK_TAKEN;
    }
}


BranchPredictor::~BranchPredictor(){}


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
            PredictorState state = this->predbuf[pc & 0xFFF];
            if(state == STRONG_TAKEN){
                return true;
            }
            else if(state == WEAK_TAKEN){
                return true;
            }
            else if(state == WEAK_NOT_TAKEN){
                return false;
            }
            else if(state == STRONG_NOT_TAKEN){
                return false;
            }
            break;
    }
    return false;
}


void BranchPredictor::update(uint32_t pc, bool branch){
    if(strategy == BPB){
        int index = pc & 0xFFF;
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
