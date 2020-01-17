// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dct_HH_
#define _dct_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dct_2d.h"
#include "dct_2d_row_outbuf.h"

namespace ap_rtl {

struct dct : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > input_r_address0;
    sc_out< sc_logic > input_r_ce0;
    sc_in< sc_lv<16> > input_r_q0;
    sc_out< sc_lv<6> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_out< sc_logic > output_r_we0;
    sc_out< sc_lv<16> > output_r_d0;


    // Module declarations
    dct(sc_module_name name);
    SC_HAS_PROCESS(dct);

    ~dct();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    dct_2d_row_outbuf* buf_2d_in_U;
    dct_2d_row_outbuf* buf_2d_out_U;
    dct_2d* grp_dct_2d_fu_190;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<7> > indvar_flatten_reg_124;
    sc_signal< sc_lv<4> > r_0_i_reg_135;
    sc_signal< sc_lv<4> > c_0_i_reg_146;
    sc_signal< sc_lv<7> > indvar_flatten11_reg_157;
    sc_signal< sc_lv<4> > r_0_i2_reg_168;
    sc_signal< sc_lv<4> > c_0_i4_reg_179;
    sc_signal< sc_lv<1> > icmp_ln59_fu_198_p2;
    sc_signal< sc_lv<1> > icmp_ln59_reg_395;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<7> > add_ln59_fu_204_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<4> > select_ln59_fu_222_p3;
    sc_signal< sc_lv<4> > select_ln59_reg_404;
    sc_signal< sc_lv<4> > select_ln59_1_fu_230_p3;
    sc_signal< sc_lv<4> > select_ln59_1_reg_409;
    sc_signal< sc_lv<4> > c_fu_265_p2;
    sc_signal< sc_lv<1> > icmp_ln71_fu_296_p2;
    sc_signal< sc_lv<1> > icmp_ln71_reg_425;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< bool > ap_block_state6_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state7_pp1_stage0_iter1;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<7> > add_ln71_fu_302_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<4> > select_ln71_1_fu_328_p3;
    sc_signal< sc_lv<4> > select_ln71_1_reg_434;
    sc_signal< sc_lv<6> > add_ln74_fu_379_p2;
    sc_signal< sc_lv<6> > add_ln74_reg_444;
    sc_signal< sc_lv<4> > c_1_fu_385_p2;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > grp_dct_2d_fu_190_ap_ready;
    sc_signal< sc_logic > grp_dct_2d_fu_190_ap_done;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state6;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< sc_lv<6> > buf_2d_in_address0;
    sc_signal< sc_logic > buf_2d_in_ce0;
    sc_signal< sc_logic > buf_2d_in_we0;
    sc_signal< sc_lv<16> > buf_2d_in_q0;
    sc_signal< sc_lv<6> > buf_2d_out_address0;
    sc_signal< sc_logic > buf_2d_out_ce0;
    sc_signal< sc_logic > buf_2d_out_we0;
    sc_signal< sc_lv<16> > buf_2d_out_q0;
    sc_signal< sc_logic > grp_dct_2d_fu_190_ap_start;
    sc_signal< sc_logic > grp_dct_2d_fu_190_ap_idle;
    sc_signal< sc_lv<6> > grp_dct_2d_fu_190_in_block_address0;
    sc_signal< sc_logic > grp_dct_2d_fu_190_in_block_ce0;
    sc_signal< sc_lv<6> > grp_dct_2d_fu_190_out_block_address0;
    sc_signal< sc_logic > grp_dct_2d_fu_190_out_block_ce0;
    sc_signal< sc_logic > grp_dct_2d_fu_190_out_block_we0;
    sc_signal< sc_lv<16> > grp_dct_2d_fu_190_out_block_d0;
    sc_signal< sc_lv<4> > ap_phi_mux_r_0_i_phi_fu_139_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<4> > ap_phi_mux_r_0_i2_phi_fu_172_p4;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_logic > grp_dct_2d_fu_190_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<64> > zext_ln62_fu_260_p1;
    sc_signal< sc_lv<64> > zext_ln62_2_fu_291_p1;
    sc_signal< sc_lv<64> > zext_ln74_1_fu_374_p1;
    sc_signal< sc_lv<64> > zext_ln74_2_fu_391_p1;
    sc_signal< sc_lv<1> > icmp_ln61_fu_216_p2;
    sc_signal< sc_lv<4> > r_fu_210_p2;
    sc_signal< sc_lv<3> > trunc_ln59_fu_238_p1;
    sc_signal< sc_lv<6> > zext_ln61_fu_250_p1;
    sc_signal< sc_lv<6> > shl_ln62_mid2_fu_242_p3;
    sc_signal< sc_lv<6> > add_ln62_fu_254_p2;
    sc_signal< sc_lv<7> > tmp_9_fu_271_p3;
    sc_signal< sc_lv<8> > zext_ln61_1_fu_278_p1;
    sc_signal< sc_lv<8> > zext_ln62_1_fu_282_p1;
    sc_signal< sc_lv<8> > add_ln62_1_fu_285_p2;
    sc_signal< sc_lv<1> > icmp_ln73_fu_314_p2;
    sc_signal< sc_lv<4> > r_1_fu_308_p2;
    sc_signal< sc_lv<7> > tmp_s_fu_336_p3;
    sc_signal< sc_lv<3> > trunc_ln71_fu_348_p1;
    sc_signal< sc_lv<4> > select_ln71_fu_320_p3;
    sc_signal< sc_lv<8> > zext_ln71_fu_344_p1;
    sc_signal< sc_lv<8> > zext_ln74_fu_364_p1;
    sc_signal< sc_lv<8> > add_ln74_1_fu_368_p2;
    sc_signal< sc_lv<6> > zext_ln73_fu_360_p1;
    sc_signal< sc_lv<6> > shl_ln74_mid2_fu_352_p3;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_pp0_stage0;
    static const sc_lv<6> ap_ST_fsm_state4;
    static const sc_lv<6> ap_ST_fsm_state5;
    static const sc_lv<6> ap_ST_fsm_pp1_stage0;
    static const sc_lv<6> ap_ST_fsm_state8;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_5;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln59_fu_204_p2();
    void thread_add_ln62_1_fu_285_p2();
    void thread_add_ln62_fu_254_p2();
    void thread_add_ln71_fu_302_p2();
    void thread_add_ln74_1_fu_368_p2();
    void thread_add_ln74_fu_379_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state8();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state6_pp1_stage0_iter0();
    void thread_ap_block_state7_pp1_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_condition_pp1_exit_iter0_state6();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_pp1();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp1();
    void thread_ap_phi_mux_r_0_i2_phi_fu_172_p4();
    void thread_ap_phi_mux_r_0_i_phi_fu_139_p4();
    void thread_ap_ready();
    void thread_buf_2d_in_address0();
    void thread_buf_2d_in_ce0();
    void thread_buf_2d_in_we0();
    void thread_buf_2d_out_address0();
    void thread_buf_2d_out_ce0();
    void thread_buf_2d_out_we0();
    void thread_c_1_fu_385_p2();
    void thread_c_fu_265_p2();
    void thread_grp_dct_2d_fu_190_ap_start();
    void thread_icmp_ln59_fu_198_p2();
    void thread_icmp_ln61_fu_216_p2();
    void thread_icmp_ln71_fu_296_p2();
    void thread_icmp_ln73_fu_314_p2();
    void thread_input_r_address0();
    void thread_input_r_ce0();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_r_1_fu_308_p2();
    void thread_r_fu_210_p2();
    void thread_select_ln59_1_fu_230_p3();
    void thread_select_ln59_fu_222_p3();
    void thread_select_ln71_1_fu_328_p3();
    void thread_select_ln71_fu_320_p3();
    void thread_shl_ln62_mid2_fu_242_p3();
    void thread_shl_ln74_mid2_fu_352_p3();
    void thread_tmp_9_fu_271_p3();
    void thread_tmp_s_fu_336_p3();
    void thread_trunc_ln59_fu_238_p1();
    void thread_trunc_ln71_fu_348_p1();
    void thread_zext_ln61_1_fu_278_p1();
    void thread_zext_ln61_fu_250_p1();
    void thread_zext_ln62_1_fu_282_p1();
    void thread_zext_ln62_2_fu_291_p1();
    void thread_zext_ln62_fu_260_p1();
    void thread_zext_ln71_fu_344_p1();
    void thread_zext_ln73_fu_360_p1();
    void thread_zext_ln74_1_fu_374_p1();
    void thread_zext_ln74_2_fu_391_p1();
    void thread_zext_ln74_fu_364_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
