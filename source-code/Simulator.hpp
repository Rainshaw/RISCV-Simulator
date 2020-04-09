//
//  Simulator.hpp
//  lab2
//
//  Created by 郜瑞啸 on 2020/4/4.
//  Copyright © 2020 郜瑞啸. All rights reserved.
//

#ifndef Simulator_hpp
#define Simulator_hpp

#include <cstdint>
#include <string>
#include <vector>

#include "BranchPredictor.hpp"
#include "MemoryManager.hpp"


namespace RISCV_GRX {
    uint8_t const REGNUM = 32;

    enum Reg {
        // FROM https://en.wikichip.org/wiki/risc-v/registers
        REG_ZERO = 0,
        REG_RA = 1,
        REG_SP = 2,
        REG_GP = 3,
        REG_TP = 4,
        REG_T0 = 5,
        REG_T1 = 6,
        REG_T2 = 7,
        REG_S0 = 8,
        REG_S1 = 9,
        REG_A0 = 10,
        REG_A1 = 11,
        REG_A2 = 12,
        REG_A3 = 13,
        REG_A4 = 14,
        REG_A5 = 15,
        REG_A6 = 16,
        REG_A7 = 17,
        REG_S2 = 18,
        REG_S3 = 19,
        REG_S4 = 20,
        REG_S5 = 21,
        REG_S6 = 22,
        REG_S7 = 23,
        REG_S8 = 24,
        REG_S9 = 25,
        REG_S10 = 26,
        REG_S11 = 27,
        REG_T3 = 28,
        REG_T4 = 29,
        REG_T5 = 30,
        REG_T6 = 31,
    };

    extern const char *REGNAME[32];

    typedef uint8_t RegId;

    enum InstType {
        R_Type,
        I_Type,
        S_Type,
        SB_Type,
        U_Type,
        UJ_Type,
    };

    enum InstSet {
        UNKNOWN = 0,
        // RV32I
        LUI = 1,
        AUIPC = 2,
        JAL = 3,
        JALR = 4,
        BEQ = 5,
        BNE = 6,
        BLT = 7,
        BGE = 8,
        BLTU = 9,
        BGEU = 10,
        LB = 11,
        LH = 12,
        LW = 13,
        LBU = 14,
        LHU = 15,
        SB = 16,
        SH = 17,
        SW = 18,
        ADDI = 19,
        SLTI = 20,
        SLTIU = 21,
        XORI = 22,
        ORI = 23,
        ANDI = 24,
        //SLLI = 25,
        //SRLI = 26,
        //SRAI = 27,
        ADD = 28,
        SUB = 29,
        SLL = 30,
        SLT = 31,
        SLTU = 32,
        XOR = 33,
        SRL = 34,
        SRA = 35,
        OR = 36,
        AND = 37,
        //FENCE = 38,
        //FENCE_I = 39,
        ECALL = 40,
        //EBREAK = 41,
        //CSRRW = 42,
        //CSRRS = 43,
        //CSRRC = 44,
        //CSRRWI = 45,
        //CSRRSI = 46,
        //CSRRCI = 47,
        // RV64I
        LWU = 48,
        LD = 49,
        SD = 50,
        SLLI = 51,
        SRLI = 52,
        SRAI = 53,
        ADDIW = 54,
        SLLIW = 55,
        SRLIW = 56,
        SRAIW = 57,
        ADDW = 58,
        SUBW = 59,
        SLLW = 60,
        SRLW = 61,
        SRAW = 62,
        // RV32M
        MUL = 63,
        MULH = 64,
        MULHSU = 65,
        MULHU = 66,
        DIV = 67,
        DIVU = 68,
        REM = 69,
        REMU = 70,
        // RV64M
        MULW = 71,
        DIVW = 72,
        DIVUW = 73,
        REMW = 74,
        REMUW = 75,
    };

    extern const char *INSTNAME[];

    int const OP_BUBBLE = 0;
    int const OP_LUI = 0x37;
    int const OP_AUIPC = 0x17;

    int const OP_JAL = 0x6f;
    int const OP_JALR = 0x67;
    int const OP_BRANCH = 0x63;

    int const OP_LOAD = 0x03;
    int const OP_STORE = 0x23;

    int const OP_IMM = 0x13;
    int const OP_RR = 0x33;

//    int const OP_FENCE= 0x0f;
    int const OP_ECALL = 0x73;

    int const OP_IMM_32 = 0x1B;
    int const OP_32 = 0x3B;

    inline bool is_branch(InstSet inst) {
        return inst == BEQ || inst == BNE || inst == BLT || inst == BGE || inst == BGEU || inst == BLTU;
    }

    inline bool is_jump(InstSet inst) {
        return inst == JALR || inst == JAL;
    }

    inline bool is_read_memory(InstSet inst) {
        return inst == LB || inst == LH || inst == LW || inst == LD || inst == LBU || inst == LHU || inst == LWU;

    }

    int const SYS_EXIT = 3;
    int const SYS_PRINT_I = 2;
    int const SYS_PRINT_C = 1;
    int const SYS_PRINT_S = 0;
    int const SYS_READ_I = 5;
    int const SYS_READ_C = 4;
    int const SYS_ORIGINAL_EXIT = 93;

    // End RISCV_GRX NAMESPACE
}


class Simulator {
private:
    template<class T>
    struct ClockReg {
        bool stall, bubble;
        T in, out;

        void tick() {
            if (bubble) {
                out.opcode = RISCV_GRX::OP_BUBBLE;
                out.inst = RISCV_GRX::UNKNOWN;
                bubble = stall = false;
            } else if (stall) {
                stall = false;
            } else {
                out = in;
            }
        }
    };

    struct DRegX {
        uint32_t opcode, func, rs1, rs2, rd;
        int32_t imm;
        uint64_t pc;
        RISCV_GRX::InstSet inst;
    };
    struct DReg : ClockReg<DRegX> {
    } d_reg{};

    struct ERegX {
        uint32_t opcode, func, rd;
        int32_t imm;
        int64_t val1, val2;
        uint64_t pc;
        RISCV_GRX::InstSet inst;
    };
    struct EReg : ClockReg<ERegX> {
    } e_reg{};

    struct MRegX {
        uint32_t opcode, func, rd;
        int32_t imm;
        int64_t val2, valE;
        uint64_t pc;
        RISCV_GRX::InstSet inst;
    };
    struct MReg : ClockReg<MRegX> {
    } m_reg{};

    struct WRegX {
        uint32_t opcode, rd;
        int64_t valE, valM;
        RISCV_GRX::InstSet inst;
    };
    struct WReg : ClockReg<WRegX> {
    } w_reg{};

    struct FReg {
        bool stall;
        struct {
            uint64_t pred_pc;
        } in, out;

        void tick() {
            if (stall) {
                stall = false;
            } else {
                out = in;
            }
        }
    } f_reg{};

    struct PipelineSignal {
        int64_t e_valE, m_valM;
    } bypass{};

    struct History {
        uint32_t inst_count;
        uint32_t cycle_count;
        uint32_t branch_count;
        uint32_t jalr_count;
        uint32_t jal_count;
        uint32_t load_count;
        uint32_t store_count;

        uint32_t predicted_success;
        uint32_t predicted_unsuccess;

        uint32_t data_hazard_count;
        uint32_t control_hazard_count;
        uint32_t structural_hazard_count;

        std::vector<std::string> inst_record;
        std::vector<std::string> reg_record;

    } history;

    void fetch();

    void decode();

    void execute();

    void memoryAccess();

    void writeBack();

    int64_t handleSystemCall(int64_t op1, int64_t op2);

    std::string getRegInfo();

    void raiseError(const char *format, ...);

public:
    bool is_single_step{};
    bool is_verbose{};
    bool is_dump_history{};

    int64_t reg[RISCV_GRX::REGNUM]{};
    uint32_t statck_base{};
    uint32_t maximum_stack_size{};
    MemoryManager *memory;
    BranchPredictor *branch_predictor;

    Simulator(MemoryManager *memory, BranchPredictor *predictor);

    ~Simulator();

    void initStack(uint32_t baseaddr, uint32_t max_size);

    void run(uint64_t pc);

    void dumpHistory();

    void printInfo();

    void printStatistics();

};

#endif /* Simulator_hpp */
