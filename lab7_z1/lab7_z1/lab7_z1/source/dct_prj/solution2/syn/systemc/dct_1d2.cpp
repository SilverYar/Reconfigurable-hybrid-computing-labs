// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "dct_1d2.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic dct_1d2::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic dct_1d2::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> dct_1d2::ap_ST_fsm_state1 = "1";
const sc_lv<4> dct_1d2::ap_ST_fsm_state2 = "10";
const sc_lv<4> dct_1d2::ap_ST_fsm_pp0_stage0 = "100";
const sc_lv<4> dct_1d2::ap_ST_fsm_state5 = "1000";
const bool dct_1d2::ap_const_boolean_1 = true;
const sc_lv<32> dct_1d2::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> dct_1d2::ap_const_lv32_1 = "1";
const sc_lv<1> dct_1d2::ap_const_lv1_0 = "0";
const sc_lv<32> dct_1d2::ap_const_lv32_2 = "10";
const bool dct_1d2::ap_const_boolean_0 = false;
const sc_lv<1> dct_1d2::ap_const_lv1_1 = "1";
const sc_lv<4> dct_1d2::ap_const_lv4_0 = "0000";
const sc_lv<32> dct_1d2::ap_const_lv32_3 = "11";
const sc_lv<3> dct_1d2::ap_const_lv3_0 = "000";
const sc_lv<4> dct_1d2::ap_const_lv4_8 = "1000";
const sc_lv<4> dct_1d2::ap_const_lv4_1 = "1";
const sc_lv<29> dct_1d2::ap_const_lv29_1000 = "1000000000000";
const sc_lv<32> dct_1d2::ap_const_lv32_D = "1101";
const sc_lv<32> dct_1d2::ap_const_lv32_1C = "11100";

dct_1d2::dct_1d2(sc_module_name name) : sc_module(name), mVcdFile(0) {
    dct_coeff_table_U = new dct_1d2_dct_coeffbkb("dct_coeff_table_U");
    dct_coeff_table_U->clk(ap_clk);
    dct_coeff_table_U->reset(ap_rst);
    dct_coeff_table_U->address0(dct_coeff_table_address0);
    dct_coeff_table_U->ce0(dct_coeff_table_ce0);
    dct_coeff_table_U->q0(dct_coeff_table_q0);
    dct_mac_muladd_15cud_U1 = new dct_mac_muladd_15cud<1,1,15,16,32,32>("dct_mac_muladd_15cud_U1");
    dct_mac_muladd_15cud_U1->din0(dct_coeff_table_q0);
    dct_mac_muladd_15cud_U1->din1(src_q0);
    dct_mac_muladd_15cud_U1->din2(tmp_0_reg_128);
    dct_mac_muladd_15cud_U1->dout(grp_fu_267_p3);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln16_fu_218_p2);
    sensitive << ( zext_ln19_reg_294 );
    sensitive << ( zext_ln16_1_fu_214_p1 );

    SC_METHOD(thread_add_ln17_fu_228_p2);
    sensitive << ( zext_ln4_reg_280 );
    sensitive << ( zext_ln16_1_fu_214_p1 );

    SC_METHOD(thread_add_ln19_1_fu_192_p2);
    sensitive << ( zext_ln17_reg_275 );
    sensitive << ( zext_ln16_fu_176_p1 );

    SC_METHOD(thread_add_ln19_fu_250_p2);
    sensitive << ( trunc_ln13_fu_246_p1 );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_11001);

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state4_pp0_stage0_iter1);

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state3);
    sensitive << ( icmp_ln13_fu_202_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( icmp_ln11_fu_164_p2 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( icmp_ln11_fu_164_p2 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_dct_coeff_table_address0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( zext_ln16_2_fu_223_p1 );

    SC_METHOD(thread_dct_coeff_table_ce0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_dst_address0);
    sensitive << ( dst_addr_reg_299 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_dst_ce0);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_dst_d0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( add_ln19_fu_250_p2 );

    SC_METHOD(thread_dst_we0);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_icmp_ln11_fu_164_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( k_0_reg_106 );

    SC_METHOD(thread_icmp_ln13_fu_202_p2);
    sensitive << ( n_0_reg_117 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_k_fu_170_p2);
    sensitive << ( k_0_reg_106 );

    SC_METHOD(thread_n_fu_208_p2);
    sensitive << ( n_0_reg_117 );

    SC_METHOD(thread_src_address0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( zext_ln17_1_fu_233_p1 );

    SC_METHOD(thread_src_ce0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_tmp_4_fu_140_p3);
    sensitive << ( dst_offset );

    SC_METHOD(thread_tmp_5_fu_152_p3);
    sensitive << ( src_offset );

    SC_METHOD(thread_tmp_8_fu_180_p3);
    sensitive << ( k_0_reg_106 );

    SC_METHOD(thread_trunc_ln13_fu_246_p1);
    sensitive << ( tmp_0_reg_128 );

    SC_METHOD(thread_zext_ln16_1_fu_214_p1);
    sensitive << ( n_0_reg_117 );

    SC_METHOD(thread_zext_ln16_2_fu_223_p1);
    sensitive << ( add_ln16_fu_218_p2 );

    SC_METHOD(thread_zext_ln16_fu_176_p1);
    sensitive << ( k_0_reg_106 );

    SC_METHOD(thread_zext_ln17_1_fu_233_p1);
    sensitive << ( add_ln17_fu_228_p2 );

    SC_METHOD(thread_zext_ln17_fu_148_p1);
    sensitive << ( tmp_4_fu_140_p3 );

    SC_METHOD(thread_zext_ln19_1_fu_197_p1);
    sensitive << ( add_ln19_1_fu_192_p2 );

    SC_METHOD(thread_zext_ln19_fu_188_p1);
    sensitive << ( tmp_8_fu_180_p3 );

    SC_METHOD(thread_zext_ln4_fu_160_p1);
    sensitive << ( tmp_5_fu_152_p3 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( icmp_ln11_fu_164_p2 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln13_fu_202_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0_subdone );

    ap_CS_fsm = "0001";
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "dct_1d2_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, src_address0, "(port)src_address0");
    sc_trace(mVcdFile, src_ce0, "(port)src_ce0");
    sc_trace(mVcdFile, src_q0, "(port)src_q0");
    sc_trace(mVcdFile, src_offset, "(port)src_offset");
    sc_trace(mVcdFile, dst_address0, "(port)dst_address0");
    sc_trace(mVcdFile, dst_ce0, "(port)dst_ce0");
    sc_trace(mVcdFile, dst_we0, "(port)dst_we0");
    sc_trace(mVcdFile, dst_d0, "(port)dst_d0");
    sc_trace(mVcdFile, dst_offset, "(port)dst_offset");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, dct_coeff_table_address0, "dct_coeff_table_address0");
    sc_trace(mVcdFile, dct_coeff_table_ce0, "dct_coeff_table_ce0");
    sc_trace(mVcdFile, dct_coeff_table_q0, "dct_coeff_table_q0");
    sc_trace(mVcdFile, n_0_reg_117, "n_0_reg_117");
    sc_trace(mVcdFile, tmp_0_reg_128, "tmp_0_reg_128");
    sc_trace(mVcdFile, zext_ln17_fu_148_p1, "zext_ln17_fu_148_p1");
    sc_trace(mVcdFile, zext_ln17_reg_275, "zext_ln17_reg_275");
    sc_trace(mVcdFile, zext_ln4_fu_160_p1, "zext_ln4_fu_160_p1");
    sc_trace(mVcdFile, zext_ln4_reg_280, "zext_ln4_reg_280");
    sc_trace(mVcdFile, icmp_ln11_fu_164_p2, "icmp_ln11_fu_164_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, k_fu_170_p2, "k_fu_170_p2");
    sc_trace(mVcdFile, k_reg_289, "k_reg_289");
    sc_trace(mVcdFile, zext_ln19_fu_188_p1, "zext_ln19_fu_188_p1");
    sc_trace(mVcdFile, zext_ln19_reg_294, "zext_ln19_reg_294");
    sc_trace(mVcdFile, dst_addr_reg_299, "dst_addr_reg_299");
    sc_trace(mVcdFile, icmp_ln13_fu_202_p2, "icmp_ln13_fu_202_p2");
    sc_trace(mVcdFile, icmp_ln13_reg_304, "icmp_ln13_reg_304");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter0, "ap_block_state3_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state4_pp0_stage0_iter1, "ap_block_state4_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, n_fu_208_p2, "n_fu_208_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, grp_fu_267_p3, "grp_fu_267_p3");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state3, "ap_condition_pp0_exit_iter0_state3");
    sc_trace(mVcdFile, k_0_reg_106, "k_0_reg_106");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, zext_ln19_1_fu_197_p1, "zext_ln19_1_fu_197_p1");
    sc_trace(mVcdFile, zext_ln16_2_fu_223_p1, "zext_ln16_2_fu_223_p1");
    sc_trace(mVcdFile, zext_ln17_1_fu_233_p1, "zext_ln17_1_fu_233_p1");
    sc_trace(mVcdFile, tmp_4_fu_140_p3, "tmp_4_fu_140_p3");
    sc_trace(mVcdFile, tmp_5_fu_152_p3, "tmp_5_fu_152_p3");
    sc_trace(mVcdFile, tmp_8_fu_180_p3, "tmp_8_fu_180_p3");
    sc_trace(mVcdFile, zext_ln16_fu_176_p1, "zext_ln16_fu_176_p1");
    sc_trace(mVcdFile, add_ln19_1_fu_192_p2, "add_ln19_1_fu_192_p2");
    sc_trace(mVcdFile, zext_ln16_1_fu_214_p1, "zext_ln16_1_fu_214_p1");
    sc_trace(mVcdFile, add_ln16_fu_218_p2, "add_ln16_fu_218_p2");
    sc_trace(mVcdFile, add_ln17_fu_228_p2, "add_ln17_fu_228_p2");
    sc_trace(mVcdFile, trunc_ln13_fu_246_p1, "trunc_ln13_fu_246_p1");
    sc_trace(mVcdFile, add_ln19_fu_250_p2, "add_ln19_fu_250_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
}

dct_1d2::~dct_1d2() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete dct_coeff_table_U;
    delete dct_mac_muladd_15cud_U1;
}

void dct_1d2::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state3.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    esl_seteq<1,1,1>(icmp_ln11_fu_164_p2.read(), ap_const_lv1_0))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state3.read()))) {
            ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state3.read() ^ ap_const_logic_1);
        } else if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    esl_seteq<1,1,1>(icmp_ln11_fu_164_p2.read(), ap_const_lv1_0))) {
            ap_enable_reg_pp0_iter1 = ap_const_logic_0;
        }
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        k_0_reg_106 = k_reg_289.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        k_0_reg_106 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln13_fu_202_p2.read()))) {
        n_0_reg_117 = n_fu_208_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln11_fu_164_p2.read(), ap_const_lv1_0))) {
        n_0_reg_117 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln13_reg_304.read()))) {
        tmp_0_reg_128 = grp_fu_267_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln11_fu_164_p2.read(), ap_const_lv1_0))) {
        tmp_0_reg_128 = ap_const_lv32_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln11_fu_164_p2.read(), ap_const_lv1_0))) {
        dst_addr_reg_299 =  (sc_lv<6>) (zext_ln19_1_fu_197_p1.read());
        zext_ln19_reg_294 = zext_ln19_fu_188_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        icmp_ln13_reg_304 = icmp_ln13_fu_202_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        k_reg_289 = k_fu_170_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        zext_ln17_reg_275 = zext_ln17_fu_148_p1.read();
        zext_ln4_reg_280 = zext_ln4_fu_160_p1.read();
    }
}

void dct_1d2::thread_add_ln16_fu_218_p2() {
    add_ln16_fu_218_p2 = (!zext_ln19_reg_294.read().is_01() || !zext_ln16_1_fu_214_p1.read().is_01())? sc_lv<8>(): (sc_biguint<8>(zext_ln19_reg_294.read()) + sc_biguint<8>(zext_ln16_1_fu_214_p1.read()));
}

void dct_1d2::thread_add_ln17_fu_228_p2() {
    add_ln17_fu_228_p2 = (!zext_ln4_reg_280.read().is_01() || !zext_ln16_1_fu_214_p1.read().is_01())? sc_lv<8>(): (sc_biguint<8>(zext_ln4_reg_280.read()) + sc_biguint<8>(zext_ln16_1_fu_214_p1.read()));
}

void dct_1d2::thread_add_ln19_1_fu_192_p2() {
    add_ln19_1_fu_192_p2 = (!zext_ln16_fu_176_p1.read().is_01() || !zext_ln17_reg_275.read().is_01())? sc_lv<8>(): (sc_biguint<8>(zext_ln16_fu_176_p1.read()) + sc_biguint<8>(zext_ln17_reg_275.read()));
}

void dct_1d2::thread_add_ln19_fu_250_p2() {
    add_ln19_fu_250_p2 = (!ap_const_lv29_1000.is_01() || !trunc_ln13_fu_246_p1.read().is_01())? sc_lv<29>(): (sc_biguint<29>(ap_const_lv29_1000) + sc_biguint<29>(trunc_ln13_fu_246_p1.read()));
}

void dct_1d2::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[2];
}

void dct_1d2::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void dct_1d2::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void dct_1d2::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[3];
}

void dct_1d2::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void dct_1d2::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void dct_1d2::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void dct_1d2::thread_ap_block_state3_pp0_stage0_iter0() {
    ap_block_state3_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void dct_1d2::thread_ap_block_state4_pp0_stage0_iter1() {
    ap_block_state4_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void dct_1d2::thread_ap_condition_pp0_exit_iter0_state3() {
    if (esl_seteq<1,1,1>(icmp_ln13_fu_202_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state3 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state3 = ap_const_logic_0;
    }
}

void dct_1d2::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(icmp_ln11_fu_164_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void dct_1d2::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void dct_1d2::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void dct_1d2::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void dct_1d2::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln11_fu_164_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void dct_1d2::thread_dct_coeff_table_address0() {
    dct_coeff_table_address0 =  (sc_lv<6>) (zext_ln16_2_fu_223_p1.read());
}

void dct_1d2::thread_dct_coeff_table_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        dct_coeff_table_ce0 = ap_const_logic_1;
    } else {
        dct_coeff_table_ce0 = ap_const_logic_0;
    }
}

void dct_1d2::thread_dst_address0() {
    dst_address0 = dst_addr_reg_299.read();
}

void dct_1d2::thread_dst_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        dst_ce0 = ap_const_logic_1;
    } else {
        dst_ce0 = ap_const_logic_0;
    }
}

void dct_1d2::thread_dst_d0() {
    dst_d0 = add_ln19_fu_250_p2.read().range(28, 13);
}

void dct_1d2::thread_dst_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        dst_we0 = ap_const_logic_1;
    } else {
        dst_we0 = ap_const_logic_0;
    }
}

void dct_1d2::thread_icmp_ln11_fu_164_p2() {
    icmp_ln11_fu_164_p2 = (!k_0_reg_106.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(k_0_reg_106.read() == ap_const_lv4_8);
}

void dct_1d2::thread_icmp_ln13_fu_202_p2() {
    icmp_ln13_fu_202_p2 = (!n_0_reg_117.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(n_0_reg_117.read() == ap_const_lv4_8);
}

void dct_1d2::thread_k_fu_170_p2() {
    k_fu_170_p2 = (!k_0_reg_106.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(k_0_reg_106.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void dct_1d2::thread_n_fu_208_p2() {
    n_fu_208_p2 = (!n_0_reg_117.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(n_0_reg_117.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void dct_1d2::thread_src_address0() {
    src_address0 =  (sc_lv<6>) (zext_ln17_1_fu_233_p1.read());
}

void dct_1d2::thread_src_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        src_ce0 = ap_const_logic_1;
    } else {
        src_ce0 = ap_const_logic_0;
    }
}

void dct_1d2::thread_tmp_4_fu_140_p3() {
    tmp_4_fu_140_p3 = esl_concat<4,3>(dst_offset.read(), ap_const_lv3_0);
}

void dct_1d2::thread_tmp_5_fu_152_p3() {
    tmp_5_fu_152_p3 = esl_concat<4,3>(src_offset.read(), ap_const_lv3_0);
}

void dct_1d2::thread_tmp_8_fu_180_p3() {
    tmp_8_fu_180_p3 = esl_concat<4,3>(k_0_reg_106.read(), ap_const_lv3_0);
}

void dct_1d2::thread_trunc_ln13_fu_246_p1() {
    trunc_ln13_fu_246_p1 = tmp_0_reg_128.read().range(29-1, 0);
}

void dct_1d2::thread_zext_ln16_1_fu_214_p1() {
    zext_ln16_1_fu_214_p1 = esl_zext<8,4>(n_0_reg_117.read());
}

void dct_1d2::thread_zext_ln16_2_fu_223_p1() {
    zext_ln16_2_fu_223_p1 = esl_zext<64,8>(add_ln16_fu_218_p2.read());
}

void dct_1d2::thread_zext_ln16_fu_176_p1() {
    zext_ln16_fu_176_p1 = esl_zext<8,4>(k_0_reg_106.read());
}

void dct_1d2::thread_zext_ln17_1_fu_233_p1() {
    zext_ln17_1_fu_233_p1 = esl_zext<64,8>(add_ln17_fu_228_p2.read());
}

void dct_1d2::thread_zext_ln17_fu_148_p1() {
    zext_ln17_fu_148_p1 = esl_zext<8,7>(tmp_4_fu_140_p3.read());
}

void dct_1d2::thread_zext_ln19_1_fu_197_p1() {
    zext_ln19_1_fu_197_p1 = esl_zext<64,8>(add_ln19_1_fu_192_p2.read());
}

void dct_1d2::thread_zext_ln19_fu_188_p1() {
    zext_ln19_fu_188_p1 = esl_zext<8,7>(tmp_8_fu_180_p3.read());
}

void dct_1d2::thread_zext_ln4_fu_160_p1() {
    zext_ln4_fu_160_p1 = esl_zext<8,7>(tmp_5_fu_152_p3.read());
}

void dct_1d2::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln11_fu_164_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 4 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln13_fu_202_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln13_fu_202_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm = "XXXX";
            break;
    }
}

}

