// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="dct,hls_ip_2019_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-1,HLS_INPUT_CLOCK=6.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=5.790000,HLS_SYN_LAT=4215,HLS_SYN_TPT=none,HLS_SYN_MEM=5,HLS_SYN_DSP=1,HLS_SYN_FF=346,HLS_SYN_LUT=994,HLS_VERSION=2019_1}" *)

module dct (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_r_address0,
        input_r_ce0,
        input_r_q0,
        output_r_address0,
        output_r_ce0,
        output_r_we0,
        output_r_d0
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] input_r_address0;
output   input_r_ce0;
input  [15:0] input_r_q0;
output  [5:0] output_r_address0;
output   output_r_ce0;
output   output_r_we0;
output  [15:0] output_r_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input_r_ce0;
reg output_r_ce0;
reg output_r_we0;

(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [3:0] r_fu_164_p2;
reg   [3:0] r_reg_311;
wire    ap_CS_fsm_state2;
wire   [5:0] shl_ln_fu_174_p3;
reg   [5:0] shl_ln_reg_316;
wire   [0:0] icmp_ln57_fu_158_p2;
wire   [7:0] zext_ln59_1_fu_190_p1;
reg   [7:0] zext_ln59_1_reg_321;
wire   [3:0] c_fu_204_p2;
reg   [3:0] c_reg_329;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln59_fu_198_p2;
wire   [7:0] add_ln60_1_fu_224_p2;
reg   [7:0] add_ln60_1_reg_339;
reg   [15:0] input_load_reg_344;
wire    ap_CS_fsm_state4;
wire   [3:0] r_1_fu_239_p2;
reg   [3:0] r_1_reg_352;
wire    ap_CS_fsm_state7;
wire   [7:0] zext_ln72_fu_253_p1;
reg   [7:0] zext_ln72_reg_357;
wire   [0:0] icmp_ln69_fu_233_p2;
wire   [5:0] shl_ln1_fu_261_p3;
reg   [5:0] shl_ln1_reg_362;
wire   [3:0] c_1_fu_279_p2;
reg   [3:0] c_1_reg_370;
wire    ap_CS_fsm_state8;
wire   [0:0] icmp_ln71_fu_273_p2;
wire   [5:0] add_ln72_fu_299_p2;
reg   [5:0] add_ln72_reg_380;
wire   [15:0] buf_2d_out_q0;
reg   [15:0] buf_2d_out_load_reg_385;
wire    ap_CS_fsm_state9;
reg   [5:0] buf_2d_in_address0;
reg    buf_2d_in_ce0;
reg    buf_2d_in_we0;
wire   [15:0] buf_2d_in_q0;
reg   [5:0] buf_2d_out_address0;
reg    buf_2d_out_ce0;
reg    buf_2d_out_we0;
wire    grp_dct_2d_fu_150_ap_start;
wire    grp_dct_2d_fu_150_ap_done;
wire    grp_dct_2d_fu_150_ap_idle;
wire    grp_dct_2d_fu_150_ap_ready;
wire   [5:0] grp_dct_2d_fu_150_in_block_address0;
wire    grp_dct_2d_fu_150_in_block_ce0;
wire   [5:0] grp_dct_2d_fu_150_out_block_address0;
wire    grp_dct_2d_fu_150_out_block_ce0;
wire    grp_dct_2d_fu_150_out_block_we0;
wire   [15:0] grp_dct_2d_fu_150_out_block_d0;
reg   [3:0] r_0_i_reg_106;
reg   [3:0] c_0_i_reg_117;
wire    ap_CS_fsm_state5;
reg   [3:0] r_0_i2_reg_128;
wire    ap_CS_fsm_state6;
reg   [3:0] c_0_i4_reg_139;
wire    ap_CS_fsm_state10;
reg    grp_dct_2d_fu_150_ap_start_reg;
wire   [63:0] zext_ln60_fu_215_p1;
wire   [63:0] zext_ln60_2_fu_229_p1;
wire   [63:0] zext_ln72_3_fu_294_p1;
wire   [63:0] zext_ln72_2_fu_304_p1;
wire   [2:0] trunc_ln60_fu_170_p1;
wire   [6:0] tmp_9_fu_182_p3;
wire   [5:0] zext_ln59_fu_194_p1;
wire   [5:0] add_ln60_fu_210_p2;
wire   [7:0] zext_ln60_1_fu_220_p1;
wire   [6:0] tmp_s_fu_245_p3;
wire   [2:0] trunc_ln72_fu_257_p1;
wire   [7:0] zext_ln72_1_fu_285_p1;
wire   [7:0] add_ln72_1_fu_289_p2;
wire   [5:0] zext_ln71_fu_269_p1;
reg   [9:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_dct_2d_fu_150_ap_start_reg = 1'b0;
end

dct_2d_row_outbuf #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
buf_2d_in_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buf_2d_in_address0),
    .ce0(buf_2d_in_ce0),
    .we0(buf_2d_in_we0),
    .d0(input_load_reg_344),
    .q0(buf_2d_in_q0)
);

dct_2d_row_outbuf #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
buf_2d_out_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buf_2d_out_address0),
    .ce0(buf_2d_out_ce0),
    .we0(buf_2d_out_we0),
    .d0(grp_dct_2d_fu_150_out_block_d0),
    .q0(buf_2d_out_q0)
);

dct_2d grp_dct_2d_fu_150(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_dct_2d_fu_150_ap_start),
    .ap_done(grp_dct_2d_fu_150_ap_done),
    .ap_idle(grp_dct_2d_fu_150_ap_idle),
    .ap_ready(grp_dct_2d_fu_150_ap_ready),
    .in_block_address0(grp_dct_2d_fu_150_in_block_address0),
    .in_block_ce0(grp_dct_2d_fu_150_in_block_ce0),
    .in_block_q0(buf_2d_in_q0),
    .out_block_address0(grp_dct_2d_fu_150_out_block_address0),
    .out_block_ce0(grp_dct_2d_fu_150_out_block_ce0),
    .out_block_we0(grp_dct_2d_fu_150_out_block_we0),
    .out_block_d0(grp_dct_2d_fu_150_out_block_d0)
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
        grp_dct_2d_fu_150_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln57_fu_158_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_dct_2d_fu_150_ap_start_reg <= 1'b1;
        end else if ((grp_dct_2d_fu_150_ap_ready == 1'b1)) begin
            grp_dct_2d_fu_150_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c_0_i4_reg_139 <= c_1_reg_370;
    end else if (((icmp_ln69_fu_233_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        c_0_i4_reg_139 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        c_0_i_reg_117 <= c_reg_329;
    end else if (((icmp_ln57_fu_158_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        c_0_i_reg_117 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln71_fu_273_p2 == 1'd1))) begin
        r_0_i2_reg_128 <= r_1_reg_352;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_dct_2d_fu_150_ap_done == 1'b1))) begin
        r_0_i2_reg_128 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln59_fu_198_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        r_0_i_reg_106 <= r_reg_311;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        r_0_i_reg_106 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln59_fu_198_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        add_ln60_1_reg_339 <= add_ln60_1_fu_224_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln71_fu_273_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        add_ln72_reg_380 <= add_ln72_fu_299_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buf_2d_out_load_reg_385 <= buf_2d_out_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c_1_reg_370 <= c_1_fu_279_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        c_reg_329 <= c_fu_204_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_load_reg_344 <= input_r_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        r_1_reg_352 <= r_1_fu_239_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        r_reg_311 <= r_fu_164_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln69_fu_233_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        shl_ln1_reg_362[5 : 3] <= shl_ln1_fu_261_p3[5 : 3];
        zext_ln72_reg_357[6 : 3] <= zext_ln72_fu_253_p1[6 : 3];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln57_fu_158_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        shl_ln_reg_316[5 : 3] <= shl_ln_fu_174_p3[5 : 3];
        zext_ln59_1_reg_321[6 : 3] <= zext_ln59_1_fu_190_p1[6 : 3];
    end
end

always @ (*) begin
    if (((icmp_ln69_fu_233_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
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
    if (((icmp_ln69_fu_233_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_2d_in_address0 = zext_ln60_2_fu_229_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_2d_in_address0 = grp_dct_2d_fu_150_in_block_address0;
    end else begin
        buf_2d_in_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_2d_in_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_2d_in_ce0 = grp_dct_2d_fu_150_in_block_ce0;
    end else begin
        buf_2d_in_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_2d_in_we0 = 1'b1;
    end else begin
        buf_2d_in_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buf_2d_out_address0 = zext_ln72_3_fu_294_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_2d_out_address0 = grp_dct_2d_fu_150_out_block_address0;
    end else begin
        buf_2d_out_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buf_2d_out_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_2d_out_ce0 = grp_dct_2d_fu_150_out_block_ce0;
    end else begin
        buf_2d_out_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_2d_out_we0 = grp_dct_2d_fu_150_out_block_we0;
    end else begin
        buf_2d_out_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input_r_ce0 = 1'b1;
    end else begin
        input_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        output_r_we0 = 1'b1;
    end else begin
        output_r_we0 = 1'b0;
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
            if (((icmp_ln57_fu_158_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln59_fu_198_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_dct_2d_fu_150_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln69_fu_233_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln71_fu_273_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln60_1_fu_224_p2 = (zext_ln59_1_reg_321 + zext_ln60_1_fu_220_p1);

assign add_ln60_fu_210_p2 = (zext_ln59_fu_194_p1 + shl_ln_reg_316);

assign add_ln72_1_fu_289_p2 = (zext_ln72_reg_357 + zext_ln72_1_fu_285_p1);

assign add_ln72_fu_299_p2 = (zext_ln71_fu_269_p1 + shl_ln1_reg_362);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign c_1_fu_279_p2 = (c_0_i4_reg_139 + 4'd1);

assign c_fu_204_p2 = (c_0_i_reg_117 + 4'd1);

assign grp_dct_2d_fu_150_ap_start = grp_dct_2d_fu_150_ap_start_reg;

assign icmp_ln57_fu_158_p2 = ((r_0_i_reg_106 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln59_fu_198_p2 = ((c_0_i_reg_117 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln69_fu_233_p2 = ((r_0_i2_reg_128 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln71_fu_273_p2 = ((c_0_i4_reg_139 == 4'd8) ? 1'b1 : 1'b0);

assign input_r_address0 = zext_ln60_fu_215_p1;

assign output_r_address0 = zext_ln72_2_fu_304_p1;

assign output_r_d0 = buf_2d_out_load_reg_385;

assign r_1_fu_239_p2 = (r_0_i2_reg_128 + 4'd1);

assign r_fu_164_p2 = (r_0_i_reg_106 + 4'd1);

assign shl_ln1_fu_261_p3 = {{trunc_ln72_fu_257_p1}, {3'd0}};

assign shl_ln_fu_174_p3 = {{trunc_ln60_fu_170_p1}, {3'd0}};

assign tmp_9_fu_182_p3 = {{r_0_i_reg_106}, {3'd0}};

assign tmp_s_fu_245_p3 = {{r_0_i2_reg_128}, {3'd0}};

assign trunc_ln60_fu_170_p1 = r_0_i_reg_106[2:0];

assign trunc_ln72_fu_257_p1 = r_0_i2_reg_128[2:0];

assign zext_ln59_1_fu_190_p1 = tmp_9_fu_182_p3;

assign zext_ln59_fu_194_p1 = c_0_i_reg_117;

assign zext_ln60_1_fu_220_p1 = c_0_i_reg_117;

assign zext_ln60_2_fu_229_p1 = add_ln60_1_reg_339;

assign zext_ln60_fu_215_p1 = add_ln60_fu_210_p2;

assign zext_ln71_fu_269_p1 = c_0_i4_reg_139;

assign zext_ln72_1_fu_285_p1 = c_0_i4_reg_139;

assign zext_ln72_2_fu_304_p1 = add_ln72_reg_380;

assign zext_ln72_3_fu_294_p1 = add_ln72_1_fu_289_p2;

assign zext_ln72_fu_253_p1 = tmp_s_fu_245_p3;

always @ (posedge ap_clk) begin
    shl_ln_reg_316[2:0] <= 3'b000;
    zext_ln59_1_reg_321[2:0] <= 3'b000;
    zext_ln59_1_reg_321[7] <= 1'b0;
    zext_ln72_reg_357[2:0] <= 3'b000;
    zext_ln72_reg_357[7] <= 1'b0;
    shl_ln1_reg_362[2:0] <= 3'b000;
end

endmodule //dct
