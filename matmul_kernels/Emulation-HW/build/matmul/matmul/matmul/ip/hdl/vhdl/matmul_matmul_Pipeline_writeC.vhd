-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity matmul_matmul_Pipeline_writeC is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_gmem0_AWVALID : OUT STD_LOGIC;
    m_axi_gmem0_AWREADY : IN STD_LOGIC;
    m_axi_gmem0_AWADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem0_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem0_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem0_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem0_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem0_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem0_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem0_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem0_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem0_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_WVALID : OUT STD_LOGIC;
    m_axi_gmem0_WREADY : IN STD_LOGIC;
    m_axi_gmem0_WDATA : OUT STD_LOGIC_VECTOR (511 downto 0);
    m_axi_gmem0_WSTRB : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem0_WLAST : OUT STD_LOGIC;
    m_axi_gmem0_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_ARVALID : OUT STD_LOGIC;
    m_axi_gmem0_ARREADY : IN STD_LOGIC;
    m_axi_gmem0_ARADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem0_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem0_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem0_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem0_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem0_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem0_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem0_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem0_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem0_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_RVALID : IN STD_LOGIC;
    m_axi_gmem0_RREADY : OUT STD_LOGIC;
    m_axi_gmem0_RDATA : IN STD_LOGIC_VECTOR (511 downto 0);
    m_axi_gmem0_RLAST : IN STD_LOGIC;
    m_axi_gmem0_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_RFIFONUM : IN STD_LOGIC_VECTOR (8 downto 0);
    m_axi_gmem0_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem0_BVALID : IN STD_LOGIC;
    m_axi_gmem0_BREADY : OUT STD_LOGIC;
    m_axi_gmem0_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem0_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    sext_ln90 : IN STD_LOGIC_VECTOR (25 downto 0);
    C_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    C_V_ce0 : OUT STD_LOGIC;
    C_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    ap_ext_blocking_n : OUT STD_LOGIC;
    ap_str_blocking_n : OUT STD_LOGIC;
    ap_int_blocking_n : OUT STD_LOGIC );
end;


architecture behav of matmul_matmul_Pipeline_writeC is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv64_FFFFFFFFFFFFFFFF : STD_LOGIC_VECTOR (63 downto 0) := "1111111111111111111111111111111111111111111111111111111111111111";
    constant ap_const_lv496_lc_1 : STD_LOGIC_VECTOR (495 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv9_100 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";
    constant ap_const_lv32_1EF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111101111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal icmp_ln96_reg_333 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln96_reg_333_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state4_io : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln90_fu_138_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal gmem0_blk_n_W : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln90_reg_324 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln96_fu_215_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal C_V_load_reg_343 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_condition_exit_pp0_iter2_stage0 : STD_LOGIC;
    signal zext_ln96_fu_210_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal phi_ln96_fu_68 : STD_LOGIC_VECTOR (495 downto 0);
    signal select_ln96_fu_278_p3 : STD_LOGIC_VECTOR (495 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal i_fu_72 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_1_fu_172_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_fu_76 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_2_fu_221_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal itr_fu_80 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln90_fu_144_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal icmp_ln92_fu_160_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln94_fu_166_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln96_fu_180_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal j_1_fu_192_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_40_cast_fu_184_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln96_1_fu_200_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln96_fu_204_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal empty_26_fu_156_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_s_fu_261_p4 : STD_LOGIC_VECTOR (479 downto 0);
    signal tmp_1_fu_271_p3 : STD_LOGIC_VECTOR (495 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_ext_blocking_cur_n : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component matmul_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component matmul_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter1_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter2_stage0)) then 
                    ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    i_fu_72_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_72 <= ap_const_lv32_0;
                elsif (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (icmp_ln90_fu_138_p2 = ap_const_lv1_0))) then 
                    i_fu_72 <= i_1_fu_172_p3;
                end if;
            end if; 
        end if;
    end process;

    itr_fu_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    itr_fu_80 <= ap_const_lv9_0;
                elsif (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (icmp_ln90_fu_138_p2 = ap_const_lv1_0))) then 
                    itr_fu_80 <= add_ln90_fu_144_p2;
                end if;
            end if; 
        end if;
    end process;

    j_fu_76_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_76 <= ap_const_lv32_0;
                elsif (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (icmp_ln90_fu_138_p2 = ap_const_lv1_0))) then 
                    j_fu_76 <= j_2_fu_221_p2;
                end if;
            end if; 
        end if;
    end process;

    phi_ln96_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    phi_ln96_fu_68 <= ap_const_lv496_lc_1;
                elsif ((ap_enable_reg_pp0_iter3 = ap_const_logic_1)) then 
                    phi_ln96_fu_68 <= select_ln96_fu_278_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln90_reg_324 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                C_V_load_reg_343 <= C_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
                icmp_ln90_reg_324 <= icmp_ln90_fu_138_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln90_fu_138_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln96_reg_333 <= icmp_ln96_fu_215_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                icmp_ln96_reg_333_pp0_iter2_reg <= icmp_ln96_reg_333;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    C_V_address0 <= zext_ln96_fu_210_p1(8 - 1 downto 0);

    C_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            C_V_ce0 <= ap_const_logic_1;
        else 
            C_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln90_fu_144_p2 <= std_logic_vector(unsigned(itr_fu_80) + unsigned(ap_const_lv9_1));
    add_ln94_fu_166_p2 <= std_logic_vector(unsigned(i_fu_72) + unsigned(ap_const_lv32_1));
    add_ln96_fu_204_p2 <= std_logic_vector(unsigned(tmp_40_cast_fu_184_p3) + unsigned(trunc_ln96_1_fu_200_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_state4_io)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state4_io));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_state4_io)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state4_io));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state4_io_assign_proc : process(m_axi_gmem0_WREADY, icmp_ln96_reg_333_pp0_iter2_reg)
    begin
                ap_block_state4_io <= ((icmp_ln96_reg_333_pp0_iter2_reg = ap_const_lv1_1) and (m_axi_gmem0_WREADY = ap_const_logic_0));
    end process;

        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln90_fu_138_p2)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln90_fu_138_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_exit_pp0_iter2_stage0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_subdone, icmp_ln90_reg_324)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (icmp_ln90_reg_324 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_condition_exit_pp0_iter2_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter2_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter2_reg)
    begin
        if (((ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;
    ap_ext_blocking_cur_n <= (gmem0_blk_n_W);
    ap_ext_blocking_n <= (ap_ext_blocking_cur_n and ap_const_logic_1);

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_int_blocking_n <= (ap_const_logic_1 and ap_const_logic_1);
    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;

    ap_str_blocking_n <= (ap_const_logic_1 and ap_const_logic_1);
    empty_26_fu_156_p1 <= itr_fu_80(5 - 1 downto 0);

    gmem0_blk_n_W_assign_proc : process(ap_enable_reg_pp0_iter3, m_axi_gmem0_WREADY, icmp_ln96_reg_333_pp0_iter2_reg, ap_block_pp0_stage0)
    begin
        if (((icmp_ln96_reg_333_pp0_iter2_reg = ap_const_lv1_1) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            gmem0_blk_n_W <= m_axi_gmem0_WREADY;
        else 
            gmem0_blk_n_W <= ap_const_logic_1;
        end if; 
    end process;

    i_1_fu_172_p3 <= 
        add_ln94_fu_166_p2 when (icmp_ln92_fu_160_p2(0) = '1') else 
        i_fu_72;
    icmp_ln90_fu_138_p2 <= "1" when (itr_fu_80 = ap_const_lv9_100) else "0";
    icmp_ln92_fu_160_p2 <= "1" when (j_fu_76 = ap_const_lv32_10) else "0";
    icmp_ln96_fu_215_p2 <= "1" when (empty_26_fu_156_p1 = ap_const_lv5_1F) else "0";
    j_1_fu_192_p3 <= 
        ap_const_lv32_0 when (icmp_ln92_fu_160_p2(0) = '1') else 
        j_fu_76;
    j_2_fu_221_p2 <= std_logic_vector(unsigned(j_1_fu_192_p3) + unsigned(ap_const_lv32_1));
    m_axi_gmem0_ARADDR <= ap_const_lv32_0;
    m_axi_gmem0_ARBURST <= ap_const_lv2_0;
    m_axi_gmem0_ARCACHE <= ap_const_lv4_0;
    m_axi_gmem0_ARID <= ap_const_lv1_0;
    m_axi_gmem0_ARLEN <= ap_const_lv32_0;
    m_axi_gmem0_ARLOCK <= ap_const_lv2_0;
    m_axi_gmem0_ARPROT <= ap_const_lv3_0;
    m_axi_gmem0_ARQOS <= ap_const_lv4_0;
    m_axi_gmem0_ARREGION <= ap_const_lv4_0;
    m_axi_gmem0_ARSIZE <= ap_const_lv3_0;
    m_axi_gmem0_ARUSER <= ap_const_lv1_0;
    m_axi_gmem0_ARVALID <= ap_const_logic_0;
    m_axi_gmem0_AWADDR <= ap_const_lv32_0;
    m_axi_gmem0_AWBURST <= ap_const_lv2_0;
    m_axi_gmem0_AWCACHE <= ap_const_lv4_0;
    m_axi_gmem0_AWID <= ap_const_lv1_0;
    m_axi_gmem0_AWLEN <= ap_const_lv32_0;
    m_axi_gmem0_AWLOCK <= ap_const_lv2_0;
    m_axi_gmem0_AWPROT <= ap_const_lv3_0;
    m_axi_gmem0_AWQOS <= ap_const_lv4_0;
    m_axi_gmem0_AWREGION <= ap_const_lv4_0;
    m_axi_gmem0_AWSIZE <= ap_const_lv3_0;
    m_axi_gmem0_AWUSER <= ap_const_lv1_0;
    m_axi_gmem0_AWVALID <= ap_const_logic_0;
    m_axi_gmem0_BREADY <= ap_const_logic_0;
    m_axi_gmem0_RREADY <= ap_const_logic_0;
    m_axi_gmem0_WDATA <= (C_V_load_reg_343 & phi_ln96_fu_68);
    m_axi_gmem0_WID <= ap_const_lv1_0;
    m_axi_gmem0_WLAST <= ap_const_logic_0;
    m_axi_gmem0_WSTRB <= ap_const_lv64_FFFFFFFFFFFFFFFF;
    m_axi_gmem0_WUSER <= ap_const_lv1_0;

    m_axi_gmem0_WVALID_assign_proc : process(ap_enable_reg_pp0_iter3, icmp_ln96_reg_333_pp0_iter2_reg, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln96_reg_333_pp0_iter2_reg = ap_const_lv1_1) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            m_axi_gmem0_WVALID <= ap_const_logic_1;
        else 
            m_axi_gmem0_WVALID <= ap_const_logic_0;
        end if; 
    end process;

    select_ln96_fu_278_p3 <= 
        ap_const_lv496_lc_1 when (icmp_ln96_reg_333_pp0_iter2_reg(0) = '1') else 
        tmp_1_fu_271_p3;
    tmp_1_fu_271_p3 <= (C_V_load_reg_343 & tmp_s_fu_261_p4);
    tmp_40_cast_fu_184_p3 <= (trunc_ln96_fu_180_p1 & ap_const_lv4_0);
    tmp_s_fu_261_p4 <= phi_ln96_fu_68(495 downto 16);
    trunc_ln96_1_fu_200_p1 <= j_1_fu_192_p3(8 - 1 downto 0);
    trunc_ln96_fu_180_p1 <= i_1_fu_172_p3(4 - 1 downto 0);
    zext_ln96_fu_210_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln96_fu_204_p2),32));
end behav;
