// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dct_1d (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        src_address0,
        src_ce0,
        src_q0,
        src1_address0,
        src1_ce0,
        src1_q0,
        src2_address0,
        src2_ce0,
        src2_q0,
        src3_address0,
        src3_ce0,
        src3_q0,
        src4_address0,
        src4_ce0,
        src4_q0,
        src5_address0,
        src5_ce0,
        src5_q0,
        src6_address0,
        src6_ce0,
        src6_q0,
        src7_address0,
        src7_ce0,
        src7_q0,
        src_offset,
        dst_address0,
        dst_ce0,
        dst_we0,
        dst_d0,
        dst_offset
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state8 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] src_address0;
output   src_ce0;
input  [15:0] src_q0;
output  [2:0] src1_address0;
output   src1_ce0;
input  [15:0] src1_q0;
output  [2:0] src2_address0;
output   src2_ce0;
input  [15:0] src2_q0;
output  [2:0] src3_address0;
output   src3_ce0;
input  [15:0] src3_q0;
output  [2:0] src4_address0;
output   src4_ce0;
input  [15:0] src4_q0;
output  [2:0] src5_address0;
output   src5_ce0;
input  [15:0] src5_q0;
output  [2:0] src6_address0;
output   src6_ce0;
input  [15:0] src6_q0;
output  [2:0] src7_address0;
output   src7_ce0;
input  [15:0] src7_q0;
input  [3:0] src_offset;
output  [5:0] dst_address0;
output   dst_ce0;
output   dst_we0;
output  [15:0] dst_d0;
input  [3:0] dst_offset;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg src_ce0;
reg src1_ce0;
reg src2_ce0;
reg src3_ce0;
reg src4_ce0;
reg src5_ce0;
reg src6_ce0;
reg src7_ce0;
reg dst_ce0;
reg dst_we0;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] dct_coeff_table_0_address0;
reg    dct_coeff_table_0_ce0;
wire   [13:0] dct_coeff_table_0_q0;
wire   [2:0] dct_coeff_table_1_address0;
reg    dct_coeff_table_1_ce0;
wire   [14:0] dct_coeff_table_1_q0;
wire   [2:0] dct_coeff_table_2_address0;
reg    dct_coeff_table_2_ce0;
wire   [14:0] dct_coeff_table_2_q0;
wire   [2:0] dct_coeff_table_3_address0;
reg    dct_coeff_table_3_ce0;
wire   [14:0] dct_coeff_table_3_q0;
wire   [2:0] dct_coeff_table_4_address0;
reg    dct_coeff_table_4_ce0;
wire   [14:0] dct_coeff_table_4_q0;
wire   [2:0] dct_coeff_table_5_address0;
reg    dct_coeff_table_5_ce0;
wire   [14:0] dct_coeff_table_5_q0;
wire   [2:0] dct_coeff_table_6_address0;
reg    dct_coeff_table_6_ce0;
wire   [14:0] dct_coeff_table_6_q0;
wire   [2:0] dct_coeff_table_7_address0;
reg    dct_coeff_table_7_ce0;
wire   [14:0] dct_coeff_table_7_q0;
reg   [3:0] k_0_reg_307;
reg   [3:0] k_0_reg_307_pp0_iter1_reg;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_state5_pp0_stage0_iter3;
wire    ap_block_state6_pp0_stage0_iter4;
wire    ap_block_state7_pp0_stage0_iter5;
wire    ap_block_pp0_stage0_11001;
reg   [3:0] k_0_reg_307_pp0_iter2_reg;
reg   [3:0] k_0_reg_307_pp0_iter3_reg;
wire   [7:0] zext_ln19_cast_fu_327_p1;
reg   [7:0] zext_ln19_cast_reg_506;
reg   [2:0] src_addr_reg_511;
reg   [2:0] src1_addr_reg_516;
reg   [2:0] src2_addr_reg_521;
reg   [2:0] src3_addr_reg_526;
reg   [2:0] src4_addr_reg_531;
reg   [2:0] src5_addr_reg_536;
reg   [2:0] src6_addr_reg_541;
reg   [2:0] src7_addr_reg_546;
wire   [0:0] icmp_ln11_fu_343_p2;
reg   [0:0] icmp_ln11_reg_551;
reg   [0:0] icmp_ln11_reg_551_pp0_iter1_reg;
reg   [0:0] icmp_ln11_reg_551_pp0_iter2_reg;
reg   [0:0] icmp_ln11_reg_551_pp0_iter3_reg;
reg   [0:0] icmp_ln11_reg_551_pp0_iter4_reg;
wire   [3:0] k_fu_349_p2;
reg   [3:0] k_reg_555;
reg    ap_enable_reg_pp0_iter0;
reg   [13:0] dct_coeff_table_0_lo_reg_600;
reg   [13:0] dct_coeff_table_0_lo_reg_600_pp0_iter2_reg;
reg  signed [14:0] dct_coeff_table_1_lo_reg_605;
reg  signed [15:0] src1_load_reg_610;
reg   [14:0] dct_coeff_table_2_lo_reg_615;
reg  signed [14:0] dct_coeff_table_2_lo_reg_615_pp0_iter2_reg;
reg  signed [14:0] dct_coeff_table_3_lo_reg_620;
reg  signed [15:0] src3_load_reg_625;
reg   [14:0] dct_coeff_table_4_lo_reg_630;
reg  signed [14:0] dct_coeff_table_4_lo_reg_630_pp0_iter2_reg;
reg  signed [14:0] dct_coeff_table_5_lo_reg_635;
reg  signed [15:0] src5_load_reg_640;
reg   [14:0] dct_coeff_table_6_lo_reg_645;
reg  signed [14:0] dct_coeff_table_6_lo_reg_645_pp0_iter2_reg;
reg  signed [14:0] dct_coeff_table_7_lo_reg_650;
reg  signed [15:0] src7_load_reg_655;
reg  signed [15:0] src_load_reg_660;
wire  signed [28:0] mul_ln17_1_fu_452_p2;
reg  signed [28:0] mul_ln17_1_reg_665;
reg  signed [15:0] src2_load_reg_670;
wire  signed [28:0] mul_ln17_3_fu_458_p2;
reg  signed [28:0] mul_ln17_3_reg_675;
reg  signed [15:0] src4_load_reg_680;
wire  signed [28:0] mul_ln17_5_fu_464_p2;
reg  signed [28:0] mul_ln17_5_reg_685;
reg  signed [15:0] src6_load_reg_690;
wire  signed [28:0] grp_fu_470_p3;
reg  signed [28:0] add_ln19_5_reg_695;
reg    ap_enable_reg_pp0_iter2;
wire  signed [28:0] grp_fu_478_p3;
reg  signed [28:0] add_ln19_1_reg_700;
reg    ap_enable_reg_pp0_iter3;
wire  signed [28:0] grp_fu_485_p3;
reg  signed [28:0] add_ln19_2_reg_705;
wire  signed [28:0] grp_fu_492_p3;
reg  signed [28:0] add_ln19_4_reg_710;
wire  signed [28:0] grp_fu_499_p3;
reg  signed [28:0] add_ln19_6_reg_715;
wire   [7:0] add_ln19_8_fu_419_p2;
reg   [7:0] add_ln19_8_reg_720;
reg   [15:0] trunc_ln_reg_725;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg   [3:0] ap_phi_mux_k_0_phi_fu_311_p4;
wire    ap_block_pp0_stage0;
wire   [63:0] src_offset_cast_fu_331_p1;
wire   [63:0] zext_ln16_fu_355_p1;
wire   [63:0] zext_ln19_1_fu_448_p1;
wire   [6:0] tmp_3_fu_319_p3;
wire   [7:0] zext_ln19_fu_415_p1;
(* use_dsp48 = "no" *) wire   [28:0] add_ln19_3_fu_424_p2;
(* use_dsp48 = "no" *) wire   [28:0] add_ln19_7_fu_428_p2;
wire   [28:0] add_ln19_fu_432_p2;
wire   [13:0] grp_fu_470_p2;
wire   [13:0] grp_fu_478_p1;
wire    ap_CS_fsm_state8;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [28:0] grp_fu_478_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
end

dct_1d_dct_coeff_bkb #(
    .DataWidth( 14 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_0_address0),
    .ce0(dct_coeff_table_0_ce0),
    .q0(dct_coeff_table_0_q0)
);

dct_1d_dct_coeff_cud #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_1_address0),
    .ce0(dct_coeff_table_1_ce0),
    .q0(dct_coeff_table_1_q0)
);

dct_1d_dct_coeff_dEe #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_2_address0),
    .ce0(dct_coeff_table_2_ce0),
    .q0(dct_coeff_table_2_q0)
);

dct_1d_dct_coeff_eOg #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_3_address0),
    .ce0(dct_coeff_table_3_ce0),
    .q0(dct_coeff_table_3_q0)
);

dct_1d_dct_coeff_fYi #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_4_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_4_address0),
    .ce0(dct_coeff_table_4_ce0),
    .q0(dct_coeff_table_4_q0)
);

dct_1d_dct_coeff_g8j #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_5_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_5_address0),
    .ce0(dct_coeff_table_5_ce0),
    .q0(dct_coeff_table_5_q0)
);

dct_1d_dct_coeff_hbi #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_6_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_6_address0),
    .ce0(dct_coeff_table_6_ce0),
    .q0(dct_coeff_table_6_q0)
);

dct_1d_dct_coeff_ibs #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_7_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_7_address0),
    .ce0(dct_coeff_table_7_ce0),
    .q0(dct_coeff_table_7_q0)
);

dct_mul_mul_16s_1jbC #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 29 ))
dct_mul_mul_16s_1jbC_U10(
    .din0(src1_load_reg_610),
    .din1(dct_coeff_table_1_lo_reg_605),
    .dout(mul_ln17_1_fu_452_p2)
);

dct_mul_mul_16s_1jbC #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 29 ))
dct_mul_mul_16s_1jbC_U11(
    .din0(src3_load_reg_625),
    .din1(dct_coeff_table_3_lo_reg_620),
    .dout(mul_ln17_3_fu_458_p2)
);

dct_mul_mul_16s_1jbC #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 29 ))
dct_mul_mul_16s_1jbC_U12(
    .din0(src5_load_reg_640),
    .din1(dct_coeff_table_5_lo_reg_635),
    .dout(mul_ln17_5_fu_464_p2)
);

dct_mac_muladd_16kbM #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 14 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16kbM_U13(
    .din0(src7_load_reg_655),
    .din1(dct_coeff_table_7_lo_reg_650),
    .din2(grp_fu_470_p2),
    .dout(grp_fu_470_p3)
);

dct_mac_muladd_16lbW #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 14 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16lbW_U14(
    .din0(src_load_reg_660),
    .din1(grp_fu_478_p1),
    .din2(mul_ln17_1_reg_665),
    .dout(grp_fu_478_p3)
);

dct_mac_muladd_16mb6 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16mb6_U15(
    .din0(src2_load_reg_670),
    .din1(dct_coeff_table_2_lo_reg_615_pp0_iter2_reg),
    .din2(mul_ln17_3_reg_675),
    .dout(grp_fu_485_p3)
);

dct_mac_muladd_16mb6 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16mb6_U16(
    .din0(src4_load_reg_680),
    .din1(dct_coeff_table_4_lo_reg_630_pp0_iter2_reg),
    .din2(mul_ln17_5_reg_685),
    .dout(grp_fu_492_p3)
);

dct_mac_muladd_16mb6 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16mb6_U17(
    .din0(src6_load_reg_690),
    .din1(dct_coeff_table_6_lo_reg_645_pp0_iter2_reg),
    .din2(add_ln19_5_reg_695),
    .dout(grp_fu_499_p3)
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
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
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
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_reg_551 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        k_0_reg_307 <= k_reg_555;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        k_0_reg_307 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln11_reg_551_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln19_1_reg_700 <= grp_fu_478_p3;
        add_ln19_2_reg_705 <= grp_fu_485_p3;
        add_ln19_4_reg_710 <= grp_fu_492_p3;
        add_ln19_6_reg_715 <= grp_fu_499_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln11_reg_551_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln19_5_reg_695 <= grp_fu_470_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln11_reg_551_pp0_iter3_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln19_8_reg_720 <= add_ln19_8_fu_419_p2;
        trunc_ln_reg_725 <= {{add_ln19_fu_432_p2[28:13]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_reg_551 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dct_coeff_table_0_lo_reg_600 <= dct_coeff_table_0_q0;
        dct_coeff_table_1_lo_reg_605 <= dct_coeff_table_1_q0;
        dct_coeff_table_2_lo_reg_615 <= dct_coeff_table_2_q0;
        dct_coeff_table_3_lo_reg_620 <= dct_coeff_table_3_q0;
        dct_coeff_table_4_lo_reg_630 <= dct_coeff_table_4_q0;
        dct_coeff_table_5_lo_reg_635 <= dct_coeff_table_5_q0;
        dct_coeff_table_6_lo_reg_645 <= dct_coeff_table_6_q0;
        dct_coeff_table_7_lo_reg_650 <= dct_coeff_table_7_q0;
        src1_load_reg_610 <= src1_q0;
        src3_load_reg_625 <= src3_q0;
        src5_load_reg_640 <= src5_q0;
        src7_load_reg_655 <= src7_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        dct_coeff_table_0_lo_reg_600_pp0_iter2_reg <= dct_coeff_table_0_lo_reg_600;
        dct_coeff_table_2_lo_reg_615_pp0_iter2_reg <= dct_coeff_table_2_lo_reg_615;
        dct_coeff_table_4_lo_reg_630_pp0_iter2_reg <= dct_coeff_table_4_lo_reg_630;
        dct_coeff_table_6_lo_reg_645_pp0_iter2_reg <= dct_coeff_table_6_lo_reg_645;
        icmp_ln11_reg_551_pp0_iter2_reg <= icmp_ln11_reg_551_pp0_iter1_reg;
        icmp_ln11_reg_551_pp0_iter3_reg <= icmp_ln11_reg_551_pp0_iter2_reg;
        icmp_ln11_reg_551_pp0_iter4_reg <= icmp_ln11_reg_551_pp0_iter3_reg;
        k_0_reg_307_pp0_iter2_reg <= k_0_reg_307_pp0_iter1_reg;
        k_0_reg_307_pp0_iter3_reg <= k_0_reg_307_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln11_reg_551 <= icmp_ln11_fu_343_p2;
        icmp_ln11_reg_551_pp0_iter1_reg <= icmp_ln11_reg_551;
        k_0_reg_307_pp0_iter1_reg <= k_0_reg_307;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        k_reg_555 <= k_fu_349_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln11_reg_551_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul_ln17_1_reg_665 <= mul_ln17_1_fu_452_p2;
        mul_ln17_3_reg_675 <= mul_ln17_3_fu_458_p2;
        mul_ln17_5_reg_685 <= mul_ln17_5_fu_464_p2;
        src2_load_reg_670 <= src2_q0;
        src4_load_reg_680 <= src4_q0;
        src6_load_reg_690 <= src6_q0;
        src_load_reg_660 <= src_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        src1_addr_reg_516 <= src_offset_cast_fu_331_p1;
        src2_addr_reg_521 <= src_offset_cast_fu_331_p1;
        src3_addr_reg_526 <= src_offset_cast_fu_331_p1;
        src4_addr_reg_531 <= src_offset_cast_fu_331_p1;
        src5_addr_reg_536 <= src_offset_cast_fu_331_p1;
        src6_addr_reg_541 <= src_offset_cast_fu_331_p1;
        src7_addr_reg_546 <= src_offset_cast_fu_331_p1;
        src_addr_reg_511 <= src_offset_cast_fu_331_p1;
        zext_ln19_cast_reg_506[6 : 3] <= zext_ln19_cast_fu_327_p1[6 : 3];
    end
end

always @ (*) begin
    if ((icmp_ln11_fu_343_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_reg_551 == 1'd0))) begin
        ap_phi_mux_k_0_phi_fu_311_p4 = k_reg_555;
    end else begin
        ap_phi_mux_k_0_phi_fu_311_p4 = k_0_reg_307;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dct_coeff_table_0_ce0 = 1'b1;
    end else begin
        dct_coeff_table_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dct_coeff_table_1_ce0 = 1'b1;
    end else begin
        dct_coeff_table_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dct_coeff_table_2_ce0 = 1'b1;
    end else begin
        dct_coeff_table_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dct_coeff_table_3_ce0 = 1'b1;
    end else begin
        dct_coeff_table_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dct_coeff_table_4_ce0 = 1'b1;
    end else begin
        dct_coeff_table_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dct_coeff_table_5_ce0 = 1'b1;
    end else begin
        dct_coeff_table_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dct_coeff_table_6_ce0 = 1'b1;
    end else begin
        dct_coeff_table_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dct_coeff_table_7_ce0 = 1'b1;
    end else begin
        dct_coeff_table_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dst_ce0 = 1'b1;
    end else begin
        dst_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln11_reg_551_pp0_iter4_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dst_we0 = 1'b1;
    end else begin
        dst_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        src1_ce0 = 1'b1;
    end else begin
        src1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        src2_ce0 = 1'b1;
    end else begin
        src2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        src3_ce0 = 1'b1;
    end else begin
        src3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        src4_ce0 = 1'b1;
    end else begin
        src4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        src5_ce0 = 1'b1;
    end else begin
        src5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        src6_ce0 = 1'b1;
    end else begin
        src6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        src7_ce0 = 1'b1;
    end else begin
        src7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        src_ce0 = 1'b1;
    end else begin
        src_ce0 = 1'b0;
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
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln11_fu_343_p2 == 1'd1)) & ~((ap_enable_reg_pp0_iter4 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter4 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln11_fu_343_p2 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln19_3_fu_424_p2 = ($signed(add_ln19_1_reg_700) + $signed(add_ln19_2_reg_705));

assign add_ln19_7_fu_428_p2 = ($signed(add_ln19_4_reg_710) + $signed(add_ln19_6_reg_715));

assign add_ln19_8_fu_419_p2 = (zext_ln19_cast_reg_506 + zext_ln19_fu_415_p1);

assign add_ln19_fu_432_p2 = (add_ln19_3_fu_424_p2 + add_ln19_7_fu_428_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign dct_coeff_table_0_address0 = zext_ln16_fu_355_p1;

assign dct_coeff_table_1_address0 = zext_ln16_fu_355_p1;

assign dct_coeff_table_2_address0 = zext_ln16_fu_355_p1;

assign dct_coeff_table_3_address0 = zext_ln16_fu_355_p1;

assign dct_coeff_table_4_address0 = zext_ln16_fu_355_p1;

assign dct_coeff_table_5_address0 = zext_ln16_fu_355_p1;

assign dct_coeff_table_6_address0 = zext_ln16_fu_355_p1;

assign dct_coeff_table_7_address0 = zext_ln16_fu_355_p1;

assign dst_address0 = zext_ln19_1_fu_448_p1;

assign dst_d0 = trunc_ln_reg_725;

assign grp_fu_470_p2 = 29'd4096;

assign grp_fu_478_p1 = grp_fu_478_p10;

assign grp_fu_478_p10 = dct_coeff_table_0_lo_reg_600_pp0_iter2_reg;

assign icmp_ln11_fu_343_p2 = ((ap_phi_mux_k_0_phi_fu_311_p4 == 4'd8) ? 1'b1 : 1'b0);

assign k_fu_349_p2 = (ap_phi_mux_k_0_phi_fu_311_p4 + 4'd1);

assign src1_address0 = src1_addr_reg_516;

assign src2_address0 = src2_addr_reg_521;

assign src3_address0 = src3_addr_reg_526;

assign src4_address0 = src4_addr_reg_531;

assign src5_address0 = src5_addr_reg_536;

assign src6_address0 = src6_addr_reg_541;

assign src7_address0 = src7_addr_reg_546;

assign src_address0 = src_addr_reg_511;

assign src_offset_cast_fu_331_p1 = src_offset;

assign tmp_3_fu_319_p3 = {{dst_offset}, {3'd0}};

assign zext_ln16_fu_355_p1 = ap_phi_mux_k_0_phi_fu_311_p4;

assign zext_ln19_1_fu_448_p1 = add_ln19_8_reg_720;

assign zext_ln19_cast_fu_327_p1 = tmp_3_fu_319_p3;

assign zext_ln19_fu_415_p1 = k_0_reg_307_pp0_iter3_reg;

always @ (posedge ap_clk) begin
    zext_ln19_cast_reg_506[2:0] <= 3'b000;
    zext_ln19_cast_reg_506[7] <= 1'b0;
end

endmodule //dct_1d
