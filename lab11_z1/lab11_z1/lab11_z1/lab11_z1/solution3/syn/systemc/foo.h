// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _foo_HH_
#define _foo_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct foo : public sc_module {
    // Port declarations 26
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<4> > a_address0;
    sc_out< sc_logic > a_ce0;
    sc_out< sc_logic > a_we0;
    sc_out< sc_lv<32> > a_d0;
    sc_out< sc_lv<4> > a_address1;
    sc_out< sc_logic > a_ce1;
    sc_out< sc_logic > a_we1;
    sc_out< sc_lv<32> > a_d1;
    sc_out< sc_lv<4> > b_address0;
    sc_out< sc_logic > b_ce0;
    sc_in< sc_lv<32> > b_q0;
    sc_out< sc_lv<4> > b_address1;
    sc_out< sc_logic > b_ce1;
    sc_in< sc_lv<32> > b_q1;
    sc_out< sc_lv<4> > c_address0;
    sc_out< sc_logic > c_ce0;
    sc_in< sc_lv<32> > c_q0;
    sc_out< sc_lv<4> > c_address1;
    sc_out< sc_logic > c_ce1;
    sc_in< sc_lv<32> > c_q1;


    // Module declarations
    foo(sc_module_name name);
    SC_HAS_PROCESS(foo);

    ~foo();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<64> > tmp_fu_188_p1;
    sc_signal< sc_lv<64> > tmp_reg_241;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > exitcond_fu_182_p2;
    sc_signal< sc_lv<4> > tmp_4_fu_194_p1;
    sc_signal< sc_lv<4> > tmp_4_reg_256;
    sc_signal< sc_lv<64> > tmp_s_fu_204_p1;
    sc_signal< sc_lv<64> > tmp_s_reg_262;
    sc_signal< sc_lv<5> > i_1_3_fu_210_p2;
    sc_signal< sc_lv<5> > i_1_3_reg_277;
    sc_signal< sc_lv<64> > tmp_2_fu_221_p1;
    sc_signal< sc_lv<64> > tmp_2_reg_282;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<64> > tmp_3_fu_232_p1;
    sc_signal< sc_lv<64> > tmp_3_reg_297;
    sc_signal< sc_lv<5> > i_reg_157;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<4> > i_1_s_fu_198_p2;
    sc_signal< sc_lv<4> > i_1_1_fu_216_p2;
    sc_signal< sc_lv<4> > i_1_2_fu_227_p2;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_state3;
    static const sc_lv<4> ap_ST_fsm_state4;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<5> ap_const_lv5_4;
    static const sc_lv<4> ap_const_lv4_2;
    static const sc_lv<4> ap_const_lv4_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_a_address0();
    void thread_a_address1();
    void thread_a_ce0();
    void thread_a_ce1();
    void thread_a_d0();
    void thread_a_d1();
    void thread_a_we0();
    void thread_a_we1();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_b_address0();
    void thread_b_address1();
    void thread_b_ce0();
    void thread_b_ce1();
    void thread_c_address0();
    void thread_c_address1();
    void thread_c_ce0();
    void thread_c_ce1();
    void thread_exitcond_fu_182_p2();
    void thread_i_1_1_fu_216_p2();
    void thread_i_1_2_fu_227_p2();
    void thread_i_1_3_fu_210_p2();
    void thread_i_1_s_fu_198_p2();
    void thread_tmp_2_fu_221_p1();
    void thread_tmp_3_fu_232_p1();
    void thread_tmp_4_fu_194_p1();
    void thread_tmp_fu_188_p1();
    void thread_tmp_s_fu_204_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
