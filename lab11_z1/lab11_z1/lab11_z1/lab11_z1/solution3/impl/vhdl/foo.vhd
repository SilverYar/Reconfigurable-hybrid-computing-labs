-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity foo is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    a_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    a_ce0 : OUT STD_LOGIC;
    a_we0 : OUT STD_LOGIC;
    a_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    a_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    a_ce1 : OUT STD_LOGIC;
    a_we1 : OUT STD_LOGIC;
    a_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    b_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    b_ce0 : OUT STD_LOGIC;
    b_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    b_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    b_ce1 : OUT STD_LOGIC;
    b_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    c_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    c_ce0 : OUT STD_LOGIC;
    c_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    c_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    c_ce1 : OUT STD_LOGIC;
    c_q1 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of foo is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "foo,hls_ip_2018_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.006000,HLS_SYN_LAT=13,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=31,HLS_SYN_LUT=263,HLS_VERSION=2018_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv5_4 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_const_lv4_2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_const_lv4_3 : STD_LOGIC_VECTOR (3 downto 0) := "0011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_fu_188_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_reg_241 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal exitcond_fu_182_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_4_fu_194_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_4_reg_256 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_s_fu_204_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_reg_262 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_1_3_fu_210_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_1_3_reg_277 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_2_fu_221_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_2_reg_282 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_3_fu_232_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_3_reg_297 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_reg_157 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal i_1_s_fu_198_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_1_1_fu_216_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_1_2_fu_227_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);


begin




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


    i_reg_157_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                i_reg_157 <= i_1_3_reg_277;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_reg_157 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_182_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                i_1_3_reg_277 <= i_1_3_fu_210_p2;
                tmp_4_reg_256 <= tmp_4_fu_194_p1;
                    tmp_reg_241(4 downto 0) <= tmp_fu_188_p1(4 downto 0);
                    tmp_s_reg_262(3 downto 1) <= tmp_s_fu_204_p1(3 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                    tmp_2_reg_282(0) <= tmp_2_fu_221_p1(0);    tmp_2_reg_282(3 downto 2) <= tmp_2_fu_221_p1(3 downto 2);
                    tmp_3_reg_297(3 downto 2) <= tmp_3_fu_232_p1(3 downto 2);
            end if;
        end if;
    end process;
    tmp_reg_241(63 downto 5) <= "00000000000000000000000000000000000000000000000000000000000";
    tmp_s_reg_262(0) <= '1';
    tmp_s_reg_262(63 downto 4) <= "000000000000000000000000000000000000000000000000000000000000";
    tmp_2_reg_282(1) <= '1';
    tmp_2_reg_282(63 downto 4) <= "000000000000000000000000000000000000000000000000000000000000";
    tmp_3_reg_297(1 downto 0) <= "11";
    tmp_3_reg_297(63 downto 4) <= "000000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond_fu_182_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((exitcond_fu_182_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;

    a_address0_assign_proc : process(tmp_reg_241, tmp_2_reg_282, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            a_address0 <= tmp_2_reg_282(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            a_address0 <= tmp_reg_241(4 - 1 downto 0);
        else 
            a_address0 <= "XXXX";
        end if; 
    end process;


    a_address1_assign_proc : process(tmp_s_reg_262, ap_CS_fsm_state3, tmp_3_reg_297, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            a_address1 <= tmp_3_reg_297(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            a_address1 <= tmp_s_reg_262(4 - 1 downto 0);
        else 
            a_address1 <= "XXXX";
        end if; 
    end process;


    a_ce0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            a_ce0 <= ap_const_logic_1;
        else 
            a_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    a_ce1_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            a_ce1 <= ap_const_logic_1;
        else 
            a_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    a_d0 <= std_logic_vector(unsigned(c_q0) + unsigned(b_q0));
    a_d1 <= std_logic_vector(unsigned(c_q1) + unsigned(b_q1));

    a_we0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            a_we0 <= ap_const_logic_1;
        else 
            a_we0 <= ap_const_logic_0;
        end if; 
    end process;


    a_we1_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            a_we1 <= ap_const_logic_1;
        else 
            a_we1 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_done_assign_proc : process(ap_CS_fsm_state2, exitcond_fu_182_p2)
    begin
        if (((exitcond_fu_182_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond_fu_182_p2)
    begin
        if (((exitcond_fu_182_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    b_address0_assign_proc : process(tmp_fu_188_p1, ap_CS_fsm_state2, tmp_2_fu_221_p1, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            b_address0 <= tmp_2_fu_221_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            b_address0 <= tmp_fu_188_p1(4 - 1 downto 0);
        else 
            b_address0 <= "XXXX";
        end if; 
    end process;


    b_address1_assign_proc : process(ap_CS_fsm_state2, tmp_s_fu_204_p1, ap_CS_fsm_state3, tmp_3_fu_232_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            b_address1 <= tmp_3_fu_232_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            b_address1 <= tmp_s_fu_204_p1(4 - 1 downto 0);
        else 
            b_address1 <= "XXXX";
        end if; 
    end process;


    b_ce0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            b_ce0 <= ap_const_logic_1;
        else 
            b_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    b_ce1_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            b_ce1 <= ap_const_logic_1;
        else 
            b_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    c_address0_assign_proc : process(tmp_fu_188_p1, ap_CS_fsm_state2, tmp_2_fu_221_p1, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            c_address0 <= tmp_2_fu_221_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            c_address0 <= tmp_fu_188_p1(4 - 1 downto 0);
        else 
            c_address0 <= "XXXX";
        end if; 
    end process;


    c_address1_assign_proc : process(ap_CS_fsm_state2, tmp_s_fu_204_p1, ap_CS_fsm_state3, tmp_3_fu_232_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            c_address1 <= tmp_3_fu_232_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            c_address1 <= tmp_s_fu_204_p1(4 - 1 downto 0);
        else 
            c_address1 <= "XXXX";
        end if; 
    end process;


    c_ce0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            c_ce0 <= ap_const_logic_1;
        else 
            c_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    c_ce1_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            c_ce1 <= ap_const_logic_1;
        else 
            c_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond_fu_182_p2 <= "1" when (i_reg_157 = ap_const_lv5_10) else "0";
    i_1_1_fu_216_p2 <= (tmp_4_reg_256 or ap_const_lv4_2);
    i_1_2_fu_227_p2 <= (tmp_4_reg_256 or ap_const_lv4_3);
    i_1_3_fu_210_p2 <= std_logic_vector(unsigned(ap_const_lv5_4) + unsigned(i_reg_157));
    i_1_s_fu_198_p2 <= (tmp_4_fu_194_p1 or ap_const_lv4_1);
    tmp_2_fu_221_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_1_1_fu_216_p2),64));
    tmp_3_fu_232_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_1_2_fu_227_p2),64));
    tmp_4_fu_194_p1 <= i_reg_157(4 - 1 downto 0);
    tmp_fu_188_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_157),64));
    tmp_s_fu_204_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_1_s_fu_198_p2),64));
end behav;
