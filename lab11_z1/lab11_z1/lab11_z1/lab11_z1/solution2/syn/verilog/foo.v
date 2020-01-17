// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="foo,hls_ip_2018_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.006000,HLS_SYN_LAT=8,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=9,HLS_SYN_LUT=389,HLS_VERSION=2018_2}" *)

module foo (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_address0,
        a_ce0,
        a_we0,
        a_d0,
        a_address1,
        a_ce1,
        a_we1,
        a_d1,
        b_address0,
        b_ce0,
        b_q0,
        b_address1,
        b_ce1,
        b_q1,
        c_address0,
        c_ce0,
        c_q0,
        c_address1,
        c_ce1,
        c_q1
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] a_address0;
output   a_ce0;
output   a_we0;
output  [31:0] a_d0;
output  [3:0] a_address1;
output   a_ce1;
output   a_we1;
output  [31:0] a_d1;
output  [3:0] b_address0;
output   b_ce0;
input  [31:0] b_q0;
output  [3:0] b_address1;
output   b_ce1;
input  [31:0] b_q1;
output  [3:0] c_address0;
output   c_ce0;
input  [31:0] c_q0;
output  [3:0] c_address1;
output   c_ce1;
input  [31:0] c_q1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] a_address0;
reg a_ce0;
reg a_we0;
reg[3:0] a_address1;
reg a_ce1;
reg a_we1;
reg[3:0] b_address0;
reg b_ce0;
reg[3:0] b_address1;
reg b_ce1;
reg[3:0] c_address0;
reg c_ce0;
reg[3:0] c_address1;
reg c_ce1;

(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
reg   [8:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        a_address0 = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        a_address0 = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        a_address0 = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        a_address0 = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        a_address0 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        a_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_address0 = 64'd0;
    end else begin
        a_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        a_address1 = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        a_address1 = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        a_address1 = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        a_address1 = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_address1 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        a_address1 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        a_address1 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_address1 = 64'd1;
    end else begin
        a_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        a_ce1 = 1'b1;
    end else begin
        a_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        a_we0 = 1'b1;
    end else begin
        a_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        a_we1 = 1'b1;
    end else begin
        a_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
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
    if ((1'b1 == ap_CS_fsm_state9)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        b_address0 = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        b_address0 = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        b_address0 = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        b_address0 = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        b_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        b_address0 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        b_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        b_address0 = 64'd0;
    end else begin
        b_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        b_address1 = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        b_address1 = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        b_address1 = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        b_address1 = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        b_address1 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        b_address1 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        b_address1 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        b_address1 = 64'd1;
    end else begin
        b_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        b_ce0 = 1'b1;
    end else begin
        b_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        b_ce1 = 1'b1;
    end else begin
        b_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c_address0 = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        c_address0 = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c_address0 = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        c_address0 = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        c_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        c_address0 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        c_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        c_address0 = 64'd0;
    end else begin
        c_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c_address1 = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        c_address1 = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c_address1 = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        c_address1 = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        c_address1 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        c_address1 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        c_address1 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        c_address1 = 64'd1;
    end else begin
        c_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        c_ce0 = 1'b1;
    end else begin
        c_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        c_ce1 = 1'b1;
    end else begin
        c_ce1 = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_d0 = (b_q0 + c_q0);

assign a_d1 = (b_q1 + c_q1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

endmodule //foo