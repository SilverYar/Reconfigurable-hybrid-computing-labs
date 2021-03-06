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
    dct_2d* grp_dct_2d_fu_150;
    sc_signal< sc_lv<10> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<4> > r_fu_164_p2;
    sc_signal< sc_lv<4> > r_reg_311;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<6> > shl_ln_fu_174_p3;
    sc_signal< sc_lv<6> > shl_ln_reg_316;
    sc_signal< sc_lv<1> > icmp_ln57_fu_158_p2;
    sc_signal< sc_lv<8> > zext_ln59_1_fu_190_p1;
    sc_signal< sc_lv<8> > zext_ln59_1_reg_321;
    sc_signal< sc_lv<4> > c_fu_204_p2;
    sc_signal< sc_lv<4> > c_reg_329;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln59_fu_198_p2;
    sc_signal< sc_lv<8> > add_ln60_1_fu_224_p2;
    sc_signal< sc_lv<8> > add_ln60_1_reg_339;
    sc_signal< sc_lv<16> > input_load_reg_344;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<4> > r_1_fu_239_p2;
    sc_signal< sc_lv<4> > r_1_reg_352;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<8> > zext_ln72_fu_253_p1;
    sc_signal< sc_lv<8> > zext_ln72_reg_357;
    sc_signal< sc_lv<1> > icmp_ln69_fu_233_p2;
    sc_signal< sc_lv<6> > shl_ln1_fu_261_p3;
    sc_signal< sc_lv<6> > shl_ln1_reg_362;
    sc_signal< sc_lv<4> > c_1_fu_279_p2;
    sc_signal< sc_lv<4> > c_1_reg_370;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > icmp_ln71_fu_273_p2;
    sc_signal< sc_lv<6> > add_ln72_fu_299_p2;
    sc_signal< sc_lv<6> > add_ln72_reg_380;
    sc_signal< sc_lv<16> > buf_2d_out_q0;
    sc_signal< sc_lv<16> > buf_2d_out_load_reg_385;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<6> > buf_2d_in_address0;
    sc_signal< sc_logic > buf_2d_in_ce0;
    sc_signal< sc_logic > buf_2d_in_we0;
    sc_signal< sc_lv<16> > buf_2d_in_q0;
    sc_signal< sc_lv<6> > buf_2d_out_address0;
    sc_signal< sc_logic > buf_2d_out_ce0;
    sc_signal< sc_logic > buf_2d_out_we0;
    sc_signal< sc_logic > grp_dct_2d_fu_150_ap_start;
    sc_signal< sc_logic > grp_dct_2d_fu_150_ap_done;
    sc_signal< sc_logic > grp_dct_2d_fu_150_ap_idle;
    sc_signal< sc_logic > grp_dct_2d_fu_150_ap_ready;
    sc_signal< sc_lv<6> > grp_dct_2d_fu_150_in_block_address0;
    sc_signal< sc_logic > grp_dct_2d_fu_150_in_block_ce0;
    sc_signal< sc_lv<6> > grp_dct_2d_fu_150_out_block_address0;
    sc_signal< sc_logic > grp_dct_2d_fu_150_out_block_ce0;
    sc_signal< sc_logic > grp_dct_2d_fu_150_out_block_we0;
    sc_signal< sc_lv<16> > grp_dct_2d_fu_150_out_block_d0;
    sc_signal< sc_lv<4> > r_0_i_reg_106;
    sc_signal< sc_lv<4> > c_0_i_reg_117;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<4> > r_0_i2_reg_128;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<4> > c_0_i4_reg_139;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > grp_dct_2d_fu_150_ap_start_reg;
    sc_signal< sc_lv<64> > zext_ln60_fu_215_p1;
    sc_signal< sc_lv<64> > zext_ln60_2_fu_229_p1;
    sc_signal< sc_lv<64> > zext_ln72_3_fu_294_p1;
    sc_signal< sc_lv<64> > zext_ln72_2_fu_304_p1;
    sc_signal< sc_lv<3> > trunc_ln60_fu_170_p1;
    sc_signal< sc_lv<7> > tmp_9_fu_182_p3;
    sc_signal< sc_lv<6> > zext_ln59_fu_194_p1;
    sc_signal< sc_lv<6> > add_ln60_fu_210_p2;
    sc_signal< sc_lv<8> > zext_ln60_1_fu_220_p1;
    sc_signal< sc_lv<7> > tmp_s_fu_245_p3;
    sc_signal< sc_lv<3> > trunc_ln72_fu_257_p1;
    sc_signal< sc_lv<8> > zext_ln72_1_fu_285_p1;
    sc_signal< sc_lv<8> > add_ln72_1_fu_289_p2;
    sc_signal< sc_lv<6> > zext_ln71_fu_269_p1;
    sc_signal< sc_lv<10> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<10> ap_ST_fsm_state1;
    static const sc_lv<10> ap_ST_fsm_state2;
    static const sc_lv<10> ap_ST_fsm_state3;
    static const sc_lv<10> ap_ST_fsm_state4;
    static const sc_lv<10> ap_ST_fsm_state5;
    static const sc_lv<10> ap_ST_fsm_state6;
    static const sc_lv<10> ap_ST_fsm_state7;
    static const sc_lv<10> ap_ST_fsm_state8;
    static const sc_lv<10> ap_ST_fsm_state9;
    static const sc_lv<10> ap_ST_fsm_state10;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln60_1_fu_224_p2();
    void thread_add_ln60_fu_210_p2();
    void thread_add_ln72_1_fu_289_p2();
    void thread_add_ln72_fu_299_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_buf_2d_in_address0();
    void thread_buf_2d_in_ce0();
    void thread_buf_2d_in_we0();
    void thread_buf_2d_out_address0();
    void thread_buf_2d_out_ce0();
    void thread_buf_2d_out_we0();
    void thread_c_1_fu_279_p2();
    void thread_c_fu_204_p2();
    void thread_grp_dct_2d_fu_150_ap_start();
    void thread_icmp_ln57_fu_158_p2();
    void thread_icmp_ln59_fu_198_p2();
    void thread_icmp_ln69_fu_233_p2();
    void thread_icmp_ln71_fu_273_p2();
    void thread_input_r_address0();
    void thread_input_r_ce0();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_r_1_fu_239_p2();
    void thread_r_fu_164_p2();
    void thread_shl_ln1_fu_261_p3();
    void thread_shl_ln_fu_174_p3();
    void thread_tmp_9_fu_182_p3();
    void thread_tmp_s_fu_245_p3();
    void thread_trunc_ln60_fu_170_p1();
    void thread_trunc_ln72_fu_257_p1();
    void thread_zext_ln59_1_fu_190_p1();
    void thread_zext_ln59_fu_194_p1();
    void thread_zext_ln60_1_fu_220_p1();
    void thread_zext_ln60_2_fu_229_p1();
    void thread_zext_ln60_fu_215_p1();
    void thread_zext_ln71_fu_269_p1();
    void thread_zext_ln72_1_fu_285_p1();
    void thread_zext_ln72_2_fu_304_p1();
    void thread_zext_ln72_3_fu_294_p1();
    void thread_zext_ln72_fu_253_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
