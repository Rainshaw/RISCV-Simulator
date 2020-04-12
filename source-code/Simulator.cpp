//
//  Simulator.cpp
//  lab2
//
//  Created by 郜瑞啸 on 2020/4/4.
//  Copyright © 2020 郜瑞啸. All rights reserved.
//

#include "Simulator.hpp"
#include <cstdarg>
#include <fstream>
#include <sstream>
#include <cstring>
#include <cstdint>

#define MAX32 0xFFFFFFFF
typedef unsigned __int128 uint128_t;

uint64_t top64(uint64_t x, uint64_t y) {
    uint64_t a = x >> 32, b = x & 0xffffffff;
    uint64_t c = y >> 32, d = y & 0xffffffff;

    uint64_t ac = a * c;
    uint64_t bc = b * c;
    uint64_t ad = a * d;
    uint64_t bd = b * d;

    uint64_t mid34 = (bd >> 32) + (bc & 0xffffffff) + (ad & 0xffffffff);

    uint64_t upper64 = ac + (bc >> 32) + (ad >> 32) + (mid34 >> 32);
//  uint64_t lower64 = (mid34 << 32) | (bd & 0xffffffff);

    return upper64;
}


namespace RISCV_GRX {


    const char *REGNAME[32] = {
            "zero", // x0
            "ra",   // x1
            "sp",   // x2
            "gp",   // x3
            "tp",   // x4
            "t0",   // x5
            "t1",   // x6
            "t2",   // x7
            "s0",   // x8
            "s1",   // x9
            "a0",   // x10
            "a1",   // x11
            "a2",   // x12
            "a3",   // x13
            "a4",   // x14
            "a5",   // x15
            "a6",   // x16
            "a7",   // x17
            "s2",   // x18
            "s3",   // x19
            "s4",   // x20
            "s5",   // x21
            "s6",   // x22
            "s7",   // x23
            "s8",   // x24
            "s9",   // x25
            "s10",  // x26
            "s11",  // x27
            "t3",   // x28
            "t4",   // x29
            "t5",   // x30
            "t6",   // x31
    };

    const char *INSTNAME[]{"unknown",
                           "lui", "auipc", "jal", "jalr", "beq", "bne", "blt", "bge", "bltu", "bgeu", "lb", "lh", "lw",
                           "lbu", "lhu", "sb", "sh", "sw", "addi", "slti", "sltiu", "xori", "ori", "andi", "slli",
                           "srli",
                           "srai", "add", "sub", "sll", "slt", "sltu", "xor", "srl", "sra", "or", "and", "fence",
                           "fence_i",
                           "ecall", "ebreak", "csrrw", "csrrs", "csrrc", "csrrwi", "csrrsi", "csrrci", "lwu", "ld",
                           "sd", "slli", "srli",
                           "srai", "addiw", "slliw", "srliw", "sraiw", "addw", "subw", "sllw", "srlw", "sraw", "mul",
                           "mulh", "mulhsu",
                           "mulhu", "div", "divu", "rem", "remu", "mulw", "divw", "divuw", "remw", "remuw",
    };

}
using namespace RISCV_GRX;
using std::string;


void Simulator::fetch() {
    if (e_reg.out.stall_count != 0)
        return;
    uint64_t pc = f_reg.out.pred_pc;
    if (pc % 2 != 0) {
        this->raiseError("PC 0x%llx is illegal!\n", pc);
    }
    if (e_reg.out.opcode == OP_JALR) {
        pc = (uint64_t) (e_reg.out.val1 + e_reg.out.imm) & ~1LLu;
    }

    if (m_reg.out.opcode == OP_BRANCH) {
        history.branch_count++;
        bool b = branch_predictor->predict(m_reg.out.pc, m_reg.out.imm);
        branch_predictor->update(m_reg.out.pc, m_reg.out.valE);
        if (b ^ m_reg.out.valE) {
            pc = m_reg.out.pc + (b ? 4 : m_reg.out.imm);
            history.predicted_unsuccess++;
        } else {
            history.predicted_success++;
        }
    }

    uint32_t inst = memory->getInt(pc);
    if (is_verbose) {
        printf("\tINST:%x", inst);
    }
    InstSet inst_t = UNKNOWN;

    uint32_t opcode = inst & 0x7fu;
    uint32_t func = (inst >> 12u) & 0x7u;
    uint32_t rs1 = (inst >> 15u) & 0x1fu;
    uint32_t rs2 = (inst >> 20u) & 0x1fu;
    uint32_t rd = (inst >> 7u) & 0x1fu;
    int32_t imm = 0;
    uint32_t stall_count = 1;

    if (inst == 0) {
        opcode = OP_BUBBLE;
    }

    switch (opcode) {
        case OP_ECALL:
            func = 0;
            rs1 = REG_A0;
            //rd = REG_A5;
            rd = REG_A0;
            rs2 = REG_A7;
            inst_t = ECALL;
            stall_count = CALU_BIT;
            break;
        case OP_RR: {
            // R-Type
            switch (func) {
                case 0x0:
                    if (inst >> 25u == 0x00) {
                        stall_count = CALU_ADD;
                        inst_t = ADD;
                    } else if (inst >> 25u == 0x01) {
                        stall_count = CALU_MUL;
                        inst_t = MUL;
                    } else if (inst >> 25u == 0x20) {
                        stall_count = CALU_ADD;
                        inst_t = SUB;
                    } else
                        raiseError(
                                "Invaild RR Instruction at %x, The Func7 field is %x, The Func3 Field %x is invaild\n",
                                pc, inst >> 25u, func);
                    break;
                case 0x1:
                    if (inst >> 25u == 0x00) {
                        stall_count = CALU_BIT;
                        inst_t = SLL;
                    } else if (inst >> 25u == 0x01) {
                        stall_count = CALU_MUL;
                        inst_t = MULH;
                    } else
                        raiseError(
                                "Invaild RR Instruction at %x, The Func7 field is %x, The Func3 Field %x is invaild\n",
                                pc, inst >> 25u, func);
                    break;
                case 0x2:
                    if (inst >> 25u == 0x00) {
                        stall_count = CALU_BIT;
                        inst_t = SLT;
                    } else if (inst >> 25u == 0x01) {
                        stall_count = CALU_MUL;
                        inst_t = MULHSU;
                    } else
                        raiseError(
                                "Invaild RR Instruction at %x, The Func7 field is %x, The Func3 Field %x is invaild\n",
                                pc, inst >> 25u, func);
                    break;
                case 0x3:
                    if (inst >> 25u == 0x00) {
                        stall_count = CALU_BIT;
                        inst_t = SLTU;
                    } else if (inst >> 25u == 0x01) {
                        stall_count = CALU_MUL;
                        inst_t = MULHU;
                    } else
                        raiseError(
                                "Invaild RR Instruction at %x, The Func7 field is %x, The Func3 Field %x is invaild\n",
                                pc, inst >> 25u, func);
                    break;
                case 0x4:
                    if (inst >> 25u == 0x00) {
                        stall_count = CALU_BIT;
                        inst_t = XOR;
                    } else if (inst >> 25u == 0x01) {
                        stall_count = CALU_DIV;
                        inst_t = DIV;
                    } else
                        this->raiseError(
                                "Invaild RR Instruction at %x, The Func7 field is %x, The Func3 Field %x is invaild\n",
                                pc, inst >> 25u, func);
                    break;
                case 0x5:
                    if (inst >> 25u == 0x00) {
                        stall_count = CALU_BIT;
                        inst_t = SRL;
                    } else if (inst >> 25u == 0x20) {
                        stall_count = CALU_BIT;
                        inst_t = SRA;
                    } else if (inst >> 25u == 0x01) {
                        stall_count = CALU_DIV;
                        inst_t = DIVU;
                    } else
                        this->raiseError(
                                "Invaild RR Instruction at %x, The Func7 field is %x, The Func3 Field %x is invaild\n",
                                pc, inst >> 25u, func);
                    break;
                case 0x6:
                    if (inst >> 25u == 0x00) {
                        stall_count = CALU_BIT;
                        inst_t = OR;
                    } else if (inst >> 25u == 0x01) {
                        stall_count = CALU_DIV;
                        inst_t = REM;
                    } else
                        this->raiseError(
                                "Invaild RR Instruction at %x, The Func7 field is %x, The Func3 Field %x is invaild\n",
                                pc, inst >> 25u, func);
                    break;
                case 0x7:
                    if (inst >> 25u == 0x00) {
                        stall_count = CALU_BIT;
                        inst_t = AND;
                    } else if (inst >> 25u == 0x01) {
                        stall_count = CALU_DIV;
                        inst_t = REMU;
                    } else
                        this->raiseError(
                                "Invaild RR Instruction at %x, The Func7 field is %x, The Func3 Field %x is invaild\n",
                                pc, inst >> 25u, func);
                    break;
                default:
                    this->raiseError("Invaild RR Instruction at %x, The Func3 Field %x is invaild\n", pc, func);
                    break;
            }
            func |= inst >> 25u << 3u;
            break;
        }
        case OP_32: {
            switch (func) {
                case 0x0:
                    if (inst >> 25u == 0x00) {
                        stall_count = CALU_ADD;
                        inst_t = ADDW;
                    } else if (inst >> 25u == 0x01) {
                        stall_count = CALU_MUL_32;
                        inst_t = MULW;
                    } else if (inst >> 25u == 0x20) {
                        stall_count = CALU_ADD;
                        inst_t = SUBW;
                    } else
                        this->raiseError(
                                "Invaild RRW Instruction at %x, The Func7 field is %x, The Func3 Field %x is invaild\n",
                                pc, inst >> 25u, func);
                    break;
                case 0x1:
                    stall_count = CALU_BIT;
                    inst_t = SLLW;
                    break;
                case 0x4:
                    stall_count = CALU_DIV_32;
                    inst_t = DIVW;
                    break;
                case 0x5:
                    if (inst >> 25u == 0x00) {
                        stall_count = CALU_BIT;
                        inst_t = SRLW;
                    } else if (inst >> 25u == 0x20) {
                        stall_count = CALU_BIT;
                        inst_t = SRAW;
                    } else if (inst >> 25u == 0x01) {
                        stall_count = CALU_DIV_32;
                        inst_t = DIVUW;
                    } else
                        raiseError(
                                "Invaild RRW Instruction at %x, The Func7 field is %x, The Func3 Field %x is invaild\n",
                                pc, inst >> 25u, func);
                    break;
                case 0x6:
                    if (inst >> 25u == 0x01) {
                        stall_count = CALU_DIV_32;
                        inst_t = REMW;
                    } else
                        raiseError(
                                "Invaild RRW Instruction at %x, The Func7 field is %x, The Func3 Field %x is invaild\n",
                                pc, inst >> 25u, func);
                    break;
                case 0x7:
                    if (inst >> 25u == 0x01) {
                        stall_count = CALU_DIV_32;
                        inst_t = REMUW;
                    } else
                        raiseError(
                                "Invaild RRW Instruction at %x, The Func7 field is %x, The Func3 Field %x is invaild\n",
                                pc, inst >> 25u, func);
                    break;
                default:
                    raiseError("Invaild RRW Instruction at %x, The Func7 field is %x, The Func3 Field %x is invaild\n",
                               pc, inst >> 25u, func);
                    break;
            }
            func |= inst >> 25u << 3u;
            break;
        }
        case OP_JALR: // I-Type
            stall_count = CALU_ADD;
            inst_t = JALR;
            rs2 = 0;
            imm = (int) inst >> 20u;
            break;
        case OP_LOAD:
            stall_count = CALU_ADD;
            switch (func) {
                case 0x0:
                    inst_t = LB;
                    break;
                case 0x1:
                    inst_t = LH;
                    break;
                case 0x2:
                    inst_t = LW;
                    break;
                case 0x3:
                    inst_t = LD;
                    break;
                case 0x4:
                    inst_t = LBU;
                    break;
                case 0x5:
                    inst_t = LHU;
                    break;
                case 0x6:
                    inst_t = LWU;
                    break;
                default:
                    this->raiseError("Invaild LOAD Instruction at %x, The Func Field %x is invaild\n", pc, func);
                    break;
            }
            rs2 = 0;
            imm = (int) inst >> 20;
            break;
        case OP_IMM:
            switch (func) {
                case 0x0:
                    stall_count = CALU_ADD;
                    inst_t = ADDI;
                    break;
                case 0x1:
                    stall_count = CALU_BIT;
                    inst_t = SLLI;
                    break;
                case 0x2:
                    stall_count = CALU_BIT;
                    inst_t = SLTI;
                    break;
                case 0x3:
                    stall_count = CALU_BIT;
                    inst_t = SLTIU;
                    break;
                case 0x4:
                    stall_count = CALU_BIT;
                    inst_t = XORI;
                    break;
                case 0x5: {
                    switch (inst >> 26u) {
                        case 0x00:
                            stall_count = CALU_BIT;
                            inst_t = SRLI;
                            break;
                        case 0x10:
                            stall_count = CALU_BIT;
                            inst_t = SRAI;
                            break;
                        default:
                            this->raiseError(
                                    "Invaild RI Instruction at %x, The Func3 field is %x, The Func7 Field %x is invaild\n",
                                    pc, inst >> 26u, func);
                            break;
                    }
                    break;
                }
                case 0x6:
                    stall_count = CALU_BIT;
                    inst_t = ORI;
                    break;
                case 0x7:
                    stall_count = CALU_BIT;
                    inst_t = ANDI;
                    break;
                default:
                    this->raiseError("Invaild RI Instruction at %x, The Func Field %x is invaild\n", pc, func);
                    break;
            }
            rs2 = 0;
            imm = (int) inst >> 20u;
            break;
        case OP_IMM_32:
            switch (func) {
                case 0x0:
                    stall_count = CALU_ADD;
                    inst_t = ADDIW;
                    break;
                case 0x1:
                    stall_count = CALU_BIT;
                    inst_t = SLLIW;
                    break;
                case 0x5:
                    if (inst >> 30u == 1) {
                        stall_count = CALU_BIT;
                        inst_t = SRAIW;
                    } else if (inst >> 30u == 0) {
                        stall_count = CALU_BIT;
                        inst_t = SRLIW;
                    } else {
                        this->raiseError("Invaild RIW Instruction at %x, The Func Field %x is invaild\n", pc, func);
                    }
                    break;
                default:
                    this->raiseError("Invaild RIW Instruction at %x, The Func Field %x is invaild\n", pc, func);
                    break;
            }
            rs2 = 0;
            imm = (int) inst >> 20;
            //is this right?
            break;
        case OP_STORE: // S-Type
            stall_count = CALU_ADD;
            switch (func) {
                case 0x0:
                    inst_t = SB;
                    break;
                case 0x1:
                    inst_t = SH;
                    break;
                case 0x2:
                    inst_t = SW;
                    break;
                case 0x3:
                    inst_t = SD;
                    break;
                default:
                    this->raiseError("Invaild STORE Instruction at %x, The Func Field %x is invaild\n", pc, func);
                    break;
            }
            rd = 0;
            imm = (inst >> 7u & 0x1fu) | inst >> 25u << 5u;
            imm = (int) imm << 20 >> 20;
            // is this right?
            break;
        case OP_BRANCH://SB-Type
            stall_count = CALU_BIT;
            switch (func) {
                case 0x0:
                    inst_t = BEQ;
                    break;
                case 0x1:
                    inst_t = BNE;
                    break;
                case 0x4:
                    inst_t = BLT;
                    break;
                case 0x5:
                    inst_t = BGE;
                    break;
                case 0x6:
                    inst_t = BLTU;
                    break;
                case 0x7:
                    inst_t = BGEU;
                    break;
                default:
                    this->raiseError("Invaild BRANCH Instruction at %x, The Func Field %x is invaild\n", pc, func);
                    break;
            }
            rd = 0;
            imm = (inst >> 8u & 0xfu) << 1u | (inst >> 25u & 0x3fu) << 5u | (inst >> 7u & 0x1u) << 11u |
                  inst >> 31u << 12u;
            imm = (int) imm << 19u >> 19u;
            if (is_verbose) {
                printf("\timm:%x", imm);
            }
            // is this right?
            break;
        case OP_LUI://U-Type
            inst_t = LUI;
            stall_count = CALU_BIT;
            func = rs1 = rs2 = 0;
            imm = (int) inst >> 12u << 12u;
            //is this right?
            break;
        case OP_AUIPC:
            inst_t = AUIPC;
            stall_count = CALU_ADD;
            func = rs1 = rs2 = 0;
            imm = (int) inst >> 12u << 12u;
            // is this right?
            break;
        case OP_JAL://UJ-Type
            stall_count = CALU_ADD;
            inst_t = JAL;
            func = rs1 = rs2 = 0;
            imm = (inst >> 21u & 0x3ffu) << 1u | (inst >> 20u & 1u) << 11u | (inst >> 12u & 0xffu) << 12u |
                  inst >> 31u << 20u;
            imm = (int) imm << 11u >> 11u;
            // is this right?
            break;
        case OP_BUBBLE:
            break;
        default:
            this->raiseError("Invaild Instruction %x at %x\n", inst, pc);
            break;

    }
    if (is_verbose) {
        printf("\tIF: %s", INSTNAME[inst_t]);
        printf("\tpc: %lx", pc);
    }
    uint64_t pred_pc;
    if (opcode == OP_JAL) {
        history.jal_count++;
        pred_pc = pc + imm;
    } else if (opcode == OP_BRANCH) {
        bool b = branch_predictor->predict(pc, imm);
        if (is_verbose) {
            printf("Predict: branch %staken.\n", b ? "" : "not");
        }
        pred_pc = pc + (b ? imm : 4);
    } else {
        pred_pc = pc + 4;
    }
    if (is_verbose) {
        printf("\tpred_pc: %lx\n", pred_pc);
    }
    f_reg.in.pred_pc = pred_pc;

    d_reg.in.stall_count = stall_count;
    d_reg.in.opcode = opcode;
    d_reg.in.func = func;
    d_reg.in.rs1 = rs1;
    d_reg.in.rs2 = rs2;
    d_reg.in.rd = rd;
    d_reg.in.imm = imm;
    d_reg.in.pc = pc;
    d_reg.in.inst = inst_t;

    if (this->is_verbose) {
        printf("Fetch instruction 0x%x at 0x%lx\n", inst, pc);
    }
}


void Simulator::decode() {
    if (e_reg.out.stall_count != 0)
        return;
    uint32_t opcode = d_reg.out.opcode;
    uint32_t func = d_reg.out.func;
    uint32_t rs1 = d_reg.out.rs1;
    uint32_t rs2 = d_reg.out.rs2;
    uint32_t rd = d_reg.out.rd;
    int32_t imm = d_reg.out.imm;
    uint64_t pc = d_reg.out.pc;
    InstSet inst = d_reg.out.inst;
    uint32_t stall_count = d_reg.out.stall_count;
    if (is_verbose) {
        printf("\tID: %s ", INSTNAME[inst]);
    }

    int64_t val1 = 0, val2 = 0;

    val1 = x[rs1];
    val2 = x[rs2];

    if (rs1 != 0) {
        if (rs1 == e_reg.out.rd && e_reg.out.opcode) {
//            if(e_reg.out.opcode==OP_STORE){//OP_STORE 的 rd 为0 不可能成立
//                val1 = bypass
//            }

//            if(e_reg.out.opcode==OP_LOAD){ //在run中将此种情形产生的结果记为bubble
//                val1 =
//            }

            // 由于非并行，故可以传递e_valE否则应stall一周期
            history.data_hazard_count++;
            val1 = bypass.e_valE;
        } else if (rs1 == m_reg.out.rd && m_reg.out.opcode) {
            history.data_hazard_count++;
            if (is_read_memory(m_reg.out.inst)) {
                // 由于非并行，故可以传递m_valM否则应stall一周期
                val1 = bypass.m_valM;
            } else {
                val1 = m_reg.out.valE;
            }
        } else if (w_reg.out.rd == rs1) {
            history.structural_hazard_count++;
        }

    }
    if (rs2 != 0) {
        if (rs2 == e_reg.out.rd && e_reg.out.opcode) {
            history.data_hazard_count++;
            val2 = bypass.e_valE;
        } else if (rs2 == m_reg.out.rd && m_reg.out.opcode) {
            history.data_hazard_count++;
            if (m_reg.out.opcode == OP_LOAD) {
                val2 = bypass.m_valM;
            } else {
                val2 = m_reg.out.valE;
            }
        } else if (rs2 == w_reg.out.rd) {
            history.structural_hazard_count++;
        }
    }


    switch (opcode) {
        case OP_32:
            switch (inst) {
                case ADDW:
                case SUBW:
                case MULW:
                case DIVW:
                case DIVUW:
                case REMW:
                case REMUW:
                    break;
                case SRLW:
                case SRAW:
                case SLLW:
                    val2 = val2 & 0x1F;
                    break;
                default:
                    raiseError("Invaild OP_32 Instruction at %x, The inst %x is invaild\n", pc, inst);
                    break;
            }
            break;

        case OP_RR:
            switch (inst) {
                case ADD:
                case SUB:
                case SLT:
                case SLTU:
                case XOR:
                case OR:
                case AND:
                case MUL:
                case MULH:
                case MULHSU:
                case MULHU:
                case DIV:
                case DIVU:
                case REM:
                case REMU:
                    break;
                case SLL:
                case SRL:
                case SRA:
                    val2 = val2 & 0x3F;
                    break;
                default:
                    raiseError("Invaild OP_32 Instruction at %x, The inst %x is invaild\n", pc, inst);
                    break;
            }
            break;

        case OP_IMM:
            switch (inst) {
                case ADDI:
                case SLTI:
                case SLTIU:
                case XORI:
                case ORI:
                case ANDI:
                    break;
                case SLLI:
                case SRLI:
                case SRAI:
                    imm = imm & 0x3F;
                    break;
                default:
                    raiseError("Invaild OP_IMM Instruction at %x, The inst %x is invaild\n", pc, inst);
                    break;
            }
            break;

        case OP_IMM_32:
            switch (inst) {
                case ADDIW:
                    break;
                case SLLIW:
                case SRLIW:
                case SRAIW:
                    imm = imm & 0x1F;
                    break;
                default:
                    raiseError("Invaild OP_IMM_32 Instruction at %x, The inst %x is invaild\n", pc, inst);
                    break;
            }
            break;

        case OP_LOAD:
            switch (inst) {
                case LB:
                case LBU:
                case LH:
                case LHU:
                case LW:
                case LWU:
                case LD:
                    break;
                default:
                    raiseError("Invaild OP_32 Instruction at %x, The inst %x is invaild\n", pc, inst);
                    break;
            }
            break;

        case OP_STORE:
            switch (inst) {
                case SW:
                case SD:
                case SH:
                case SB:
                    break;
                default:
                    raiseError("Invaild OP_32 Instruction at %x, The inst %x is invaild\n", pc, inst);
                    break;
            }
            break;

        case OP_ECALL:
        case OP_LUI:
        case OP_AUIPC:
        case OP_JAL:
        case OP_JALR:
        case OP_BUBBLE:
        case OP_BRANCH:
            break;

        default:
            raiseError("Invalid Instruction Opcode %x When Decoding\n", opcode);
            break;
    }


    e_reg.in.opcode = opcode;
    e_reg.in.func = func;
    e_reg.in.val2 = val2;
    e_reg.in.val1 = val1;
    e_reg.in.rd = rd;
    e_reg.in.imm = imm;
    e_reg.in.pc = pc;
    e_reg.in.inst = inst;
    e_reg.in.stall_count = stall_count;

}


void Simulator::execute() {
    uint32_t opcode = e_reg.out.opcode;
    uint32_t func = e_reg.out.func;
    int64_t val1 = e_reg.out.val1;
    int64_t val2 = e_reg.out.val2;
    uint32_t rd = e_reg.out.rd;
    int32_t imm = e_reg.out.imm;
    uint64_t pc = e_reg.out.pc;
    InstSet inst = e_reg.out.inst;
    uint32_t stall_count = e_reg.out.stall_count;

//    if(stall_count > 1)
//        is_verbose = true;
    if (is_verbose) {
        printf("\tEX: %s ", INSTNAME[inst]);
    }
    if (is_dump_history) {
        history.inst_record.emplace_back(INSTNAME[inst]);
    }
    int64_t valE = 0;

    if (stall_count >= 1) {
        stall_count -= 1;
    }
    e_reg.out.stall_count = stall_count;
    if (stall_count != 0) {
        return;
    }

    if (opcode != OP_BUBBLE) {
        history.inst_count++;
        switch (inst) {
            case LUI:
                valE = imm;
                break;

            case AUIPC:
                valE = pc + imm;
                break;

            case JAL:
            case JALR:
                // return (val1 + imm) & ~1 to f_reg
                valE = pc + 4;
                break;

            case BEQ:
                if (val1 == val2)
                    valE = 1;
                else
                    valE = 0;
                break;

            case BNE:
                if (val1 != val2)
                    valE = 1;
                else
                    valE = 0;
                break;

            case BLT:
                if (val1 < val2)
                    valE = 1;
                else
                    valE = 0;
                break;

            case BGE:
                if (val1 >= val2)
                    valE = 1;
                else
                    valE = 0;
                break;

            case BLTU:
                if ((uint64_t) val1 < (uint64_t) val2)
                    valE = 1;
                else
                    valE = 0;
                break;

            case BGEU:
                if ((uint64_t) val1 >= (uint64_t) val2)
                    valE = 1;
                else
                    valE = 0;
                break;

            case LB:
            case LH:
            case LW:
            case LBU:
            case LHU:
            case LWU:
            case LD:
            case SB:
            case SH:
            case SW:
            case SD:
            case ADDI:
                valE = val1 + imm;
                break;

            case SLTI:
                valE = val1 < imm ? 1 : 0;
                break;

            case SLTIU:
                valE = (uint64_t) val1 < (uint32_t) imm ? 1 : 0;
                break;

            case XORI:
                valE = val1 ^ imm;
                break;

            case ORI:
                valE = val1 | imm;
                break;

            case ANDI:
                valE = val1 & imm;
                break;

            case ADD:
                valE = val1 + val2;
                break;

            case SUB:
                valE = val1 - val2;
                break;

            case SLL:
                valE = val1 << val2;
                break;

            case SLT:
                valE = val1 < val2 ? 1 : 0;
                break;

            case SLTU:
                valE = (uint64_t) val1 < (uint64_t) val2 ? 1 : 0;
                break;

            case XOR:
                valE = val1 ^ val2;
                break;

            case SRL:
                valE = (uint64_t) val1 >> val2;
                break;

            case SRA:
                valE = val1 >> val2;
                break;

            case OR:
                valE = val1 | val2;
                break;

            case AND:
                valE = val1 & val2;
                break;

            case ECALL:
                valE = handleSystemCall(val1, val2);
                break;

            case SLLI:
                valE = val1 << imm;
                break;

            case SRLI:
                valE = (uint64_t) val1 >> imm;
                break;

            case SRAI:
                valE = val1 >> imm;
                break;

            case ADDIW:
                valE = (val1 + imm) & MAX32;
                valE = valE << 32 >> 32;
                break;

            case SLLIW:
                valE = (val1 << imm) & MAX32;
                valE = valE << 32 >> 32;
                break;

            case SRLIW:
                valE = ((val1 & MAX32) >> imm);
                valE = valE << 32 >> 32;
                break;

            case SRAIW:
                valE = (int32_t) (val1 & MAX32) >> imm;
                valE = valE << 32 >> 32;
                break;

            case ADDW:
                valE = (val1 + val2) & MAX32;
                valE = valE << 32 >> 32;
                break;

            case SUBW:
                valE = (val1 - val2) & MAX32;
                valE = valE << 32 >> 32;
                break;

            case SLLW:
                valE = (val1 << val2) & MAX32;
                valE = valE << 32 >> 32;
                break;

            case SRLW:
                valE = ((val1 & MAX32) >> val2);
                valE = valE << 32 >> 32;
                break;

            case SRAW:
                valE = (int32_t) (val1 & MAX32) >> val2;
                valE = valE << 32 >> 32;
                break;

            case MUL:
                valE = val1 * val2;
                break;

            case MULH:
//                __int128 t = val1 * val2;
//                valE = t >> 64;
                raiseError("Still do not support MULH Instruction!\n");
                break;

            case MULHSU:
                raiseError("Still do not support MULHSU Instruction!\n");
                break;

            case MULHU:
                valE = top64(val1, val2);
//                raiseError("Still do not support MULHU Instruction!\n");
                break;

            case DIV:
                valE = val1 / val2;
                break;

            case DIVU:
                valE = (uint64_t) val1 / (uint64_t) val2;
//                raiseError("Still do not support DIVU Instruction!\n");
                break;


            case REM:
                valE = val1 % val2;
                break;

            case REMU:
                valE = (uint64_t) val1 % (uint64_t) val2;
                break;

            case MULW:
                valE = (val1 * val2) & MAX32;
                valE = valE << 32 >> 32;
                break;

            case DIVW:
                val1 = (val1 & MAX32) << 32 >> 32;
                val2 = (val2 & MAX32) << 32 >> 32;
                valE = val1 / val2;
                break;

            case DIVUW:
                val1 = val1 & MAX32;
                val2 = val2 & MAX32;
                valE = (uint64_t) val1 / (uint64_t) val2;
                valE = valE << 32 >> 32;
                break;

            case REMW:
                val1 = (val1 & MAX32) << 32 >> 32;
                val2 = (val2 & MAX32) << 32 >> 32;
                valE = val1 % val2;

            case REMUW:
                val1 = val1 & MAX32;
                val2 = val2 & MAX32;
                valE = (uint64_t) val1 % (uint64_t) val2;
                valE = valE << 32 >> 32;
                break;
            default:
                this->raiseError("Invaild Instruction %x at %x\n", inst, pc);
                break;
        }
    }

    bypass.e_valE = valE;

    if (is_jump(inst) || is_branch(inst))
        history.control_hazard_count++;

    m_reg.in.opcode = opcode;
    m_reg.in.func = func;
    m_reg.in.val2 = val2;
    m_reg.in.valE = valE;
    m_reg.in.rd = rd;
    m_reg.in.imm = imm;
    m_reg.in.pc = pc;
    m_reg.in.inst = inst;


}


void Simulator::memoryAccess() {
    uint32_t opcode = m_reg.out.opcode;
    uint32_t func = m_reg.out.func;
    int64_t valE = m_reg.out.valE;
    int64_t val2 = m_reg.out.val2;
    uint32_t rd = m_reg.out.rd;
    uint64_t pc = m_reg.out.pc;
    InstSet inst = m_reg.out.inst;
    if (is_verbose) {
        printf("\tMA: %s ", INSTNAME[inst]);
    }
    int64_t valM = 0;

    switch (opcode) {
        case OP_LOAD: {
            history.load_count++;
            switch (func) {
                case 0x0:
                    valM = (int64_t) memory->getByte(valE);
                    break;
                case 0x1:
                    valM = (int64_t) memory->getShort(valE);
                    break;
                case 0x2:
                    valM = (int64_t) memory->getInt(valE);
                    break;
                case 0x3:
                    valM = (int64_t) memory->getLong(valE);
                    break;
                case 0x4:
                    valM = (uint64_t) memory->getByte(valE);
                    break;
                case 0x5:
                    valM = (uint64_t) memory->getInt(valE);
                    break;
                case 0x6:
                    valE = (uint64_t) memory->getInt(valE);
                    break;
                default:
                    this->raiseError("Invaild LOAD Instruction at %x, The Func Field %x is invaild\n", pc, func);
                    break;
            }
            break;
        }
        case OP_STORE:
            history.store_count++;
            switch (func) {
                case 0x0:
                    memory->setByte(valE, val2);
                    break;
                case 0x1:
                    memory->setShort(valE, val2);
                    break;
                case 0x2:
                    memory->setInt(valE, val2);
                    break;
                case 0x3:
                    memory->setLong(valE, val2);
                    break;
                default:
                    this->raiseError("Invaild READ Instruction at %x, The Func Field %x is invaild\n", pc, func);
                    break;
            }
            break;

        case OP_RR:
        case OP_32:
        case OP_IMM:
        case OP_IMM_32:
        case OP_BRANCH:
        case OP_JAL:
        case OP_JALR:
        case OP_LUI:
        case OP_AUIPC:
        case OP_ECALL:

        case OP_BUBBLE:
            break;
        default:
            this->raiseError("Invaild Instruction at %x\n", pc);
            break;
    }

    w_reg.in.opcode = opcode;
    w_reg.in.rd = rd;
    w_reg.in.valE = valE;
    w_reg.in.valM = valM;
    w_reg.in.inst = inst;

    bypass.m_valM = valM;

}

void Simulator::writeBack() {
    uint32_t opcode = w_reg.out.opcode;
    uint32_t rd = w_reg.out.rd;
    int64_t valM = w_reg.out.valM;
    int64_t valE = w_reg.out.valE;
    InstSet inst = w_reg.out.inst;
    if (is_verbose) {
        printf("WB: %s ", INSTNAME[inst]);
    }

    switch (opcode) {
        case OP_RR:
        case OP_32:
        case OP_IMM:
        case OP_IMM_32:
        case OP_LUI:
        case OP_AUIPC:
        case OP_ECALL:
        case OP_JAL:
        case OP_JALR:
        case OP_STORE: //rd=0
        case OP_BRANCH: //rd=0
            x[rd] = valE;
            break;

        case OP_LOAD:
            x[rd] = valM;
            break;

        case OP_BUBBLE:
            break;
        default:
            this->raiseError("Invaild Instruction When Do Writing Back\n");
            break;
    }
    if (x[0]) {
        x[0] = 0;
    }

}

int64_t Simulator::handleSystemCall(int64_t op1, int64_t op2) {
    int64_t type = op2; //x a7
    int64_t arg1 = op1;
    switch (type) {
        case SYS_EXIT:
        case SYS_ORIGINAL_EXIT:
            printf("Program exit from exit() system call\n");
            if (is_dump_history) {
                printf("Dumping history to dump.txt.\n");
                dumpHistory();
            }
            this->printStatistics();
            exit(0);
            break;

        case SYS_PRINT_C:
            printf("%c", (char) arg1);
            break;

        case SYS_PRINT_I:
            printf("%d", (int32_t) arg1);
            break;

        case SYS_READ_C:
            scanf(" %c", (char *) &op1);
            break;

        case SYS_READ_I:
            scanf(" %ld", &op1);
            break;

        case SYS_PRINT_S: {
            uint32_t addr = arg1;
            char ch = this->memory->getByte(addr);
            while (ch != '\0') {
                printf("%c", ch);
                ch = this->memory->getByte(++addr);
            }
            break;
        }
        default:
            raiseError("Unknown Systemcall Type %d\n", type);
            break;
    }
    return op1;
}

string Simulator::getRegInfo() {
    string str;
    char buf[65536];
    str += "----------CPU----------\n";
    sprintf(buf, "PC: 0x%lx\n", f_reg.out.pred_pc);
    str += buf;
    for (uint32_t i = 0; i < 32; i++) {
        sprintf(buf, "%s: 0x%.8lx(%ld)\t", REGNAME[i], this->x[i], this->x[i]);
        str += buf;
        if (i % 4 == 3)
            str += "\n";
    }
    str += "-----------------------\n";
    return str;
}

void Simulator::raiseError(const char *format, ...) {
    char buf[BUFSIZ];
    va_list args;
    va_start(args, format);
    vsprintf(buf, format, args);
    fprintf(stderr, "%s", buf);
    va_end(args);
    dumpHistory();
    fprintf(stderr, "Error! Please check dump.txt\n");
    exit(-1);
}


Simulator::Simulator(MemoryManager *memory, BranchPredictor *predictor) {
    this->memory = memory;
    this->branch_predictor = predictor;
    memset(x, 0, sizeof(uint64_t) * REGNUM);
    // for(int i = 0; i < REGNUM; i++ ){
    //     this->x[i] = 0;
    // }
}


Simulator::~Simulator() = default;


void Simulator::initStack(uint32_t baseaddr, uint32_t max_size) {
    this->x[REG_SP] = baseaddr;
    this->statck_base = baseaddr;
    this->maximum_stack_size = max_size;
    for (uint32_t addr = baseaddr; addr > baseaddr - max_size; addr--) {
        if (!memory->pageExist(addr)) {
            memory->addPage(addr);
        }
        memory->setByte(addr, 0);
    }
}


void Simulator::run(uint64_t pc) {

    f_reg.out.pred_pc = pc;
    if (is_verbose) {
        printf("Run Start:\n");
    }
    while (true) {

        history.cycle_count++;

        if (this->x[REG_SP] < this->statck_base - this->maximum_stack_size) {
            this->raiseError("Stack Overflow!\n");
        }


        writeBack();
        memoryAccess();
        execute();
        decode();
        fetch();


        if (e_reg.out.stall_count == 0) {

            if (e_reg.out.opcode == ECALL && (e_reg.out.val2 == SYS_EXIT || e_reg.out.val2 == SYS_ORIGINAL_EXIT)) {
                // this shouldn't be achieved but CLion warning is really fucked me!
                break;
            }

            if (d_reg.out.opcode == OP_JALR) {
                //间接跳转，需等待计算完成
                //stall\bubble\normal\normal\normal
                f_reg.stall = true;
                d_reg.bubble = true;
                history.jalr_count++;

                if (is_verbose) {
                    printf("JALR Instruction, set to stall bubble normal normal normal\n");
                }
            }


            if (e_reg.out.opcode == OP_BRANCH &&
                (bypass.e_valE ^ branch_predictor->predict(e_reg.out.pc, e_reg.out.imm))) {
                //e_reg为分支指令且
                //使用BranchPredictor预测出错
                //设置为 stall bubble bubble normal normal
                f_reg.stall = true;
                d_reg.bubble = true;
                e_reg.bubble = true;

                if (is_verbose) {
                    printf("Predict Branch Unsuccessful, set to stall, bubble, bubble, normal, normal\n");
                }
            }


            if (e_reg.out.opcode == OP_LOAD && (e_reg.out.rd == d_reg.out.rs1 || e_reg.out.rd == d_reg.out.rs2)) {
                //e_reg为LOAD指令且
                //d_reg的pc指令使用了e_reg目标寄存器的值
                //产生数据冒险 stall stall bubble normal normal
                f_reg.stall = true;
                d_reg.stall = true;
                e_reg.bubble = true;
                history.data_hazard_count++;

                if (is_verbose) {
                    printf("Load Instruction cause data hazard, set to stall, stall, bubble, normal, normal\n");
                }
            }
        } else {
            e_reg.stall = true;
            d_reg.stall = true;
            f_reg.stall = true;
            m_reg.bubble = true;
        }


        f_reg.tick();
        d_reg.tick();
        e_reg.tick();
        m_reg.tick();
        w_reg.tick();

        if (is_dump_history) {
            history.reg_record.emplace_back(getRegInfo());
            if (history.inst_record.size() > 10000) {
                history.reg_record.clear();
                history.inst_record.clear();
            }
        }

        if (is_verbose) {
            this->printInfo();
        }

        if (is_single_step) {
            printf("Press d to dump memory into dump_memory.txt, press else to continue: ");
            char ch;
            ch = getchar();
            if (ch == 'd') {
                this->dumpHistory();
            }
        }
    }
}

void Simulator::dumpHistory() {
    std::ofstream ofile("dump.txt");
    ofile << "---------Execution History--------\n";
    for (uint32_t i = 0; i < this->history.inst_record.size(); i++) {
        ofile << this->history.inst_record[i];
        ofile << this->history.reg_record[i];
    }
    ofile << "\n---------Memory Dump---------------\n";
    ofile << memory->dumpMemory();
    ofile << std::endl;

    ofile.close();
}

void Simulator::printInfo() {
    printf("%s", getRegInfo().c_str());
}

void Simulator::printStatistics() {
    printf("-------STATISTICS---------\n");
    printf("Number of Cycles: %u\n", history.cycle_count);
    printf("Number of Instructions: %u\n", history.inst_count);
    printf("Avg Cycles per Instrcution: %.4f\n", (float) history.cycle_count / history.inst_count);
    printf("Number of JALR Instructions: %u\n", history.jalr_count);
    printf("Number of JAL Instructions: %u\n", history.jal_count);
    printf("Number of LOAD Instructions: %u\n", history.load_count);
    printf("Number of STORE Instructions: %u\n", history.store_count);
    printf("Number of BRANCH Instructions: %u\n", history.branch_count);
    printf("Number of Successful Prediction: %u\n", history.predicted_success);
    printf("Number of Unsuccessful Prediction: %u\n", history.predicted_unsuccess);
    printf("Branch Prediction Accuracy: %.4f (Using Strategy: %s)\n",
           (float) history.predicted_success / history.branch_count,
           branch_predictor->getStrategyName().c_str());
    printf("Number of Control Hazards: %u\n", this->history.control_hazard_count);
    printf("Number of Data Hazards: %u\n", this->history.data_hazard_count);
    printf("Number of Structural Hazards: %u\n", this->history.structural_hazard_count);
    printf("-----------------------------------\n");
}
