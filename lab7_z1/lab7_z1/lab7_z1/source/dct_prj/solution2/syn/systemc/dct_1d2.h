// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dct_1d2_HH_
#define _dct_1d2_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dct_mac_muladd_15cud.h"
#include "dct_1d2_dct_coeffbkb.h"

namespace ap_rtl {

struct dct_1d2 : public sc_module {
    // Port declarations 15
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > src_address0;
    sc_out< sc_logic > src_ce0;
    sc_in< sc_lv<16> > src_q0;
    sc_in< sc_lv<4> > src_offset;
    sc_out< sc_lv<6> > dst_address0;
    sc_out< sc_logic > dst_ce0;
    sc_out< sc_logic > dst_we0;
    sc_out< sc_lv<16> > dst_d0;
    sc_in< sc_lv<4> > dst_offset;


    // Module declarations
    dct_1d2(sc_module_name name);
    SC_HAS_PROCESS(dct_1d2);

    ~dct_1d2();

    sc_trace_file* mVcdFile;

    dct_1d2_dct_coeffbkb* dct_coeff_table_U;
    dct_mac_muladd_15cud<1,1,15,16,32,32>* dct_mac_muladd_15cud_U1;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<6> > dct_coeff_table_address0;
    sc_signal< sc_logic > dct_coeff_table_ce0;
    sc_signal< sc_lv<15> > dct_coeff_table_q0;
    sc_signal< sc_lv<4> > n_0_reg_117;
    sc_signal< sc_lv<32> > tmp_0_reg_128;
    sc_signal< sc_lv<8> > zext_ln17_fu_148_p1;
    sc_signal< sc_lv<8> > zext_ln17_reg_275;
    sc_signal< sc_lv<8> > zext_ln4_fu_160_p1;
    sc_signal< sc_lv<8> > zext_ln4_reg_280;
    sc_signal< sc_lv<1> > icmp_ln11_fu_164_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<4> > k_fu_170_p2;
    sc_signal< sc_lv<4> > k_reg_289;
    sc_signal< sc_lv<8> > zext_ln19_fu_188_p1;
    sc_signal< sc_lv<8> > zext_ln19_reg_294;
    sc_signal< sc_lv<6> > dst_addr_reg_299;
    sc_signal< sc_lv<1> > icmp_ln13_fu_202_p2;
    sc_signal< sc_lv<1> > icmp_ln13_reg_304;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<4> > n_fu_208_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<32> > grp_fu_267_p3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_lv<4> > k_0_reg_106;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<64> > zext_ln19_1_fu_197_p1;
    sc_signal< sc_lv<64> > zext_ln16_2_fu_223_p1;
    sc_signal< sc_lv<64> > zext_ln17_1_fu_233_p1;
    sc_signal< sc_lv<7> > tmp_4_fu_140_p3;
    sc_signal< sc_lv<7> > tmp_5_fu_152_p3;
    sc_signal< sc_lv<7> > tmp_8_fu_180_p3;
    sc_signal< sc_lv<8> > zext_ln16_fu_176_p1;
    sc_signal< sc_lv<8> > add_ln19_1_fu_192_p2;
    sc_signal< sc_lv<8> > zext_ln16_1_fu_214_p1;
    sc_signal< sc_lv<8> > add_ln16_fu_218_p2;
    sc_signal< sc_lv<8> > add_ln17_fu_228_p2;
    sc_signal< sc_lv<29> > trunc_ln13_fu_246_p1;
    sc_signal< sc_lv<29> > add_ln19_fu_250_p2;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_state5;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<29> ap_const_lv29_1000;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_1C;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln16_fu_218_p2();
    void thread_add_ln17_fu_228_p2();
    void thread_add_ln19_1_fu_192_p2();
    void thread_add_ln19_fu_250_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state3();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_dct_coeff_table_address0();
    void thread_dct_coeff_table_ce0();
    void thread_dst_address0();
    void thread_dst_ce0();
    void thread_dst_d0();
    void thread_dst_we0();
    void thread_icmp_ln11_fu_164_p2();
    void thread_icmp_ln13_fu_202_p2();
    void thread_k_fu_170_p2();
    void thread_n_fu_208_p2();
    void thread_src_address0();
    void thread_src_ce0();
    void thread_tmp_4_fu_140_p3();
    void thread_tmp_5_fu_152_p3();
    void thread_tmp_8_fu_180_p3();
    void thread_trunc_ln13_fu_246_p1();
    void thread_zext_ln16_1_fu_214_p1();
    void thread_zext_ln16_2_fu_223_p1();
    void thread_zext_ln16_fu_176_p1();
    void thread_zext_ln17_1_fu_233_p1();
    void thread_zext_ln17_fu_148_p1();
    void thread_zext_ln19_1_fu_197_p1();
    void thread_zext_ln19_fu_188_p1();
    void thread_zext_ln4_fu_160_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
