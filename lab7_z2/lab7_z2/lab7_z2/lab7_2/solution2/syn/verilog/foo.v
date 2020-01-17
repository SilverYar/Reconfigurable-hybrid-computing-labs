// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="foo,hls_ip_2019_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12t-csg325-1Q,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=9.702000,HLS_SYN_LAT=102,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=33,HLS_SYN_LUT=200,HLS_VERSION=2019_1}" *)

module foo (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in1_address0,
        in1_ce0,
        in1_q0,
        in2_address0,
        in2_ce0,
        in2_q0,
        out_r_address0,
        out_r_ce0,
        out_r_we0,
        out_r_d0
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state4 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] in1_address0;
output   in1_ce0;
input  [31:0] in1_q0;
output  [6:0] in2_address0;
output   in2_ce0;
input  [31:0] in2_q0;
output  [6:0] out_r_address0;
output   out_r_ce0;
output   out_r_we0;
output  [31:0] out_r_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in1_ce0;
reg in2_ce0;
reg out_r_ce0;
reg out_r_we0;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] indvar_flatten_reg_97;
reg   [3:0] i_0_reg_108;
reg   [3:0] j_0_reg_119;
wire   [0:0] icmp_ln3_fu_130_p2;
reg   [0:0] icmp_ln3_reg_229;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] add_ln3_fu_136_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [3:0] select_ln5_1_fu_162_p3;
reg   [3:0] select_ln5_1_reg_238;
wire   [63:0] zext_ln5_3_fu_210_p1;
reg   [63:0] zext_ln5_3_reg_243;
wire   [3:0] j_fu_216_p2;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
reg   [3:0] ap_phi_mux_i_0_phi_fu_112_p4;
wire    ap_block_pp0_stage0;
wire   [0:0] icmp_ln4_fu_148_p2;
wire   [3:0] i_fu_142_p2;
wire   [6:0] tmp_fu_170_p3;
wire   [4:0] tmp_2_fu_182_p3;
wire   [7:0] zext_ln5_1_fu_190_p1;
wire   [7:0] zext_ln5_fu_178_p1;
wire   [3:0] select_ln5_fu_154_p3;
wire   [7:0] add_ln5_1_fu_194_p2;
wire   [7:0] zext_ln5_2_fu_200_p1;
wire   [7:0] add_ln5_2_fu_204_p2;
wire    ap_CS_fsm_state4;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln3_reg_229 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_0_reg_108 <= select_ln5_1_reg_238;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_108 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln3_fu_130_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_reg_97 <= add_ln3_fu_136_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_97 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln3_fu_130_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_0_reg_119 <= j_fu_216_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        j_0_reg_119 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln3_reg_229 <= icmp_ln3_fu_130_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln3_fu_130_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln5_1_reg_238 <= select_ln5_1_fu_162_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln3_fu_130_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        zext_ln5_3_reg_243[7 : 0] <= zext_ln5_3_fu_210_p1[7 : 0];
    end
end

always @ (*) begin
    if ((icmp_ln3_fu_130_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln3_reg_229 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_i_0_phi_fu_112_p4 = select_ln5_1_reg_238;
    end else begin
        ap_phi_mux_i_0_phi_fu_112_p4 = i_0_reg_108;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in1_ce0 = 1'b1;
    end else begin
        in1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in2_ce0 = 1'b1;
    end else begin
        in2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_r_ce0 = 1'b1;
    end else begin
        out_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln3_reg_229 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_r_we0 = 1'b1;
    end else begin
        out_r_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln3_fu_130_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln3_fu_130_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln3_fu_136_p2 = (indvar_flatten_reg_97 + 7'd1);

assign add_ln5_1_fu_194_p2 = (zext_ln5_1_fu_190_p1 + zext_ln5_fu_178_p1);

assign add_ln5_2_fu_204_p2 = (add_ln5_1_fu_194_p2 + zext_ln5_2_fu_200_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign i_fu_142_p2 = (ap_phi_mux_i_0_phi_fu_112_p4 + 4'd1);

assign icmp_ln3_fu_130_p2 = ((indvar_flatten_reg_97 == 7'd100) ? 1'b1 : 1'b0);

assign icmp_ln4_fu_148_p2 = ((j_0_reg_119 == 4'd10) ? 1'b1 : 1'b0);

assign in1_address0 = zext_ln5_3_fu_210_p1;

assign in2_address0 = zext_ln5_3_fu_210_p1;

assign j_fu_216_p2 = (select_ln5_fu_154_p3 + 4'd1);

assign out_r_address0 = zext_ln5_3_reg_243;

assign out_r_d0 = (in2_q0 + in1_q0);

assign select_ln5_1_fu_162_p3 = ((icmp_ln4_fu_148_p2[0:0] === 1'b1) ? i_fu_142_p2 : ap_phi_mux_i_0_phi_fu_112_p4);

assign select_ln5_fu_154_p3 = ((icmp_ln4_fu_148_p2[0:0] === 1'b1) ? 4'd0 : j_0_reg_119);

assign tmp_2_fu_182_p3 = {{select_ln5_1_fu_162_p3}, {1'd0}};

assign tmp_fu_170_p3 = {{select_ln5_1_fu_162_p3}, {3'd0}};

assign zext_ln5_1_fu_190_p1 = tmp_2_fu_182_p3;

assign zext_ln5_2_fu_200_p1 = select_ln5_fu_154_p3;

assign zext_ln5_3_fu_210_p1 = add_ln5_2_fu_204_p2;

assign zext_ln5_fu_178_p1 = tmp_fu_170_p3;

always @ (posedge ap_clk) begin
    zext_ln5_3_reg_243[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end

endmodule //foo