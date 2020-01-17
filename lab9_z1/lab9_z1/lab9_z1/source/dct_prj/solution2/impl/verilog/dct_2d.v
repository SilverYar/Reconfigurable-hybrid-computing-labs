// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dct_2d (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_block_address0,
        in_block_ce0,
        in_block_q0,
        in_block_address1,
        in_block_ce1,
        in_block_q1,
        out_block_address0,
        out_block_ce0,
        out_block_we0,
        out_block_d0
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_pp0_stage0 = 9'd8;
parameter    ap_ST_fsm_state8 = 9'd16;
parameter    ap_ST_fsm_state9 = 9'd32;
parameter    ap_ST_fsm_state10 = 9'd64;
parameter    ap_ST_fsm_pp1_stage0 = 9'd128;
parameter    ap_ST_fsm_state15 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] in_block_address0;
output   in_block_ce0;
input  [15:0] in_block_q0;
output  [5:0] in_block_address1;
output   in_block_ce1;
input  [15:0] in_block_q1;
output  [5:0] out_block_address0;
output   out_block_ce0;
output   out_block_we0;
output  [15:0] out_block_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_block_ce0;
reg in_block_ce1;
reg out_block_ce0;
reg out_block_we0;

(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] indvar_flatten_reg_149;
reg   [3:0] j_0_reg_160;
reg   [3:0] i_1_reg_171;
reg   [6:0] indvar_flatten11_reg_194;
reg   [3:0] j_1_reg_205;
reg   [3:0] i_3_reg_216;
wire   [0:0] icmp_ln32_fu_256_p2;
wire    ap_CS_fsm_state2;
wire   [3:0] i_fu_262_p2;
reg   [3:0] i_reg_476;
wire   [0:0] icmp_ln37_fu_268_p2;
reg   [0:0] icmp_ln37_reg_481;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state4_pp0_stage0_iter0;
wire    ap_block_state5_pp0_stage0_iter1;
wire    ap_block_state6_pp0_stage0_iter2;
wire    ap_block_state7_pp0_stage0_iter3;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln37_reg_481_pp0_iter1_reg;
reg   [0:0] icmp_ln37_reg_481_pp0_iter2_reg;
wire   [6:0] add_ln37_fu_274_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [3:0] select_ln40_fu_292_p3;
reg   [3:0] select_ln40_reg_490;
reg   [3:0] select_ln40_reg_490_pp0_iter1_reg;
reg   [3:0] select_ln40_reg_490_pp0_iter2_reg;
wire   [3:0] select_ln40_1_fu_300_p3;
reg   [3:0] select_ln40_1_reg_496;
reg   [3:0] select_ln40_1_reg_496_pp0_iter1_reg;
reg   [3:0] select_ln40_1_reg_496_pp0_iter2_reg;
wire   [3:0] i_4_fu_308_p2;
wire   [15:0] row_outbuf_q0;
reg   [15:0] row_outbuf_load_reg_513;
wire   [0:0] icmp_ln43_fu_364_p2;
wire    ap_CS_fsm_state9;
wire   [3:0] i_5_fu_370_p2;
reg   [3:0] i_5_reg_522;
wire   [0:0] icmp_ln48_fu_376_p2;
reg   [0:0] icmp_ln48_reg_527;
wire    ap_CS_fsm_pp1_stage0;
wire    ap_block_state11_pp1_stage0_iter0;
wire    ap_block_state12_pp1_stage0_iter1;
wire    ap_block_state13_pp1_stage0_iter2;
wire    ap_block_state14_pp1_stage0_iter3;
wire    ap_block_pp1_stage0_11001;
reg   [0:0] icmp_ln48_reg_527_pp1_iter1_reg;
reg   [0:0] icmp_ln48_reg_527_pp1_iter2_reg;
wire   [6:0] add_ln48_fu_382_p2;
reg    ap_enable_reg_pp1_iter0;
wire   [3:0] select_ln51_fu_400_p3;
reg   [3:0] select_ln51_reg_536;
reg   [3:0] select_ln51_reg_536_pp1_iter1_reg;
reg   [3:0] select_ln51_reg_536_pp1_iter2_reg;
wire   [3:0] select_ln51_1_fu_408_p3;
reg   [3:0] select_ln51_1_reg_542;
reg   [3:0] select_ln51_1_reg_542_pp1_iter1_reg;
reg   [3:0] select_ln51_1_reg_542_pp1_iter2_reg;
wire   [3:0] i_6_fu_416_p2;
wire   [15:0] col_outbuf_q0;
reg   [15:0] col_outbuf_load_reg_559;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state4;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
wire    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter0_state11;
reg    ap_enable_reg_pp1_iter1;
reg    ap_enable_reg_pp1_iter2;
reg    ap_enable_reg_pp1_iter3;
reg   [5:0] row_outbuf_address0;
reg    row_outbuf_ce0;
reg    row_outbuf_we0;
reg   [5:0] col_outbuf_address0;
reg    col_outbuf_ce0;
reg    col_outbuf_we0;
reg   [5:0] col_inbuf_address0;
reg    col_inbuf_ce0;
reg    col_inbuf_we0;
wire   [15:0] col_inbuf_q0;
reg    col_inbuf_ce1;
wire   [15:0] col_inbuf_q1;
wire    grp_dct_1d2_fu_227_ap_start;
wire    grp_dct_1d2_fu_227_ap_done;
wire    grp_dct_1d2_fu_227_ap_idle;
wire    grp_dct_1d2_fu_227_ap_ready;
wire   [5:0] grp_dct_1d2_fu_227_src_address0;
wire    grp_dct_1d2_fu_227_src_ce0;
reg   [15:0] grp_dct_1d2_fu_227_src_q0;
wire   [5:0] grp_dct_1d2_fu_227_src_address1;
wire    grp_dct_1d2_fu_227_src_ce1;
reg   [15:0] grp_dct_1d2_fu_227_src_q1;
reg   [3:0] grp_dct_1d2_fu_227_src_offset;
wire   [5:0] grp_dct_1d2_fu_227_dst_address0;
wire    grp_dct_1d2_fu_227_dst_ce0;
wire    grp_dct_1d2_fu_227_dst_we0;
wire   [15:0] grp_dct_1d2_fu_227_dst_d0;
reg   [3:0] grp_dct_1d2_fu_227_dst_offset;
reg   [3:0] i_0_reg_137;
wire    ap_CS_fsm_state3;
reg   [3:0] ap_phi_mux_j_0_phi_fu_164_p4;
wire    ap_block_pp0_stage0;
reg   [3:0] i_2_reg_182;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state8;
reg   [3:0] ap_phi_mux_j_1_phi_fu_209_p4;
wire    ap_block_pp1_stage0;
reg    grp_dct_1d2_fu_227_ap_start_reg;
wire   [63:0] zext_ln40_4_fu_334_p1;
wire   [63:0] zext_ln40_5_fu_359_p1;
wire   [63:0] zext_ln51_5_fu_442_p1;
wire   [63:0] zext_ln51_3_fu_467_p1;
wire   [0:0] icmp_ln39_fu_286_p2;
wire   [3:0] j_fu_280_p2;
wire   [6:0] tmp_1_fu_317_p3;
wire   [7:0] zext_ln40_fu_314_p1;
wire   [7:0] zext_ln40_3_fu_324_p1;
wire   [7:0] add_ln40_fu_328_p2;
wire   [6:0] tmp_fu_339_p3;
wire   [7:0] zext_ln40_2_fu_350_p1;
wire   [7:0] zext_ln40_1_fu_346_p1;
wire   [7:0] add_ln40_1_fu_353_p2;
wire   [0:0] icmp_ln50_fu_394_p2;
wire   [3:0] j_2_fu_388_p2;
wire   [6:0] tmp_3_fu_425_p3;
wire   [7:0] zext_ln51_fu_422_p1;
wire   [7:0] zext_ln51_4_fu_432_p1;
wire   [7:0] add_ln51_1_fu_436_p2;
wire   [6:0] tmp_2_fu_447_p3;
wire   [7:0] zext_ln51_2_fu_458_p1;
wire   [7:0] zext_ln51_1_fu_454_p1;
wire   [7:0] add_ln51_fu_461_p2;
wire    ap_CS_fsm_state15;
reg   [8:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter2 = 1'b0;
#0 ap_enable_reg_pp1_iter3 = 1'b0;
#0 grp_dct_1d2_fu_227_ap_start_reg = 1'b0;
end

dct_2d_row_outbuf #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
row_outbuf_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(row_outbuf_address0),
    .ce0(row_outbuf_ce0),
    .we0(row_outbuf_we0),
    .d0(grp_dct_1d2_fu_227_dst_d0),
    .q0(row_outbuf_q0)
);

dct_2d_row_outbuf #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
col_outbuf_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(col_outbuf_address0),
    .ce0(col_outbuf_ce0),
    .we0(col_outbuf_we0),
    .d0(grp_dct_1d2_fu_227_dst_d0),
    .q0(col_outbuf_q0)
);

dct_2d_col_inbuf #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
col_inbuf_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(col_inbuf_address0),
    .ce0(col_inbuf_ce0),
    .we0(col_inbuf_we0),
    .d0(row_outbuf_load_reg_513),
    .q0(col_inbuf_q0),
    .address1(grp_dct_1d2_fu_227_src_address1),
    .ce1(col_inbuf_ce1),
    .q1(col_inbuf_q1)
);

dct_1d2 grp_dct_1d2_fu_227(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_dct_1d2_fu_227_ap_start),
    .ap_done(grp_dct_1d2_fu_227_ap_done),
    .ap_idle(grp_dct_1d2_fu_227_ap_idle),
    .ap_ready(grp_dct_1d2_fu_227_ap_ready),
    .src_address0(grp_dct_1d2_fu_227_src_address0),
    .src_ce0(grp_dct_1d2_fu_227_src_ce0),
    .src_q0(grp_dct_1d2_fu_227_src_q0),
    .src_address1(grp_dct_1d2_fu_227_src_address1),
    .src_ce1(grp_dct_1d2_fu_227_src_ce1),
    .src_q1(grp_dct_1d2_fu_227_src_q1),
    .src_offset(grp_dct_1d2_fu_227_src_offset),
    .dst_address0(grp_dct_1d2_fu_227_dst_address0),
    .dst_ce0(grp_dct_1d2_fu_227_dst_ce0),
    .dst_we0(grp_dct_1d2_fu_227_dst_we0),
    .dst_d0(grp_dct_1d2_fu_227_dst_d0),
    .dst_offset(grp_dct_1d2_fu_227_dst_offset)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state4) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((icmp_ln32_fu_256_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state4)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state4);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end else if (((icmp_ln32_fu_256_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp1_exit_iter0_state11) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_subdone))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_fu_364_p2 == 1'd1))) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp1_exit_iter0_state11)) begin
                ap_enable_reg_pp1_iter1 <= (1'b1 ^ ap_condition_pp1_exit_iter0_state11);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter2 <= ap_enable_reg_pp1_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter3 <= ap_enable_reg_pp1_iter2;
        end else if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_fu_364_p2 == 1'd1))) begin
            ap_enable_reg_pp1_iter3 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dct_1d2_fu_227_ap_start_reg <= 1'b0;
    end else begin
        if ((((icmp_ln32_fu_256_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln43_fu_364_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9)))) begin
            grp_dct_1d2_fu_227_ap_start_reg <= 1'b1;
        end else if ((grp_dct_1d2_fu_227_ap_ready == 1'b1)) begin
            grp_dct_1d2_fu_227_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((grp_dct_1d2_fu_227_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_reg_137 <= i_reg_476;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_137 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln32_fu_256_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_1_reg_171 <= 4'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln37_fu_268_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_reg_171 <= i_4_fu_308_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i_2_reg_182 <= 4'd0;
    end else if (((grp_dct_1d2_fu_227_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        i_2_reg_182 <= i_5_reg_522;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_fu_364_p2 == 1'd1))) begin
        i_3_reg_216 <= 4'd0;
    end else if (((icmp_ln48_fu_376_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        i_3_reg_216 <= i_6_fu_416_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_fu_364_p2 == 1'd1))) begin
        indvar_flatten11_reg_194 <= 7'd0;
    end else if (((icmp_ln48_fu_376_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        indvar_flatten11_reg_194 <= add_ln48_fu_382_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln32_fu_256_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        indvar_flatten_reg_149 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln37_fu_268_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_reg_149 <= add_ln37_fu_274_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln32_fu_256_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        j_0_reg_160 <= 4'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln37_reg_481 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        j_0_reg_160 <= select_ln40_1_reg_496;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_fu_364_p2 == 1'd1))) begin
        j_1_reg_205 <= 4'd0;
    end else if (((icmp_ln48_reg_527 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        j_1_reg_205 <= select_ln51_1_reg_542;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln48_reg_527_pp1_iter1_reg == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        col_outbuf_load_reg_559 <= col_outbuf_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        i_5_reg_522 <= i_5_fu_370_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_476 <= i_fu_262_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln37_reg_481 <= icmp_ln37_fu_268_p2;
        icmp_ln37_reg_481_pp0_iter1_reg <= icmp_ln37_reg_481;
        select_ln40_1_reg_496_pp0_iter1_reg <= select_ln40_1_reg_496;
        select_ln40_reg_490_pp0_iter1_reg <= select_ln40_reg_490;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln37_reg_481_pp0_iter2_reg <= icmp_ln37_reg_481_pp0_iter1_reg;
        select_ln40_1_reg_496_pp0_iter2_reg <= select_ln40_1_reg_496_pp0_iter1_reg;
        select_ln40_reg_490_pp0_iter2_reg <= select_ln40_reg_490_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        icmp_ln48_reg_527 <= icmp_ln48_fu_376_p2;
        icmp_ln48_reg_527_pp1_iter1_reg <= icmp_ln48_reg_527;
        select_ln51_1_reg_542_pp1_iter1_reg <= select_ln51_1_reg_542;
        select_ln51_reg_536_pp1_iter1_reg <= select_ln51_reg_536;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp1_stage0_11001)) begin
        icmp_ln48_reg_527_pp1_iter2_reg <= icmp_ln48_reg_527_pp1_iter1_reg;
        select_ln51_1_reg_542_pp1_iter2_reg <= select_ln51_1_reg_542_pp1_iter1_reg;
        select_ln51_reg_536_pp1_iter2_reg <= select_ln51_reg_536_pp1_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln37_reg_481_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        row_outbuf_load_reg_513 <= row_outbuf_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln37_fu_268_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln40_1_reg_496 <= select_ln40_1_fu_300_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln37_fu_268_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln40_reg_490 <= select_ln40_fu_292_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln48_fu_376_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        select_ln51_1_reg_542 <= select_ln51_1_fu_408_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln48_fu_376_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        select_ln51_reg_536 <= select_ln51_fu_400_p3;
    end
end

always @ (*) begin
    if ((icmp_ln37_fu_268_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state4 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state4 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln48_fu_376_p2 == 1'd1)) begin
        ap_condition_pp1_exit_iter0_state11 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter0_state11 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter3 == 1'b0) & (ap_enable_reg_pp1_iter2 == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln37_reg_481 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_j_0_phi_fu_164_p4 = select_ln40_1_reg_496;
    end else begin
        ap_phi_mux_j_0_phi_fu_164_p4 = j_0_reg_160;
    end
end

always @ (*) begin
    if (((icmp_ln48_reg_527 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_j_1_phi_fu_209_p4 = select_ln51_1_reg_542;
    end else begin
        ap_phi_mux_j_1_phi_fu_209_p4 = j_1_reg_205;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        col_inbuf_address0 = zext_ln40_5_fu_359_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        col_inbuf_address0 = grp_dct_1d2_fu_227_src_address0;
    end else begin
        col_inbuf_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        col_inbuf_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        col_inbuf_ce0 = grp_dct_1d2_fu_227_src_ce0;
    end else begin
        col_inbuf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        col_inbuf_ce1 = grp_dct_1d2_fu_227_src_ce1;
    end else begin
        col_inbuf_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln37_reg_481_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        col_inbuf_we0 = 1'b1;
    end else begin
        col_inbuf_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        col_outbuf_address0 = zext_ln51_5_fu_442_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        col_outbuf_address0 = grp_dct_1d2_fu_227_dst_address0;
    end else begin
        col_outbuf_address0 = 'bx;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        col_outbuf_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        col_outbuf_ce0 = grp_dct_1d2_fu_227_dst_ce0;
    end else begin
        col_outbuf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        col_outbuf_we0 = grp_dct_1d2_fu_227_dst_we0;
    end else begin
        col_outbuf_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_dct_1d2_fu_227_dst_offset = i_2_reg_182;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_dct_1d2_fu_227_dst_offset = i_0_reg_137;
    end else begin
        grp_dct_1d2_fu_227_dst_offset = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_dct_1d2_fu_227_src_offset = i_2_reg_182;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_dct_1d2_fu_227_src_offset = i_0_reg_137;
    end else begin
        grp_dct_1d2_fu_227_src_offset = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_dct_1d2_fu_227_src_q0 = col_inbuf_q0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_dct_1d2_fu_227_src_q0 = in_block_q0;
    end else begin
        grp_dct_1d2_fu_227_src_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_dct_1d2_fu_227_src_q1 = col_inbuf_q1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_dct_1d2_fu_227_src_q1 = in_block_q1;
    end else begin
        grp_dct_1d2_fu_227_src_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        in_block_ce0 = grp_dct_1d2_fu_227_src_ce0;
    end else begin
        in_block_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        in_block_ce1 = grp_dct_1d2_fu_227_src_ce1;
    end else begin
        in_block_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter3 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        out_block_ce0 = 1'b1;
    end else begin
        out_block_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln48_reg_527_pp1_iter2_reg == 1'd0) & (ap_enable_reg_pp1_iter3 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        out_block_we0 = 1'b1;
    end else begin
        out_block_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        row_outbuf_address0 = zext_ln40_4_fu_334_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        row_outbuf_address0 = grp_dct_1d2_fu_227_dst_address0;
    end else begin
        row_outbuf_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        row_outbuf_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        row_outbuf_ce0 = grp_dct_1d2_fu_227_dst_ce0;
    end else begin
        row_outbuf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        row_outbuf_we0 = grp_dct_1d2_fu_227_dst_we0;
    end else begin
        row_outbuf_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln32_fu_256_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_dct_1d2_fu_227_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln37_fu_268_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((icmp_ln37_fu_268_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_fu_364_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((grp_dct_1d2_fu_227_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_pp1_stage0 : begin
            if ((~((ap_enable_reg_pp1_iter0 == 1'b1) & (ap_enable_reg_pp1_iter1 == 1'b0) & (1'b0 == ap_block_pp1_stage0_subdone) & (icmp_ln48_fu_376_p2 == 1'd1)) & ~((ap_enable_reg_pp1_iter2 == 1'b0) & (ap_enable_reg_pp1_iter3 == 1'b1) & (1'b0 == ap_block_pp1_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if ((((ap_enable_reg_pp1_iter2 == 1'b0) & (ap_enable_reg_pp1_iter3 == 1'b1) & (1'b0 == ap_block_pp1_stage0_subdone)) | ((ap_enable_reg_pp1_iter0 == 1'b1) & (ap_enable_reg_pp1_iter1 == 1'b0) & (1'b0 == ap_block_pp1_stage0_subdone) & (icmp_ln48_fu_376_p2 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln37_fu_274_p2 = (indvar_flatten_reg_149 + 7'd1);

assign add_ln40_1_fu_353_p2 = (zext_ln40_2_fu_350_p1 + zext_ln40_1_fu_346_p1);

assign add_ln40_fu_328_p2 = (zext_ln40_fu_314_p1 + zext_ln40_3_fu_324_p1);

assign add_ln48_fu_382_p2 = (indvar_flatten11_reg_194 + 7'd1);

assign add_ln51_1_fu_436_p2 = (zext_ln51_fu_422_p1 + zext_ln51_4_fu_432_p1);

assign add_ln51_fu_461_p2 = (zext_ln51_2_fu_458_p1 + zext_ln51_1_fu_454_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd5];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state11_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp1_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp1_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp1_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign grp_dct_1d2_fu_227_ap_start = grp_dct_1d2_fu_227_ap_start_reg;

assign i_4_fu_308_p2 = (select_ln40_fu_292_p3 + 4'd1);

assign i_5_fu_370_p2 = (i_2_reg_182 + 4'd1);

assign i_6_fu_416_p2 = (select_ln51_fu_400_p3 + 4'd1);

assign i_fu_262_p2 = (i_0_reg_137 + 4'd1);

assign icmp_ln32_fu_256_p2 = ((i_0_reg_137 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln37_fu_268_p2 = ((indvar_flatten_reg_149 == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln39_fu_286_p2 = ((i_1_reg_171 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln43_fu_364_p2 = ((i_2_reg_182 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln48_fu_376_p2 = ((indvar_flatten11_reg_194 == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln50_fu_394_p2 = ((i_3_reg_216 == 4'd8) ? 1'b1 : 1'b0);

assign in_block_address0 = grp_dct_1d2_fu_227_src_address0;

assign in_block_address1 = grp_dct_1d2_fu_227_src_address1;

assign j_2_fu_388_p2 = (ap_phi_mux_j_1_phi_fu_209_p4 + 4'd1);

assign j_fu_280_p2 = (ap_phi_mux_j_0_phi_fu_164_p4 + 4'd1);

assign out_block_address0 = zext_ln51_3_fu_467_p1;

assign out_block_d0 = col_outbuf_load_reg_559;

assign select_ln40_1_fu_300_p3 = ((icmp_ln39_fu_286_p2[0:0] === 1'b1) ? j_fu_280_p2 : ap_phi_mux_j_0_phi_fu_164_p4);

assign select_ln40_fu_292_p3 = ((icmp_ln39_fu_286_p2[0:0] === 1'b1) ? 4'd0 : i_1_reg_171);

assign select_ln51_1_fu_408_p3 = ((icmp_ln50_fu_394_p2[0:0] === 1'b1) ? j_2_fu_388_p2 : ap_phi_mux_j_1_phi_fu_209_p4);

assign select_ln51_fu_400_p3 = ((icmp_ln50_fu_394_p2[0:0] === 1'b1) ? 4'd0 : i_3_reg_216);

assign tmp_1_fu_317_p3 = {{select_ln40_reg_490}, {3'd0}};

assign tmp_2_fu_447_p3 = {{select_ln51_1_reg_542_pp1_iter2_reg}, {3'd0}};

assign tmp_3_fu_425_p3 = {{select_ln51_reg_536}, {3'd0}};

assign tmp_fu_339_p3 = {{select_ln40_1_reg_496_pp0_iter2_reg}, {3'd0}};

assign zext_ln40_1_fu_346_p1 = tmp_fu_339_p3;

assign zext_ln40_2_fu_350_p1 = select_ln40_reg_490_pp0_iter2_reg;

assign zext_ln40_3_fu_324_p1 = tmp_1_fu_317_p3;

assign zext_ln40_4_fu_334_p1 = add_ln40_fu_328_p2;

assign zext_ln40_5_fu_359_p1 = add_ln40_1_fu_353_p2;

assign zext_ln40_fu_314_p1 = select_ln40_1_reg_496;

assign zext_ln51_1_fu_454_p1 = tmp_2_fu_447_p3;

assign zext_ln51_2_fu_458_p1 = select_ln51_reg_536_pp1_iter2_reg;

assign zext_ln51_3_fu_467_p1 = add_ln51_fu_461_p2;

assign zext_ln51_4_fu_432_p1 = tmp_3_fu_425_p3;

assign zext_ln51_5_fu_442_p1 = add_ln51_1_fu_436_p2;

assign zext_ln51_fu_422_p1 = select_ln51_1_reg_542;

endmodule //dct_2d