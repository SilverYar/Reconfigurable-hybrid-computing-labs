// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _foo_HH_
#define _foo_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct foo : public sc_module {
    // Port declarations 10
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > in1;
    sc_in< sc_lv<32> > in2;
    sc_out< sc_lv<32> > out_data;
    sc_out< sc_logic > out_data_ap_vld;


    // Module declarations
    foo(sc_module_name name);
    SC_HAS_PROCESS(foo);

    ~foo();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > accum;
    sc_signal< sc_lv<4> > i_fu_177_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > ap_phi_mux_do_init_phi_fu_75_p6;
    sc_signal< sc_lv<1> > do_init_reg_71;
    sc_signal< sc_lv<1> > icmp_ln4_fu_183_p2;
    sc_signal< sc_lv<32> > ap_phi_mux_in12_phi_phi_fu_132_p4;
    sc_signal< sc_lv<32> > in12_rewind_reg_86;
    sc_signal< sc_lv<32> > ap_phi_mux_in23_phi_phi_fu_145_p4;
    sc_signal< sc_lv<32> > in23_rewind_reg_100;
    sc_signal< sc_lv<4> > i_01_reg_114;
    sc_signal< sc_lv<32> > add_ln5_1_fu_164_p2;
    sc_signal< sc_lv<32> > add_ln5_fu_158_p2;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_fsm_state1;
    static const sc_lv<2> ap_ST_fsm_state2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<4> ap_const_lv4_9;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln5_1_fu_164_p2();
    void thread_add_ln5_fu_158_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_do_init_phi_fu_75_p6();
    void thread_ap_phi_mux_in12_phi_phi_fu_132_p4();
    void thread_ap_phi_mux_in23_phi_phi_fu_145_p4();
    void thread_ap_ready();
    void thread_i_fu_177_p2();
    void thread_icmp_ln4_fu_183_p2();
    void thread_out_data();
    void thread_out_data_ap_vld();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
