// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="lab4_1,hls_ip_2019_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12t-csg325-1Q,HLS_INPUT_CLOCK=6.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=5.690000,HLS_SYN_LAT=3,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=3,HLS_SYN_FF=267,HLS_SYN_LUT=219,HLS_VERSION=2019_1}" *)

module lab4_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a,
        a_ap_vld,
        a_ap_ack,
        b,
        b_ap_ack,
        c,
        c_ap_vld,
        c_ap_ack,
        d,
        d_ap_vld,
        p_y,
        p_y_ap_ack,
        ap_return
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] a;
input   a_ap_vld;
output   a_ap_ack;
input  [31:0] b;
output   b_ap_ack;
input  [31:0] c;
input   c_ap_vld;
output   c_ap_ack;
input  [31:0] d;
input   d_ap_vld;
output  [31:0] p_y;
input   p_y_ap_ack;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg a_ap_ack;
reg b_ap_ack;
reg c_ap_ack;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] d_preg;
reg   [31:0] d_in_sig;
reg    d_ap_vld_preg;
reg    d_ap_vld_in_sig;
reg    a_blk_n;
reg    c_blk_n;
reg    d_blk_n;
reg    p_y_blk_n;
wire    ap_CS_fsm_state4;
reg    ap_block_state1;
reg   [31:0] c_read_reg_94;
wire   [31:0] grp_fu_69_p2;
reg   [31:0] mul_ln3_reg_104;
wire    ap_CS_fsm_state3;
reg    grp_fu_69_ce;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 d_preg = 32'd0;
#0 d_ap_vld_preg = 1'b0;
end

lab4_1_mul_32s_32bkb #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
lab4_1_mul_32s_32bkb_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(b),
    .din1(a),
    .ce(grp_fu_69_ce),
    .dout(grp_fu_69_p2)
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
        d_ap_vld_preg <= 1'b0;
    end else begin
        if (((p_y_ap_ack == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            d_ap_vld_preg <= 1'b0;
        end else if ((~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) & (d_ap_vld == 1'b1))) begin
            d_ap_vld_preg <= d_ap_vld;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        d_preg <= 32'd0;
    end else begin
        if ((~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) & (d_ap_vld == 1'b1))) begin
            d_preg <= d;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (d_ap_vld_in_sig == 1'b0) | (c_ap_vld == 1'b0) | (1'b0 == a_ap_vld)) & (1'b1 == ap_CS_fsm_state1))) begin
        c_read_reg_94 <= c;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        mul_ln3_reg_104 <= grp_fu_69_p2;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (d_ap_vld_in_sig == 1'b0) | (c_ap_vld == 1'b0) | (1'b0 == a_ap_vld)) & (1'b1 == ap_CS_fsm_state1))) begin
        a_ap_ack = 1'b1;
    end else begin
        a_ap_ack = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        a_blk_n = a_ap_vld;
    end else begin
        a_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((p_y_ap_ack == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
    if (((p_y_ap_ack == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (d_ap_vld_in_sig == 1'b0) | (c_ap_vld == 1'b0) | (1'b0 == a_ap_vld)) & (1'b1 == ap_CS_fsm_state1))) begin
        b_ap_ack = 1'b1;
    end else begin
        b_ap_ack = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (d_ap_vld_in_sig == 1'b0) | (c_ap_vld == 1'b0) | (1'b0 == a_ap_vld)) & (1'b1 == ap_CS_fsm_state1))) begin
        c_ap_ack = 1'b1;
    end else begin
        c_ap_ack = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        c_blk_n = c_ap_vld;
    end else begin
        c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((d_ap_vld == 1'b1)) begin
        d_ap_vld_in_sig = d_ap_vld;
    end else begin
        d_ap_vld_in_sig = d_ap_vld_preg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        d_blk_n = d_ap_vld;
    end else begin
        d_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((d_ap_vld == 1'b1)) begin
        d_in_sig = d;
    end else begin
        d_in_sig = d_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_state1) & ((ap_start == 1'b0) | (d_ap_vld_in_sig == 1'b0) | (c_ap_vld == 1'b0) | (1'b0 == a_ap_vld))))) begin
        grp_fu_69_ce = 1'b0;
    end else begin
        grp_fu_69_ce = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_y_blk_n = p_y_ap_ack;
    end else begin
        p_y_blk_n = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (d_ap_vld_in_sig == 1'b0) | (c_ap_vld == 1'b0) | (1'b0 == a_ap_vld)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((p_y_ap_ack == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (d_ap_vld_in_sig == 1'b0) | (c_ap_vld == 1'b0) | (1'b0 == a_ap_vld));
end

assign ap_return = (c_read_reg_94 + mul_ln3_reg_104);

assign p_y = (d_in_sig + mul_ln3_reg_104);

endmodule //lab4_1