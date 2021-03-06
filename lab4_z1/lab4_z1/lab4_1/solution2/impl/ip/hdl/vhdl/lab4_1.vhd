-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity lab4_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    a : IN STD_LOGIC_VECTOR (31 downto 0);
    a_ap_vld : IN STD_LOGIC;
    a_ap_ack : OUT STD_LOGIC;
    b : IN STD_LOGIC_VECTOR (31 downto 0);
    b_ap_ack : OUT STD_LOGIC;
    c : IN STD_LOGIC_VECTOR (31 downto 0);
    c_ap_vld : IN STD_LOGIC;
    c_ap_ack : OUT STD_LOGIC;
    d : IN STD_LOGIC_VECTOR (31 downto 0);
    d_ap_vld : IN STD_LOGIC;
    p_y : OUT STD_LOGIC_VECTOR (31 downto 0);
    p_y_ap_ack : IN STD_LOGIC;
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of lab4_1 is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "lab4_1,hls_ip_2019_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12t-csg325-1Q,HLS_INPUT_CLOCK=6.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=5.690000,HLS_SYN_LAT=3,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=3,HLS_SYN_FF=267,HLS_SYN_LUT=219,HLS_VERSION=2019_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal d_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal d_in_sig : STD_LOGIC_VECTOR (31 downto 0);
    signal d_ap_vld_preg : STD_LOGIC := '0';
    signal d_ap_vld_in_sig : STD_LOGIC;
    signal a_blk_n : STD_LOGIC;
    signal c_blk_n : STD_LOGIC;
    signal d_blk_n : STD_LOGIC;
    signal p_y_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_block_state1 : BOOLEAN;
    signal c_read_reg_94 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_69_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln3_reg_104 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal grp_fu_69_ce : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);

    component lab4_1_mul_32s_32bkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    lab4_1_mul_32s_32bkb_U1 : component lab4_1_mul_32s_32bkb
    generic map (
        ID => 1,
        NUM_STAGE => 3,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => b,
        din1 => a,
        ce => grp_fu_69_ce,
        dout => grp_fu_69_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    d_ap_vld_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                d_ap_vld_preg <= ap_const_logic_0;
            else
                if (((p_y_ap_ack = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                    d_ap_vld_preg <= ap_const_logic_0;
                elsif ((not(((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) and (d_ap_vld = ap_const_logic_1))) then 
                    d_ap_vld_preg <= d_ap_vld;
                end if; 
            end if;
        end if;
    end process;


    d_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                d_preg <= ap_const_lv32_0;
            else
                if ((not(((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) and (d_ap_vld = ap_const_logic_1))) then 
                    d_preg <= d;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (d_ap_vld_in_sig = ap_const_logic_0) or (c_ap_vld = ap_const_logic_0) or (ap_const_logic_0 = a_ap_vld))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                c_read_reg_94 <= c;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                mul_ln3_reg_104 <= grp_fu_69_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, a_ap_vld, c_ap_vld, d_ap_vld_in_sig, p_y_ap_ack, ap_CS_fsm_state4)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (d_ap_vld_in_sig = ap_const_logic_0) or (c_ap_vld = ap_const_logic_0) or (ap_const_logic_0 = a_ap_vld))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if (((p_y_ap_ack = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;

    a_ap_ack_assign_proc : process(ap_start, ap_CS_fsm_state1, a_ap_vld, c_ap_vld, d_ap_vld_in_sig)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (d_ap_vld_in_sig = ap_const_logic_0) or (c_ap_vld = ap_const_logic_0) or (ap_const_logic_0 = a_ap_vld))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            a_ap_ack <= ap_const_logic_1;
        else 
            a_ap_ack <= ap_const_logic_0;
        end if; 
    end process;


    a_blk_n_assign_proc : process(ap_start, ap_CS_fsm_state1, a_ap_vld)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            a_blk_n <= a_ap_vld;
        else 
            a_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_block_state1_assign_proc : process(ap_start, a_ap_vld, c_ap_vld, d_ap_vld_in_sig)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (d_ap_vld_in_sig = ap_const_logic_0) or (c_ap_vld = ap_const_logic_0) or (ap_const_logic_0 = a_ap_vld));
    end process;


    ap_done_assign_proc : process(p_y_ap_ack, ap_CS_fsm_state4)
    begin
        if (((p_y_ap_ack = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(p_y_ap_ack, ap_CS_fsm_state4)
    begin
        if (((p_y_ap_ack = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= std_logic_vector(unsigned(c_read_reg_94) + unsigned(mul_ln3_reg_104));

    b_ap_ack_assign_proc : process(ap_start, ap_CS_fsm_state1, a_ap_vld, c_ap_vld, d_ap_vld_in_sig)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (d_ap_vld_in_sig = ap_const_logic_0) or (c_ap_vld = ap_const_logic_0) or (ap_const_logic_0 = a_ap_vld))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            b_ap_ack <= ap_const_logic_1;
        else 
            b_ap_ack <= ap_const_logic_0;
        end if; 
    end process;


    c_ap_ack_assign_proc : process(ap_start, ap_CS_fsm_state1, a_ap_vld, c_ap_vld, d_ap_vld_in_sig)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (d_ap_vld_in_sig = ap_const_logic_0) or (c_ap_vld = ap_const_logic_0) or (ap_const_logic_0 = a_ap_vld))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            c_ap_ack <= ap_const_logic_1;
        else 
            c_ap_ack <= ap_const_logic_0;
        end if; 
    end process;


    c_blk_n_assign_proc : process(ap_start, ap_CS_fsm_state1, c_ap_vld)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            c_blk_n <= c_ap_vld;
        else 
            c_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    d_ap_vld_in_sig_assign_proc : process(d_ap_vld, d_ap_vld_preg)
    begin
        if ((d_ap_vld = ap_const_logic_1)) then 
            d_ap_vld_in_sig <= d_ap_vld;
        else 
            d_ap_vld_in_sig <= d_ap_vld_preg;
        end if; 
    end process;


    d_blk_n_assign_proc : process(ap_start, ap_CS_fsm_state1, d_ap_vld)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            d_blk_n <= d_ap_vld;
        else 
            d_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    d_in_sig_assign_proc : process(d, d_preg, d_ap_vld)
    begin
        if ((d_ap_vld = ap_const_logic_1)) then 
            d_in_sig <= d;
        else 
            d_in_sig <= d_preg;
        end if; 
    end process;


    grp_fu_69_ce_assign_proc : process(ap_start, ap_CS_fsm_state1, a_ap_vld, c_ap_vld, d_ap_vld_in_sig, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or ((ap_const_logic_1 = ap_CS_fsm_state1) and ((ap_start = ap_const_logic_0) or (d_ap_vld_in_sig = ap_const_logic_0) or (c_ap_vld = ap_const_logic_0) or (ap_const_logic_0 = a_ap_vld))))) then 
            grp_fu_69_ce <= ap_const_logic_0;
        else 
            grp_fu_69_ce <= ap_const_logic_1;
        end if; 
    end process;

    p_y <= std_logic_vector(unsigned(d_in_sig) + unsigned(mul_ln3_reg_104));

    p_y_blk_n_assign_proc : process(p_y_ap_ack, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            p_y_blk_n <= p_y_ap_ack;
        else 
            p_y_blk_n <= ap_const_logic_1;
        end if; 
    end process;

end behav;
