// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="lab1_1,hls_ip_2019_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12t-csg325-1Q,HLS_INPUT_CLOCK=6.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.820000,HLS_SYN_LAT=2,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=1,HLS_SYN_FF=12,HLS_SYN_LUT=37,HLS_VERSION=2019_1}" *)

module lab1_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a,
        b,
        c,
        d,
        ap_return
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] a;
input  [7:0] b;
input  [7:0] c;
input  [7:0] d;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [8:0] add_ln3_fu_58_p2;
reg  signed [8:0] add_ln3_reg_89;
wire    ap_CS_fsm_state2;
wire  signed [8:0] sext_ln3_2_fu_50_p1;
wire  signed [8:0] sext_ln3_3_fu_54_p1;
wire    ap_CS_fsm_state3;
wire  signed [15:0] grp_fu_70_p3;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
end

lab1_1_mac_muladdbkb #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 9 ),
    .dout_WIDTH( 16 ))
lab1_1_mac_muladdbkb_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(b),
    .din1(a),
    .din2(add_ln3_reg_89),
    .ce(1'b1),
    .dout(grp_fu_70_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln3_reg_89 <= add_ln3_fu_58_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
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
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln3_fu_58_p2 = ($signed(sext_ln3_2_fu_50_p1) + $signed(sext_ln3_3_fu_54_p1));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_return = $signed(grp_fu_70_p3);

assign sext_ln3_2_fu_50_p1 = $signed(c);

assign sext_ln3_3_fu_54_p1 = $signed(d);

endmodule //lab1_1
