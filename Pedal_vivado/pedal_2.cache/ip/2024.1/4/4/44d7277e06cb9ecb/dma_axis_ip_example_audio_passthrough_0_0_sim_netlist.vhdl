-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Tue Mar 31 15:35:00 2026
-- Host        : Theodore running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dma_axis_ip_example_audio_passthrough_0_0_sim_netlist.vhdl
-- Design      : dma_axis_ip_example_audio_passthrough_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_ctrl_s_axi is
  port (
    ap_rst_n_inv : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    ap_start : out STD_LOGIC;
    s_axi_ctrl_BVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_ctrl_RVALID : out STD_LOGIC;
    \int_switches_reg[1]_0\ : out STD_LOGIC;
    int_ap_start_reg_0 : out STD_LOGIC;
    s_axi_ctrl_RDATA : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ap_clk : in STD_LOGIC;
    s_axi_ctrl_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_ARVALID : in STD_LOGIC;
    s_axi_ctrl_WVALID : in STD_LOGIC;
    s_axi_ctrl_WSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    s_axi_ctrl_BREADY : in STD_LOGIC;
    s_axi_ctrl_AWVALID : in STD_LOGIC;
    s_axi_ctrl_RREADY : in STD_LOGIC;
    s_axi_ctrl_WDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_rst_n : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter1_reg : in STD_LOGIC;
    ap_block_pp0_stage0_11001 : in STD_LOGIC;
    in_stream_TLAST_int_regslice : in STD_LOGIC;
    s_axi_ctrl_AWADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_condition_exit_pp0_iter0_stage0 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_ctrl_s_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_ctrl_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal ap_idle : STD_LOGIC;
  signal \^ap_rst_n_inv\ : STD_LOGIC;
  signal \^ap_start\ : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal auto_restart_status_i_1_n_0 : STD_LOGIC;
  signal auto_restart_status_reg_n_0 : STD_LOGIC;
  signal int_ap_ready : STD_LOGIC;
  signal int_ap_ready_i_1_n_0 : STD_LOGIC;
  signal int_ap_start1 : STD_LOGIC;
  signal int_ap_start_i_1_n_0 : STD_LOGIC;
  signal int_auto_restart_i_1_n_0 : STD_LOGIC;
  signal int_auto_restart_i_2_n_0 : STD_LOGIC;
  signal int_gie_i_1_n_0 : STD_LOGIC;
  signal int_gie_reg_n_0 : STD_LOGIC;
  signal int_ier10_out : STD_LOGIC;
  signal \int_ier_reg_n_0_[0]\ : STD_LOGIC;
  signal int_interrupt0 : STD_LOGIC;
  signal int_isr7_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[1]\ : STD_LOGIC;
  signal \int_switches[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_switches[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_switches[2]_i_1_n_0\ : STD_LOGIC;
  signal \int_switches[3]_i_1_n_0\ : STD_LOGIC;
  signal \int_switches[4]_i_1_n_0\ : STD_LOGIC;
  signal \int_switches[5]_i_1_n_0\ : STD_LOGIC;
  signal \int_switches[6]_i_1_n_0\ : STD_LOGIC;
  signal \int_switches[7]_i_1_n_0\ : STD_LOGIC;
  signal \int_switches[7]_i_2_n_0\ : STD_LOGIC;
  signal \int_switches_reg_n_0_[5]\ : STD_LOGIC;
  signal \int_switches_reg_n_0_[6]\ : STD_LOGIC;
  signal \int_switches_reg_n_0_[7]\ : STD_LOGIC;
  signal int_task_ap_done : STD_LOGIC;
  signal \int_task_ap_done0__4\ : STD_LOGIC;
  signal int_task_ap_done_i_1_n_0 : STD_LOGIC;
  signal int_task_ap_done_i_2_n_0 : STD_LOGIC;
  signal \^interrupt\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal rdata : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_ctrl_bvalid\ : STD_LOGIC;
  signal \^s_axi_ctrl_rvalid\ : STD_LOGIC;
  signal switches : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[4]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter1_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of auto_restart_status_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of int_ap_idle_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_switches[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \int_switches[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \int_switches[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \int_switches[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \int_switches[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \int_switches[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \int_switches[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \int_switches[7]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of int_task_ap_done_i_2 : label is "soft_lutpair0";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  ap_rst_n_inv <= \^ap_rst_n_inv\;
  ap_start <= \^ap_start\;
  interrupt <= \^interrupt\;
  s_axi_ctrl_BVALID <= \^s_axi_ctrl_bvalid\;
  s_axi_ctrl_RVALID <= \^s_axi_ctrl_rvalid\;
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F277"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_ctrl_ARVALID,
      I2 => s_axi_ctrl_RREADY,
      I3 => \^s_axi_ctrl_rvalid\,
      O => \FSM_onehot_rstate[1]_i_1_n_0\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_ctrl_RREADY,
      I1 => \^s_axi_ctrl_rvalid\,
      I2 => s_axi_ctrl_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      O => \FSM_onehot_rstate[2]_i_1_n_0\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_0\,
      Q => \^s_axi_ctrl_rvalid\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0C1D1D"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_ctrl_AWVALID,
      I3 => s_axi_ctrl_BREADY,
      I4 => \^s_axi_ctrl_bvalid\,
      O => \FSM_onehot_wstate[1]_i_1_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_ctrl_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_ctrl_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_ctrl_BREADY,
      I1 => \^s_axi_ctrl_bvalid\,
      I2 => s_axi_ctrl_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[3]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[2]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_0\,
      Q => \^s_axi_ctrl_bvalid\,
      R => \^ap_rst_n_inv\
    );
ack_in_t_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^ap_rst_n_inv\
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^ap_start\,
      I1 => ap_block_pp0_stage0_11001,
      I2 => ap_enable_reg_pp0_iter1,
      O => int_ap_start_reg_0
    );
auto_restart_status_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAA"
    )
        port map (
      I0 => p_1_in(7),
      I1 => \^ap_start\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => auto_restart_status_reg_n_0,
      O => auto_restart_status_i_1_n_0
    );
auto_restart_status_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => auto_restart_status_i_1_n_0,
      Q => auto_restart_status_reg_n_0,
      R => \^ap_rst_n_inv\
    );
\data_p1[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => switches(1),
      I1 => switches(3),
      I2 => switches(0),
      I3 => switches(2),
      I4 => switches(4),
      O => \int_switches_reg[1]_0\
    );
int_ap_idle_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ap_start\,
      I1 => ap_enable_reg_pp0_iter1,
      O => ap_idle
    );
int_ap_idle_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_idle,
      Q => p_1_in(2),
      R => \^ap_rst_n_inv\
    );
int_ap_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400040"
    )
        port map (
      I0 => p_1_in(7),
      I1 => \^ap_start\,
      I2 => in_stream_TLAST_int_regslice,
      I3 => ap_block_pp0_stage0_11001,
      I4 => \int_task_ap_done0__4\,
      I5 => int_ap_ready,
      O => int_ap_ready_i_1_n_0
    );
int_ap_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_ready_i_1_n_0,
      Q => int_ap_ready,
      R => \^ap_rst_n_inv\
    );
int_ap_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEF00EF00EF00"
    )
        port map (
      I0 => p_1_in(7),
      I1 => ap_block_pp0_stage0_11001,
      I2 => in_stream_TLAST_int_regslice,
      I3 => \^ap_start\,
      I4 => int_ap_start1,
      I5 => s_axi_ctrl_WDATA(0),
      O => int_ap_start_i_1_n_0
    );
int_ap_start_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[3]\,
      I1 => \waddr_reg_n_0_[2]\,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => s_axi_ctrl_WVALID,
      I4 => \waddr_reg_n_0_[4]\,
      I5 => s_axi_ctrl_WSTRB(0),
      O => int_ap_start1
    );
int_ap_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_start_i_1_n_0,
      Q => \^ap_start\,
      R => \^ap_rst_n_inv\
    );
int_auto_restart_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(7),
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => int_auto_restart_i_2_n_0,
      I4 => p_1_in(7),
      O => int_auto_restart_i_1_n_0
    );
int_auto_restart_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s_axi_ctrl_WSTRB(0),
      I1 => \waddr_reg_n_0_[4]\,
      I2 => s_axi_ctrl_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      O => int_auto_restart_i_2_n_0
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_0,
      Q => p_1_in(7),
      R => \^ap_rst_n_inv\
    );
int_gie_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(0),
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => int_auto_restart_i_2_n_0,
      I4 => int_gie_reg_n_0,
      O => int_gie_i_1_n_0
    );
int_gie_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_0,
      Q => int_gie_reg_n_0,
      R => \^ap_rst_n_inv\
    );
\int_ier[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[2]\,
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => s_axi_ctrl_WVALID,
      I4 => \waddr_reg_n_0_[4]\,
      I5 => s_axi_ctrl_WSTRB(0),
      O => int_ier10_out
    );
\int_ier_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_ier10_out,
      D => s_axi_ctrl_WDATA(0),
      Q => \int_ier_reg_n_0_[0]\,
      R => \^ap_rst_n_inv\
    );
\int_ier_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_ier10_out,
      D => s_axi_ctrl_WDATA(1),
      Q => p_0_in,
      R => \^ap_rst_n_inv\
    );
int_interrupt_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \int_isr_reg_n_0_[0]\,
      I1 => \int_isr_reg_n_0_[1]\,
      I2 => int_gie_reg_n_0,
      O => int_interrupt0
    );
int_interrupt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_interrupt0,
      Q => \^interrupt\,
      R => \^ap_rst_n_inv\
    );
\int_isr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7777778F888888"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(0),
      I1 => int_isr7_out,
      I2 => ap_block_pp0_stage0_11001,
      I3 => ap_loop_exit_ready_pp0_iter1_reg,
      I4 => \int_ier_reg_n_0_[0]\,
      I5 => \int_isr_reg_n_0_[0]\,
      O => \int_isr[0]_i_1_n_0\
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[3]\,
      I1 => \waddr_reg_n_0_[2]\,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => s_axi_ctrl_WVALID,
      I4 => \waddr_reg_n_0_[4]\,
      I5 => s_axi_ctrl_WSTRB(0),
      O => int_isr7_out
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(1),
      I1 => int_isr7_out,
      I2 => p_0_in,
      I3 => ap_condition_exit_pp0_iter0_stage0,
      I4 => \int_isr_reg_n_0_[1]\,
      O => \int_isr[1]_i_1_n_0\
    );
\int_isr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[0]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[0]\,
      R => \^ap_rst_n_inv\
    );
\int_isr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[1]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[1]\,
      R => \^ap_rst_n_inv\
    );
\int_switches[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(0),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => switches(0),
      O => \int_switches[0]_i_1_n_0\
    );
\int_switches[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(1),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => switches(1),
      O => \int_switches[1]_i_1_n_0\
    );
\int_switches[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(2),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => switches(2),
      O => \int_switches[2]_i_1_n_0\
    );
\int_switches[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(3),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => switches(3),
      O => \int_switches[3]_i_1_n_0\
    );
\int_switches[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(4),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => switches(4),
      O => \int_switches[4]_i_1_n_0\
    );
\int_switches[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(5),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => \int_switches_reg_n_0_[5]\,
      O => \int_switches[5]_i_1_n_0\
    );
\int_switches[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(6),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => \int_switches_reg_n_0_[6]\,
      O => \int_switches[6]_i_1_n_0\
    );
\int_switches[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[2]\,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      I4 => s_axi_ctrl_WVALID,
      O => \int_switches[7]_i_1_n_0\
    );
\int_switches[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(7),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => \int_switches_reg_n_0_[7]\,
      O => \int_switches[7]_i_2_n_0\
    );
\int_switches_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_switches[7]_i_1_n_0\,
      D => \int_switches[0]_i_1_n_0\,
      Q => switches(0),
      R => \^ap_rst_n_inv\
    );
\int_switches_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_switches[7]_i_1_n_0\,
      D => \int_switches[1]_i_1_n_0\,
      Q => switches(1),
      R => \^ap_rst_n_inv\
    );
\int_switches_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_switches[7]_i_1_n_0\,
      D => \int_switches[2]_i_1_n_0\,
      Q => switches(2),
      R => \^ap_rst_n_inv\
    );
\int_switches_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_switches[7]_i_1_n_0\,
      D => \int_switches[3]_i_1_n_0\,
      Q => switches(3),
      R => \^ap_rst_n_inv\
    );
\int_switches_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_switches[7]_i_1_n_0\,
      D => \int_switches[4]_i_1_n_0\,
      Q => switches(4),
      R => \^ap_rst_n_inv\
    );
\int_switches_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_switches[7]_i_1_n_0\,
      D => \int_switches[5]_i_1_n_0\,
      Q => \int_switches_reg_n_0_[5]\,
      R => \^ap_rst_n_inv\
    );
\int_switches_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_switches[7]_i_1_n_0\,
      D => \int_switches[6]_i_1_n_0\,
      Q => \int_switches_reg_n_0_[6]\,
      R => \^ap_rst_n_inv\
    );
\int_switches_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_switches[7]_i_1_n_0\,
      D => \int_switches[7]_i_2_n_0\,
      Q => \int_switches_reg_n_0_[7]\,
      R => \^ap_rst_n_inv\
    );
int_task_ap_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF04FFFFFF04FF04"
    )
        port map (
      I0 => auto_restart_status_reg_n_0,
      I1 => ap_loop_exit_ready_pp0_iter1_reg,
      I2 => ap_block_pp0_stage0_11001,
      I3 => int_task_ap_done_i_2_n_0,
      I4 => \int_task_ap_done0__4\,
      I5 => int_task_ap_done,
      O => int_task_ap_done_i_1_n_0
    );
int_task_ap_done_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => p_1_in(2),
      I1 => auto_restart_status_reg_n_0,
      I2 => \^ap_start\,
      I3 => ap_enable_reg_pp0_iter1,
      O => int_task_ap_done_i_2_n_0
    );
int_task_ap_done_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => s_axi_ctrl_ARADDR(1),
      I1 => s_axi_ctrl_ARADDR(0),
      I2 => s_axi_ctrl_ARADDR(3),
      I3 => s_axi_ctrl_ARADDR(2),
      I4 => s_axi_ctrl_ARADDR(4),
      I5 => ar_hs,
      O => \int_task_ap_done0__4\
    );
int_task_ap_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_task_ap_done_i_1_n_0,
      Q => int_task_ap_done,
      R => \^ap_rst_n_inv\
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000CAAAA00000000"
    )
        port map (
      I0 => \rdata[0]_i_2_n_0\,
      I1 => switches(0),
      I2 => s_axi_ctrl_ARADDR(3),
      I3 => s_axi_ctrl_ARADDR(2),
      I4 => s_axi_ctrl_ARADDR(4),
      I5 => \rdata[7]_i_2_n_0\,
      O => rdata(0)
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => int_gie_reg_n_0,
      I1 => \int_isr_reg_n_0_[0]\,
      I2 => s_axi_ctrl_ARADDR(2),
      I3 => s_axi_ctrl_ARADDR(3),
      I4 => \^ap_start\,
      I5 => \int_ier_reg_n_0_[0]\,
      O => \rdata[0]_i_2_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000CAAAA00000000"
    )
        port map (
      I0 => \rdata[1]_i_2_n_0\,
      I1 => switches(1),
      I2 => s_axi_ctrl_ARADDR(3),
      I3 => s_axi_ctrl_ARADDR(2),
      I4 => s_axi_ctrl_ARADDR(4),
      I5 => \rdata[7]_i_2_n_0\,
      O => rdata(1)
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC0A0C0A"
    )
        port map (
      I0 => int_task_ap_done,
      I1 => p_0_in,
      I2 => s_axi_ctrl_ARADDR(2),
      I3 => s_axi_ctrl_ARADDR(3),
      I4 => \int_isr_reg_n_0_[1]\,
      O => \rdata[1]_i_2_n_0\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C000A00000000"
    )
        port map (
      I0 => p_1_in(2),
      I1 => switches(2),
      I2 => s_axi_ctrl_ARADDR(3),
      I3 => s_axi_ctrl_ARADDR(2),
      I4 => s_axi_ctrl_ARADDR(4),
      I5 => \rdata[7]_i_2_n_0\,
      O => rdata(2)
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C000A00000000"
    )
        port map (
      I0 => int_ap_ready,
      I1 => switches(3),
      I2 => s_axi_ctrl_ARADDR(3),
      I3 => s_axi_ctrl_ARADDR(2),
      I4 => s_axi_ctrl_ARADDR(4),
      I5 => \rdata[7]_i_2_n_0\,
      O => rdata(3)
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => s_axi_ctrl_ARADDR(1),
      I1 => s_axi_ctrl_ARADDR(0),
      I2 => s_axi_ctrl_ARADDR(4),
      I3 => s_axi_ctrl_ARADDR(2),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => switches(4),
      O => rdata(4)
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => s_axi_ctrl_ARADDR(1),
      I1 => s_axi_ctrl_ARADDR(0),
      I2 => s_axi_ctrl_ARADDR(4),
      I3 => s_axi_ctrl_ARADDR(2),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => \int_switches_reg_n_0_[5]\,
      O => rdata(5)
    );
\rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => s_axi_ctrl_ARADDR(1),
      I1 => s_axi_ctrl_ARADDR(0),
      I2 => s_axi_ctrl_ARADDR(4),
      I3 => s_axi_ctrl_ARADDR(2),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => \int_switches_reg_n_0_[6]\,
      O => rdata(6)
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C000A00000000"
    )
        port map (
      I0 => p_1_in(7),
      I1 => \int_switches_reg_n_0_[7]\,
      I2 => s_axi_ctrl_ARADDR(3),
      I3 => s_axi_ctrl_ARADDR(2),
      I4 => s_axi_ctrl_ARADDR(4),
      I5 => \rdata[7]_i_2_n_0\,
      O => rdata(7)
    );
\rdata[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_ctrl_ARADDR(1),
      I1 => s_axi_ctrl_ARADDR(0),
      O => \rdata[7]_i_2_n_0\
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_ctrl_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      O => ar_hs
    );
\rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => s_axi_ctrl_ARADDR(3),
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => s_axi_ctrl_ARADDR(4),
      I3 => s_axi_ctrl_ARADDR(0),
      I4 => s_axi_ctrl_ARADDR(1),
      I5 => \^interrupt\,
      O => rdata(9)
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(0),
      Q => s_axi_ctrl_RDATA(0),
      R => '0'
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(1),
      Q => s_axi_ctrl_RDATA(1),
      R => '0'
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(2),
      Q => s_axi_ctrl_RDATA(2),
      R => '0'
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(3),
      Q => s_axi_ctrl_RDATA(3),
      R => '0'
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(4),
      Q => s_axi_ctrl_RDATA(4),
      R => '0'
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(5),
      Q => s_axi_ctrl_RDATA(5),
      R => '0'
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(6),
      Q => s_axi_ctrl_RDATA(6),
      R => '0'
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(7),
      Q => s_axi_ctrl_RDATA(7),
      R => '0'
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(9),
      Q => s_axi_ctrl_RDATA(8),
      R => '0'
    );
\waddr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_ctrl_AWVALID,
      O => waddr
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_ctrl_AWADDR(0),
      Q => \waddr_reg_n_0_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_ctrl_AWADDR(1),
      Q => \waddr_reg_n_0_[3]\,
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_ctrl_AWADDR(2),
      Q => \waddr_reg_n_0_[4]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both is
  port (
    ack_in_t_reg_0 : out STD_LOGIC;
    sub_ln27_fu_181_p2 : out STD_LOGIC_VECTOR ( 30 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \data_p1_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : out STD_LOGIC_VECTOR ( 30 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    in_stream_TREADY_int_regslice : in STD_LOGIC;
    in_stream_TVALID : in STD_LOGIC;
    in_stream_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_p2_reg[1]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ack_in_t_i_2_n_0 : STD_LOGIC;
  signal \^ack_in_t_reg_0\ : STD_LOGIC;
  signal \data_p1[16]_i_10_n_0\ : STD_LOGIC;
  signal \data_p1[16]_i_3_n_0\ : STD_LOGIC;
  signal \data_p1[16]_i_4_n_0\ : STD_LOGIC;
  signal \data_p1[16]_i_5_n_0\ : STD_LOGIC;
  signal \data_p1[16]_i_6_n_0\ : STD_LOGIC;
  signal \data_p1[16]_i_7_n_0\ : STD_LOGIC;
  signal \data_p1[16]_i_8_n_0\ : STD_LOGIC;
  signal \data_p1[16]_i_9_n_0\ : STD_LOGIC;
  signal \data_p1[24]_i_10_n_0\ : STD_LOGIC;
  signal \data_p1[24]_i_3_n_0\ : STD_LOGIC;
  signal \data_p1[24]_i_4_n_0\ : STD_LOGIC;
  signal \data_p1[24]_i_5_n_0\ : STD_LOGIC;
  signal \data_p1[24]_i_6_n_0\ : STD_LOGIC;
  signal \data_p1[24]_i_7_n_0\ : STD_LOGIC;
  signal \data_p1[24]_i_8_n_0\ : STD_LOGIC;
  signal \data_p1[24]_i_9_n_0\ : STD_LOGIC;
  signal \data_p1[31]_i_10_n_0\ : STD_LOGIC;
  signal \data_p1[31]_i_11_n_0\ : STD_LOGIC;
  signal \data_p1[31]_i_5_n_0\ : STD_LOGIC;
  signal \data_p1[31]_i_6_n_0\ : STD_LOGIC;
  signal \data_p1[31]_i_7_n_0\ : STD_LOGIC;
  signal \data_p1[31]_i_8_n_0\ : STD_LOGIC;
  signal \data_p1[31]_i_9_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_10_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_11_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_3_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_4_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_5_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_6_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_7_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_8_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_9_n_0\ : STD_LOGIC;
  signal \data_p1_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \data_p1_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \data_p1_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \data_p1_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \data_p1_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \data_p1_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \data_p1_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \data_p1_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \data_p1_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \data_p1_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \data_p1_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \data_p1_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \data_p1_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \data_p1_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \^data_p1_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data_p1_reg[31]_i_4_n_2\ : STD_LOGIC;
  signal \data_p1_reg[31]_i_4_n_3\ : STD_LOGIC;
  signal \data_p1_reg[31]_i_4_n_4\ : STD_LOGIC;
  signal \data_p1_reg[31]_i_4_n_5\ : STD_LOGIC;
  signal \data_p1_reg[31]_i_4_n_6\ : STD_LOGIC;
  signal \data_p1_reg[31]_i_4_n_7\ : STD_LOGIC;
  signal \data_p1_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \data_p1_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \data_p1_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \data_p1_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \data_p1_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \data_p1_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \data_p1_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[19]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[23]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[24]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[25]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[26]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[27]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[28]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[29]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[30]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[31]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[9]\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^sub_ln27_fu_181_p2\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \NLW_data_p1_reg[31]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_data_p1_reg[31]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__6\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:00,TWO:01,ONE:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:00,TWO:01,ONE:10";
  attribute SOFT_HLUTNM of ack_in_t_i_2 : label is "soft_lutpair7";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \data_p1_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \data_p1_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \data_p1_reg[31]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \data_p1_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \data_p2[10]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_p2[11]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_p2[12]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_p2[13]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_p2[14]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_p2[15]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_p2[16]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_p2[17]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_p2[18]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_p2[19]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_p2[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_p2[20]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_p2[21]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_p2[22]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_p2[23]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_p2[24]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_p2[25]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_p2[26]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_p2[27]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_p2[28]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_p2[29]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_p2[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_p2[30]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_p2[31]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_p2[3]_i_1__3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_p2[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_p2[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_p2[7]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_p2[8]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data_p2[9]_i_1\ : label is "soft_lutpair19";
begin
  Q(0) <= \^q\(0);
  ack_in_t_reg_0 <= \^ack_in_t_reg_0\;
  \data_p1_reg[31]_0\(31 downto 0) <= \^data_p1_reg[31]_0\(31 downto 0);
  sub_ln27_fu_181_p2(30 downto 0) <= \^sub_ln27_fu_181_p2\(30 downto 0);
\FSM_sequential_state[0]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0230"
    )
        port map (
      I0 => in_stream_TVALID,
      I1 => in_stream_TREADY_int_regslice,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCC3A0"
    )
        port map (
      I0 => \^ack_in_t_reg_0\,
      I1 => in_stream_TREADY_int_regslice,
      I2 => in_stream_TVALID,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      R => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
ack_in_t_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFAA2FF"
    )
        port map (
      I0 => \^ack_in_t_reg_0\,
      I1 => in_stream_TVALID,
      I2 => in_stream_TREADY_int_regslice,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => ack_in_t_i_2_n_0
    );
ack_in_t_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ack_in_t_i_2_n_0,
      Q => \^ack_in_t_reg_0\,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[0]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(0),
      O => p_0_in(0)
    );
\data_p1[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[10]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(10),
      O => p_0_in(10)
    );
\data_p1[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[11]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(11),
      O => p_0_in(11)
    );
\data_p1[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[12]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(12),
      O => p_0_in(12)
    );
\data_p1[13]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[13]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(13),
      O => p_0_in(13)
    );
\data_p1[14]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[14]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(14),
      O => p_0_in(14)
    );
\data_p1[15]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[15]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(15),
      O => p_0_in(15)
    );
\data_p1[16]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(9),
      O => \data_p1[16]_i_10_n_0\
    );
\data_p1[16]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[16]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(16),
      O => p_0_in(16)
    );
\data_p1[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(16),
      O => \data_p1[16]_i_3_n_0\
    );
\data_p1[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(15),
      O => \data_p1[16]_i_4_n_0\
    );
\data_p1[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(14),
      O => \data_p1[16]_i_5_n_0\
    );
\data_p1[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(13),
      O => \data_p1[16]_i_6_n_0\
    );
\data_p1[16]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(12),
      O => \data_p1[16]_i_7_n_0\
    );
\data_p1[16]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(11),
      O => \data_p1[16]_i_8_n_0\
    );
\data_p1[16]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(10),
      O => \data_p1[16]_i_9_n_0\
    );
\data_p1[17]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[17]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(17),
      O => p_0_in(17)
    );
\data_p1[18]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[18]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(18),
      O => p_0_in(18)
    );
\data_p1[19]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[19]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(19),
      O => p_0_in(19)
    );
\data_p1[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[1]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(1),
      O => p_0_in(1)
    );
\data_p1[20]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[20]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(20),
      O => p_0_in(20)
    );
\data_p1[21]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[21]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(21),
      O => p_0_in(21)
    );
\data_p1[22]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[22]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(22),
      O => p_0_in(22)
    );
\data_p1[23]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[23]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(23),
      O => p_0_in(23)
    );
\data_p1[24]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(17),
      O => \data_p1[24]_i_10_n_0\
    );
\data_p1[24]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[24]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(24),
      O => p_0_in(24)
    );
\data_p1[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(24),
      O => \data_p1[24]_i_3_n_0\
    );
\data_p1[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(23),
      O => \data_p1[24]_i_4_n_0\
    );
\data_p1[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(22),
      O => \data_p1[24]_i_5_n_0\
    );
\data_p1[24]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(21),
      O => \data_p1[24]_i_6_n_0\
    );
\data_p1[24]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(20),
      O => \data_p1[24]_i_7_n_0\
    );
\data_p1[24]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(19),
      O => \data_p1[24]_i_8_n_0\
    );
\data_p1[24]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(18),
      O => \data_p1[24]_i_9_n_0\
    );
\data_p1[25]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[25]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(25),
      O => p_0_in(25)
    );
\data_p1[26]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[26]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(26),
      O => p_0_in(26)
    );
\data_p1[27]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[27]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(27),
      O => p_0_in(27)
    );
\data_p1[28]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[28]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(28),
      O => p_0_in(28)
    );
\data_p1[29]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[29]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(29),
      O => p_0_in(29)
    );
\data_p1[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[2]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(2),
      O => p_0_in(2)
    );
\data_p1[30]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[30]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(30),
      O => p_0_in(30)
    );
\data_p1[31]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(26),
      O => \data_p1[31]_i_10_n_0\
    );
\data_p1[31]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(25),
      O => \data_p1[31]_i_11_n_0\
    );
\data_p1[31]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A8C"
    )
        port map (
      I0 => in_stream_TREADY_int_regslice,
      I1 => in_stream_TVALID,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => load_p1
    );
\data_p1[31]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[31]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(31),
      O => p_0_in(31)
    );
\data_p1[31]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(31),
      O => \data_p1[31]_i_5_n_0\
    );
\data_p1[31]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(30),
      O => \data_p1[31]_i_6_n_0\
    );
\data_p1[31]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(29),
      O => \data_p1[31]_i_7_n_0\
    );
\data_p1[31]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(28),
      O => \data_p1[31]_i_8_n_0\
    );
\data_p1[31]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(27),
      O => \data_p1[31]_i_9_n_0\
    );
\data_p1[3]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[3]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(3),
      O => p_0_in(3)
    );
\data_p1[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[4]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(4),
      O => p_0_in(4)
    );
\data_p1[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[5]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(5),
      O => p_0_in(5)
    );
\data_p1[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[6]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(6),
      O => p_0_in(6)
    );
\data_p1[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[7]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(7),
      O => p_0_in(7)
    );
\data_p1[8]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(2),
      O => \data_p1[8]_i_10_n_0\
    );
\data_p1[8]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(1),
      O => \data_p1[8]_i_11_n_0\
    );
\data_p1[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[8]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(8),
      O => p_0_in(8)
    );
\data_p1[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(0),
      O => \data_p1[8]_i_3_n_0\
    );
\data_p1[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(8),
      O => \data_p1[8]_i_4_n_0\
    );
\data_p1[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(7),
      O => \data_p1[8]_i_5_n_0\
    );
\data_p1[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(6),
      O => \data_p1[8]_i_6_n_0\
    );
\data_p1[8]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(5),
      O => \data_p1[8]_i_7_n_0\
    );
\data_p1[8]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(4),
      O => \data_p1[8]_i_8_n_0\
    );
\data_p1[8]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(3),
      O => \data_p1[8]_i_9_n_0\
    );
\data_p1[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[9]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TDATA(9),
      O => p_0_in(9)
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(0),
      Q => \^data_p1_reg[31]_0\(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(10),
      Q => \^data_p1_reg[31]_0\(10),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(11),
      Q => \^data_p1_reg[31]_0\(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(12),
      Q => \^data_p1_reg[31]_0\(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(13),
      Q => \^data_p1_reg[31]_0\(13),
      R => '0'
    );
\data_p1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(14),
      Q => \^data_p1_reg[31]_0\(14),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(15),
      Q => \^data_p1_reg[31]_0\(15),
      R => '0'
    );
\data_p1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(16),
      Q => \^data_p1_reg[31]_0\(16),
      R => '0'
    );
\data_p1_reg[16]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_p1_reg[8]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \data_p1_reg[16]_i_2_n_0\,
      CO(6) => \data_p1_reg[16]_i_2_n_1\,
      CO(5) => \data_p1_reg[16]_i_2_n_2\,
      CO(4) => \data_p1_reg[16]_i_2_n_3\,
      CO(3) => \data_p1_reg[16]_i_2_n_4\,
      CO(2) => \data_p1_reg[16]_i_2_n_5\,
      CO(1) => \data_p1_reg[16]_i_2_n_6\,
      CO(0) => \data_p1_reg[16]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \^sub_ln27_fu_181_p2\(15 downto 8),
      S(7) => \data_p1[16]_i_3_n_0\,
      S(6) => \data_p1[16]_i_4_n_0\,
      S(5) => \data_p1[16]_i_5_n_0\,
      S(4) => \data_p1[16]_i_6_n_0\,
      S(3) => \data_p1[16]_i_7_n_0\,
      S(2) => \data_p1[16]_i_8_n_0\,
      S(1) => \data_p1[16]_i_9_n_0\,
      S(0) => \data_p1[16]_i_10_n_0\
    );
\data_p1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(17),
      Q => \^data_p1_reg[31]_0\(17),
      R => '0'
    );
\data_p1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(18),
      Q => \^data_p1_reg[31]_0\(18),
      R => '0'
    );
\data_p1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(19),
      Q => \^data_p1_reg[31]_0\(19),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(1),
      Q => \^data_p1_reg[31]_0\(1),
      R => '0'
    );
\data_p1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(20),
      Q => \^data_p1_reg[31]_0\(20),
      R => '0'
    );
\data_p1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(21),
      Q => \^data_p1_reg[31]_0\(21),
      R => '0'
    );
\data_p1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(22),
      Q => \^data_p1_reg[31]_0\(22),
      R => '0'
    );
\data_p1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(23),
      Q => \^data_p1_reg[31]_0\(23),
      R => '0'
    );
\data_p1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(24),
      Q => \^data_p1_reg[31]_0\(24),
      R => '0'
    );
\data_p1_reg[24]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_p1_reg[16]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \data_p1_reg[24]_i_2_n_0\,
      CO(6) => \data_p1_reg[24]_i_2_n_1\,
      CO(5) => \data_p1_reg[24]_i_2_n_2\,
      CO(4) => \data_p1_reg[24]_i_2_n_3\,
      CO(3) => \data_p1_reg[24]_i_2_n_4\,
      CO(2) => \data_p1_reg[24]_i_2_n_5\,
      CO(1) => \data_p1_reg[24]_i_2_n_6\,
      CO(0) => \data_p1_reg[24]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \^sub_ln27_fu_181_p2\(23 downto 16),
      S(7) => \data_p1[24]_i_3_n_0\,
      S(6) => \data_p1[24]_i_4_n_0\,
      S(5) => \data_p1[24]_i_5_n_0\,
      S(4) => \data_p1[24]_i_6_n_0\,
      S(3) => \data_p1[24]_i_7_n_0\,
      S(2) => \data_p1[24]_i_8_n_0\,
      S(1) => \data_p1[24]_i_9_n_0\,
      S(0) => \data_p1[24]_i_10_n_0\
    );
\data_p1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(25),
      Q => \^data_p1_reg[31]_0\(25),
      R => '0'
    );
\data_p1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(26),
      Q => \^data_p1_reg[31]_0\(26),
      R => '0'
    );
\data_p1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(27),
      Q => \^data_p1_reg[31]_0\(27),
      R => '0'
    );
\data_p1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(28),
      Q => \^data_p1_reg[31]_0\(28),
      R => '0'
    );
\data_p1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(29),
      Q => \^data_p1_reg[31]_0\(29),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(2),
      Q => \^data_p1_reg[31]_0\(2),
      R => '0'
    );
\data_p1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(30),
      Q => \^data_p1_reg[31]_0\(30),
      R => '0'
    );
\data_p1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(31),
      Q => \^data_p1_reg[31]_0\(31),
      R => '0'
    );
\data_p1_reg[31]_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_p1_reg[24]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_data_p1_reg[31]_i_4_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \data_p1_reg[31]_i_4_n_2\,
      CO(4) => \data_p1_reg[31]_i_4_n_3\,
      CO(3) => \data_p1_reg[31]_i_4_n_4\,
      CO(2) => \data_p1_reg[31]_i_4_n_5\,
      CO(1) => \data_p1_reg[31]_i_4_n_6\,
      CO(0) => \data_p1_reg[31]_i_4_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_data_p1_reg[31]_i_4_O_UNCONNECTED\(7),
      O(6 downto 0) => \^sub_ln27_fu_181_p2\(30 downto 24),
      S(7) => '0',
      S(6) => \data_p1[31]_i_5_n_0\,
      S(5) => \data_p1[31]_i_6_n_0\,
      S(4) => \data_p1[31]_i_7_n_0\,
      S(3) => \data_p1[31]_i_8_n_0\,
      S(2) => \data_p1[31]_i_9_n_0\,
      S(1) => \data_p1[31]_i_10_n_0\,
      S(0) => \data_p1[31]_i_11_n_0\
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(3),
      Q => \^data_p1_reg[31]_0\(3),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(4),
      Q => \^data_p1_reg[31]_0\(4),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(5),
      Q => \^data_p1_reg[31]_0\(5),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(6),
      Q => \^data_p1_reg[31]_0\(6),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(7),
      Q => \^data_p1_reg[31]_0\(7),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(8),
      Q => \^data_p1_reg[31]_0\(8),
      R => '0'
    );
\data_p1_reg[8]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_p1[8]_i_3_n_0\,
      CI_TOP => '0',
      CO(7) => \data_p1_reg[8]_i_2_n_0\,
      CO(6) => \data_p1_reg[8]_i_2_n_1\,
      CO(5) => \data_p1_reg[8]_i_2_n_2\,
      CO(4) => \data_p1_reg[8]_i_2_n_3\,
      CO(3) => \data_p1_reg[8]_i_2_n_4\,
      CO(2) => \data_p1_reg[8]_i_2_n_5\,
      CO(1) => \data_p1_reg[8]_i_2_n_6\,
      CO(0) => \data_p1_reg[8]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \^sub_ln27_fu_181_p2\(7 downto 0),
      S(7) => \data_p1[8]_i_4_n_0\,
      S(6) => \data_p1[8]_i_5_n_0\,
      S(5) => \data_p1[8]_i_6_n_0\,
      S(4) => \data_p1[8]_i_7_n_0\,
      S(3) => \data_p1[8]_i_8_n_0\,
      S(2) => \data_p1[8]_i_9_n_0\,
      S(1) => \data_p1[8]_i_10_n_0\,
      S(0) => \data_p1[8]_i_11_n_0\
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(9),
      Q => \^data_p1_reg[31]_0\(9),
      R => '0'
    );
\data_p2[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(10),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(9),
      O => D(9)
    );
\data_p2[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(11),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(10),
      O => D(10)
    );
\data_p2[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(12),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(11),
      O => D(11)
    );
\data_p2[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(13),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(12),
      O => D(12)
    );
\data_p2[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(14),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(13),
      O => D(13)
    );
\data_p2[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(15),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(14),
      O => D(14)
    );
\data_p2[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(16),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(15),
      O => D(15)
    );
\data_p2[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(17),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(16),
      O => D(16)
    );
\data_p2[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(18),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(17),
      O => D(17)
    );
\data_p2[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(19),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(18),
      O => D(18)
    );
\data_p2[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(1),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(0),
      O => D(0)
    );
\data_p2[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(20),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(19),
      O => D(19)
    );
\data_p2[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(21),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(20),
      O => D(20)
    );
\data_p2[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(22),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(21),
      O => D(21)
    );
\data_p2[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(23),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(22),
      O => D(22)
    );
\data_p2[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(24),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(23),
      O => D(23)
    );
\data_p2[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(25),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(24),
      O => D(24)
    );
\data_p2[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(26),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(25),
      O => D(25)
    );
\data_p2[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(27),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(26),
      O => D(26)
    );
\data_p2[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(28),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(27),
      O => D(27)
    );
\data_p2[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(29),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(28),
      O => D(28)
    );
\data_p2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(2),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(1),
      O => D(1)
    );
\data_p2[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(30),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(29),
      O => D(29)
    );
\data_p2[31]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in_stream_TVALID,
      I1 => \^ack_in_t_reg_0\,
      O => load_p2
    );
\data_p2[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(31),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(30),
      O => D(30)
    );
\data_p2[3]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(3),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(2),
      O => D(2)
    );
\data_p2[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(4),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(3),
      O => D(3)
    );
\data_p2[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(5),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(4),
      O => D(4)
    );
\data_p2[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(6),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(5),
      O => D(5)
    );
\data_p2[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(7),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(6),
      O => D(6)
    );
\data_p2[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(8),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(7),
      O => D(7)
    );
\data_p2[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_p1_reg[31]_0\(9),
      I1 => \data_p2_reg[1]_0\,
      I2 => \^sub_ln27_fu_181_p2\(8),
      O => D(8)
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(0),
      Q => \data_p2_reg_n_0_[0]\,
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(10),
      Q => \data_p2_reg_n_0_[10]\,
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(11),
      Q => \data_p2_reg_n_0_[11]\,
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(12),
      Q => \data_p2_reg_n_0_[12]\,
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(13),
      Q => \data_p2_reg_n_0_[13]\,
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(14),
      Q => \data_p2_reg_n_0_[14]\,
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(15),
      Q => \data_p2_reg_n_0_[15]\,
      R => '0'
    );
\data_p2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(16),
      Q => \data_p2_reg_n_0_[16]\,
      R => '0'
    );
\data_p2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(17),
      Q => \data_p2_reg_n_0_[17]\,
      R => '0'
    );
\data_p2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(18),
      Q => \data_p2_reg_n_0_[18]\,
      R => '0'
    );
\data_p2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(19),
      Q => \data_p2_reg_n_0_[19]\,
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(1),
      Q => \data_p2_reg_n_0_[1]\,
      R => '0'
    );
\data_p2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(20),
      Q => \data_p2_reg_n_0_[20]\,
      R => '0'
    );
\data_p2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(21),
      Q => \data_p2_reg_n_0_[21]\,
      R => '0'
    );
\data_p2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(22),
      Q => \data_p2_reg_n_0_[22]\,
      R => '0'
    );
\data_p2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(23),
      Q => \data_p2_reg_n_0_[23]\,
      R => '0'
    );
\data_p2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(24),
      Q => \data_p2_reg_n_0_[24]\,
      R => '0'
    );
\data_p2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(25),
      Q => \data_p2_reg_n_0_[25]\,
      R => '0'
    );
\data_p2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(26),
      Q => \data_p2_reg_n_0_[26]\,
      R => '0'
    );
\data_p2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(27),
      Q => \data_p2_reg_n_0_[27]\,
      R => '0'
    );
\data_p2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(28),
      Q => \data_p2_reg_n_0_[28]\,
      R => '0'
    );
\data_p2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(29),
      Q => \data_p2_reg_n_0_[29]\,
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(2),
      Q => \data_p2_reg_n_0_[2]\,
      R => '0'
    );
\data_p2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(30),
      Q => \data_p2_reg_n_0_[30]\,
      R => '0'
    );
\data_p2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(31),
      Q => \data_p2_reg_n_0_[31]\,
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(3),
      Q => \data_p2_reg_n_0_[3]\,
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(4),
      Q => \data_p2_reg_n_0_[4]\,
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(5),
      Q => \data_p2_reg_n_0_[5]\,
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(6),
      Q => \data_p2_reg_n_0_[6]\,
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(7),
      Q => \data_p2_reg_n_0_[7]\,
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(8),
      Q => \data_p2_reg_n_0_[8]\,
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(9),
      Q => \data_p2_reg_n_0_[9]\,
      R => '0'
    );
\state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF5F8800"
    )
        port map (
      I0 => state(1),
      I1 => \^ack_in_t_reg_0\,
      I2 => in_stream_TREADY_int_regslice,
      I3 => in_stream_TVALID,
      I4 => \^q\(0),
      O => \state[0]_i_1__0_n_0\
    );
\state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F5FD"
    )
        port map (
      I0 => \^q\(0),
      I1 => state(1),
      I2 => in_stream_TREADY_int_regslice,
      I3 => in_stream_TVALID,
      O => \state[1]_i_1__0_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \state[0]_i_1__0_n_0\,
      Q => \^q\(0),
      R => ap_rst_n_inv
    );
\state_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => '1',
      D => \state[1]_i_1__0_n_0\,
      Q => state(1),
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both_1 is
  port (
    ap_loop_exit_ready_pp0_iter1_reg_reg : out STD_LOGIC;
    ap_block_pp0_stage0_11001 : out STD_LOGIC;
    in_stream_TREADY_int_regslice : out STD_LOGIC;
    out_stream_TVALID : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ack_in_t_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_condition_exit_pp0_iter0_stage0 : out STD_LOGIC;
    out_stream_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter1_reg : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    in_stream_TLAST_int_regslice : in STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    \data_p2_reg[3]_0\ : in STD_LOGIC;
    \data_p2_reg[3]_1\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_p1_reg[31]_0\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \data_p1_reg[1]_0\ : in STD_LOGIC;
    sub_ln27_fu_181_p2 : in STD_LOGIC_VECTOR ( 30 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both_1 : entity is "audio_passthrough_regslice_both";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both_1 is
  signal \ack_in_t_i_1__3_n_0\ : STD_LOGIC;
  signal ack_in_t_reg_n_0 : STD_LOGIC;
  signal \^ap_block_pp0_stage0_11001\ : STD_LOGIC;
  signal \data_p1[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[16]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[17]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[18]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[19]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[20]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[21]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[22]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[23]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[24]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[25]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[26]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[27]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[28]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[29]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[30]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[31]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1[3]_i_1__3_n_0\ : STD_LOGIC;
  signal \data_p1[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[9]_i_1_n_0\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[19]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[23]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[24]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[25]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[26]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[27]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[28]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[29]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[30]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[31]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[9]\ : STD_LOGIC;
  signal \^in_stream_tready_int_regslice\ : STD_LOGIC;
  signal \int_isr[1]_i_3_n_0\ : STD_LOGIC;
  signal \int_isr[1]_i_4_n_0\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^out_stream_tvalid\ : STD_LOGIC;
  signal regslice_both_out_stream_V_data_V_U_apdone_blk : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1__2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__2\ : label is "soft_lutpair26";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:00,TWO:01,ONE:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:00,TWO:01,ONE:10";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of ack_in_t_i_4 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \data_p2[3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair28";
begin
  ap_block_pp0_stage0_11001 <= \^ap_block_pp0_stage0_11001\;
  in_stream_TREADY_int_regslice <= \^in_stream_tready_int_regslice\;
  out_stream_TVALID <= \^out_stream_tvalid\;
\FSM_sequential_state[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0230"
    )
        port map (
      I0 => \^in_stream_tready_int_regslice\,
      I1 => out_stream_TREADY,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCC3A0"
    )
        port map (
      I0 => ack_in_t_reg_n_0,
      I1 => out_stream_TREADY,
      I2 => \^in_stream_tready_int_regslice\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      R => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
\ack_in_t_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FCD0FF"
    )
        port map (
      I0 => \^in_stream_tready_int_regslice\,
      I1 => out_stream_TREADY,
      I2 => ack_in_t_reg_n_0,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__3_n_0\
    );
ack_in_t_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020A0A000000000"
    )
        port map (
      I0 => ack_in_t_reg_n_0,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_start,
      I3 => ap_loop_exit_ready_pp0_iter1_reg,
      I4 => regslice_both_out_stream_V_data_V_U_apdone_blk,
      I5 => Q(0),
      O => \^in_stream_tready_int_regslice\
    );
ack_in_t_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      O => regslice_both_out_stream_V_data_V_U_apdone_blk
    );
ack_in_t_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__3_n_0\,
      Q => ack_in_t_reg_n_0,
      R => ap_rst_n_inv
    );
ap_loop_exit_ready_pp0_iter1_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D888"
    )
        port map (
      I0 => \^ap_block_pp0_stage0_11001\,
      I1 => ap_loop_exit_ready_pp0_iter1_reg,
      I2 => ap_start,
      I3 => in_stream_TLAST_int_regslice,
      O => ap_loop_exit_ready_pp0_iter1_reg_reg
    );
\data_p1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[0]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => D(0),
      O => \data_p1[0]_i_1_n_0\
    );
\data_p1[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[10]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(9),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(9),
      O => \data_p1[10]_i_1_n_0\
    );
\data_p1[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[11]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(10),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(10),
      O => \data_p1[11]_i_1_n_0\
    );
\data_p1[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[12]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(11),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(11),
      O => \data_p1[12]_i_1_n_0\
    );
\data_p1[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[13]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(12),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(12),
      O => \data_p1[13]_i_1_n_0\
    );
\data_p1[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[14]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(13),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(13),
      O => \data_p1[14]_i_1_n_0\
    );
\data_p1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[15]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(14),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(14),
      O => \data_p1[15]_i_1_n_0\
    );
\data_p1[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[16]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(15),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(15),
      O => \data_p1[16]_i_1_n_0\
    );
\data_p1[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[17]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(16),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(16),
      O => \data_p1[17]_i_1_n_0\
    );
\data_p1[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[18]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(17),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(17),
      O => \data_p1[18]_i_1_n_0\
    );
\data_p1[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[19]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(18),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(18),
      O => \data_p1[19]_i_1_n_0\
    );
\data_p1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[1]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(0),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(0),
      O => \data_p1[1]_i_1_n_0\
    );
\data_p1[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[20]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(19),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(19),
      O => \data_p1[20]_i_1_n_0\
    );
\data_p1[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[21]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(20),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(20),
      O => \data_p1[21]_i_1_n_0\
    );
\data_p1[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[22]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(21),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(21),
      O => \data_p1[22]_i_1_n_0\
    );
\data_p1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[23]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(22),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(22),
      O => \data_p1[23]_i_1_n_0\
    );
\data_p1[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[24]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(23),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(23),
      O => \data_p1[24]_i_1_n_0\
    );
\data_p1[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[25]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(24),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(24),
      O => \data_p1[25]_i_1_n_0\
    );
\data_p1[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[26]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(25),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(25),
      O => \data_p1[26]_i_1_n_0\
    );
\data_p1[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[27]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(26),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(26),
      O => \data_p1[27]_i_1_n_0\
    );
\data_p1[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[28]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(27),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(27),
      O => \data_p1[28]_i_1_n_0\
    );
\data_p1[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[29]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(28),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(28),
      O => \data_p1[29]_i_1_n_0\
    );
\data_p1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[2]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(1),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(1),
      O => \data_p1[2]_i_1_n_0\
    );
\data_p1[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[30]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(29),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(29),
      O => \data_p1[30]_i_1_n_0\
    );
\data_p1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A8C"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \^in_stream_tready_int_regslice\,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => load_p1
    );
\data_p1[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[31]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(30),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(30),
      O => \data_p1[31]_i_2_n_0\
    );
\data_p1[3]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[3]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(2),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(2),
      O => \data_p1[3]_i_1__3_n_0\
    );
\data_p1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[4]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(3),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(3),
      O => \data_p1[4]_i_1_n_0\
    );
\data_p1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[5]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(4),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(4),
      O => \data_p1[5]_i_1_n_0\
    );
\data_p1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[6]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(5),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(5),
      O => \data_p1[6]_i_1_n_0\
    );
\data_p1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[7]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(6),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(6),
      O => \data_p1[7]_i_1_n_0\
    );
\data_p1[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[8]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(7),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(7),
      O => \data_p1[8]_i_1_n_0\
    );
\data_p1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_0_[9]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p1_reg[31]_0\(8),
      I4 => \data_p1_reg[1]_0\,
      I5 => sub_ln27_fu_181_p2(8),
      O => \data_p1[9]_i_1_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[0]_i_1_n_0\,
      Q => out_stream_TDATA(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[10]_i_1_n_0\,
      Q => out_stream_TDATA(10),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[11]_i_1_n_0\,
      Q => out_stream_TDATA(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[12]_i_1_n_0\,
      Q => out_stream_TDATA(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[13]_i_1_n_0\,
      Q => out_stream_TDATA(13),
      R => '0'
    );
\data_p1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[14]_i_1_n_0\,
      Q => out_stream_TDATA(14),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[15]_i_1_n_0\,
      Q => out_stream_TDATA(15),
      R => '0'
    );
\data_p1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[16]_i_1_n_0\,
      Q => out_stream_TDATA(16),
      R => '0'
    );
\data_p1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[17]_i_1_n_0\,
      Q => out_stream_TDATA(17),
      R => '0'
    );
\data_p1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[18]_i_1_n_0\,
      Q => out_stream_TDATA(18),
      R => '0'
    );
\data_p1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[19]_i_1_n_0\,
      Q => out_stream_TDATA(19),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[1]_i_1_n_0\,
      Q => out_stream_TDATA(1),
      R => '0'
    );
\data_p1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[20]_i_1_n_0\,
      Q => out_stream_TDATA(20),
      R => '0'
    );
\data_p1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[21]_i_1_n_0\,
      Q => out_stream_TDATA(21),
      R => '0'
    );
\data_p1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[22]_i_1_n_0\,
      Q => out_stream_TDATA(22),
      R => '0'
    );
\data_p1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[23]_i_1_n_0\,
      Q => out_stream_TDATA(23),
      R => '0'
    );
\data_p1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[24]_i_1_n_0\,
      Q => out_stream_TDATA(24),
      R => '0'
    );
\data_p1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[25]_i_1_n_0\,
      Q => out_stream_TDATA(25),
      R => '0'
    );
\data_p1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[26]_i_1_n_0\,
      Q => out_stream_TDATA(26),
      R => '0'
    );
\data_p1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[27]_i_1_n_0\,
      Q => out_stream_TDATA(27),
      R => '0'
    );
\data_p1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[28]_i_1_n_0\,
      Q => out_stream_TDATA(28),
      R => '0'
    );
\data_p1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[29]_i_1_n_0\,
      Q => out_stream_TDATA(29),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[2]_i_1_n_0\,
      Q => out_stream_TDATA(2),
      R => '0'
    );
\data_p1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[30]_i_1_n_0\,
      Q => out_stream_TDATA(30),
      R => '0'
    );
\data_p1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[31]_i_2_n_0\,
      Q => out_stream_TDATA(31),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[3]_i_1__3_n_0\,
      Q => out_stream_TDATA(3),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[4]_i_1_n_0\,
      Q => out_stream_TDATA(4),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[5]_i_1_n_0\,
      Q => out_stream_TDATA(5),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[6]_i_1_n_0\,
      Q => out_stream_TDATA(6),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[7]_i_1_n_0\,
      Q => out_stream_TDATA(7),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[8]_i_1_n_0\,
      Q => out_stream_TDATA(8),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[9]_i_1_n_0\,
      Q => out_stream_TDATA(9),
      R => '0'
    );
\data_p2[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^in_stream_tready_int_regslice\,
      I1 => ack_in_t_reg_n_0,
      O => load_p2
    );
\data_p2[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^in_stream_tready_int_regslice\,
      I1 => \data_p2_reg[3]_0\,
      O => E(0)
    );
\data_p2[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^in_stream_tready_int_regslice\,
      I1 => \data_p2_reg[3]_1\,
      O => ack_in_t_reg_0(0)
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(0),
      Q => \data_p2_reg_n_0_[0]\,
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(10),
      Q => \data_p2_reg_n_0_[10]\,
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(11),
      Q => \data_p2_reg_n_0_[11]\,
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(12),
      Q => \data_p2_reg_n_0_[12]\,
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(13),
      Q => \data_p2_reg_n_0_[13]\,
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(14),
      Q => \data_p2_reg_n_0_[14]\,
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(15),
      Q => \data_p2_reg_n_0_[15]\,
      R => '0'
    );
\data_p2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(16),
      Q => \data_p2_reg_n_0_[16]\,
      R => '0'
    );
\data_p2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(17),
      Q => \data_p2_reg_n_0_[17]\,
      R => '0'
    );
\data_p2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(18),
      Q => \data_p2_reg_n_0_[18]\,
      R => '0'
    );
\data_p2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(19),
      Q => \data_p2_reg_n_0_[19]\,
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(1),
      Q => \data_p2_reg_n_0_[1]\,
      R => '0'
    );
\data_p2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(20),
      Q => \data_p2_reg_n_0_[20]\,
      R => '0'
    );
\data_p2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(21),
      Q => \data_p2_reg_n_0_[21]\,
      R => '0'
    );
\data_p2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(22),
      Q => \data_p2_reg_n_0_[22]\,
      R => '0'
    );
\data_p2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(23),
      Q => \data_p2_reg_n_0_[23]\,
      R => '0'
    );
\data_p2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(24),
      Q => \data_p2_reg_n_0_[24]\,
      R => '0'
    );
\data_p2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(25),
      Q => \data_p2_reg_n_0_[25]\,
      R => '0'
    );
\data_p2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(26),
      Q => \data_p2_reg_n_0_[26]\,
      R => '0'
    );
\data_p2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(27),
      Q => \data_p2_reg_n_0_[27]\,
      R => '0'
    );
\data_p2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(28),
      Q => \data_p2_reg_n_0_[28]\,
      R => '0'
    );
\data_p2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(29),
      Q => \data_p2_reg_n_0_[29]\,
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(2),
      Q => \data_p2_reg_n_0_[2]\,
      R => '0'
    );
\data_p2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(30),
      Q => \data_p2_reg_n_0_[30]\,
      R => '0'
    );
\data_p2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(31),
      Q => \data_p2_reg_n_0_[31]\,
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(3),
      Q => \data_p2_reg_n_0_[3]\,
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(4),
      Q => \data_p2_reg_n_0_[4]\,
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(5),
      Q => \data_p2_reg_n_0_[5]\,
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(6),
      Q => \data_p2_reg_n_0_[6]\,
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(7),
      Q => \data_p2_reg_n_0_[7]\,
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(8),
      Q => \data_p2_reg_n_0_[8]\,
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => D(9),
      Q => \data_p2_reg_n_0_[9]\,
      R => '0'
    );
int_ap_start_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDCCD5C0FFFFFFC0"
    )
        port map (
      I0 => Q(0),
      I1 => regslice_both_out_stream_V_data_V_U_apdone_blk,
      I2 => ap_loop_exit_ready_pp0_iter1_reg,
      I3 => ap_start,
      I4 => ap_enable_reg_pp0_iter1,
      I5 => ack_in_t_reg_n_0,
      O => \^ap_block_pp0_stage0_11001\
    );
\int_isr[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => in_stream_TLAST_int_regslice,
      I1 => ack_in_t_reg_n_0,
      I2 => ap_start,
      I3 => \int_isr[1]_i_3_n_0\,
      I4 => \int_isr[1]_i_4_n_0\,
      O => ap_condition_exit_pp0_iter0_stage0
    );
\int_isr[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2600"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => out_stream_TREADY,
      I3 => ap_loop_exit_ready_pp0_iter1_reg,
      O => \int_isr[1]_i_3_n_0\
    );
\int_isr[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A20FFFF0A200A20"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => out_stream_TREADY,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => Q(0),
      I5 => ap_start,
      O => \int_isr[1]_i_4_n_0\
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF5F8800"
    )
        port map (
      I0 => state(1),
      I1 => ack_in_t_reg_n_0,
      I2 => out_stream_TREADY,
      I3 => \^in_stream_tready_int_regslice\,
      I4 => \^out_stream_tvalid\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7F5"
    )
        port map (
      I0 => \^out_stream_tvalid\,
      I1 => \^in_stream_tready_int_regslice\,
      I2 => out_stream_TREADY,
      I3 => state(1),
      O => \state[1]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \^out_stream_tvalid\,
      R => ap_rst_n_inv
    );
\state_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    in_stream_TREADY_int_regslice : in STD_LOGIC;
    in_stream_TVALID : in STD_LOGIC;
    in_stream_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0\ : entity is "audio_passthrough_regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0\ is
  signal \ack_in_t_i_1__0_n_0\ : STD_LOGIC;
  signal ack_in_t_reg_n_0 : STD_LOGIC;
  signal \data_p1[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[3]_i_2_n_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal load_p1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__5\ : label is "soft_lutpair23";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:00,TWO:01,ONE:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:00,TWO:01,ONE:10";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__0\ : label is "soft_lutpair23";
begin
\FSM_sequential_state[0]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0230"
    )
        port map (
      I0 => in_stream_TVALID,
      I1 => in_stream_TREADY_int_regslice,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCC3A0"
    )
        port map (
      I0 => ack_in_t_reg_n_0,
      I1 => in_stream_TREADY_int_regslice,
      I2 => in_stream_TVALID,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      R => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
\ack_in_t_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFAA2FF"
    )
        port map (
      I0 => ack_in_t_reg_n_0,
      I1 => in_stream_TVALID,
      I2 => in_stream_TREADY_int_regslice,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__0_n_0\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__0_n_0\,
      Q => ack_in_t_reg_n_0,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(0),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TKEEP(0),
      O => \data_p1[0]_i_1__1_n_0\
    );
\data_p1[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(1),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TKEEP(1),
      O => \data_p1[1]_i_1__1_n_0\
    );
\data_p1[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TKEEP(2),
      O => \data_p1[2]_i_1__1_n_0\
    );
\data_p1[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A8C"
    )
        port map (
      I0 => in_stream_TREADY_int_regslice,
      I1 => in_stream_TVALID,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => load_p1
    );
\data_p1[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(3),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TKEEP(3),
      O => \data_p1[3]_i_2_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[0]_i_1__1_n_0\,
      Q => Q(0),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[1]_i_1__1_n_0\,
      Q => Q(1),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[2]_i_1__1_n_0\,
      Q => Q(2),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[3]_i_2_n_0\,
      Q => Q(3),
      R => '0'
    );
\data_p2[3]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in_stream_TVALID,
      I1 => ack_in_t_reg_n_0,
      O => load_p2
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TKEEP(0),
      Q => data_p2(0),
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TKEEP(1),
      Q => data_p2(1),
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TKEEP(2),
      Q => data_p2(2),
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TKEEP(3),
      Q => data_p2(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0_0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    in_stream_TREADY_int_regslice : in STD_LOGIC;
    in_stream_TVALID : in STD_LOGIC;
    in_stream_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0_0\ : entity is "audio_passthrough_regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0_0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0_0\ is
  signal \ack_in_t_i_1__1_n_0\ : STD_LOGIC;
  signal ack_in_t_reg_n_0 : STD_LOGIC;
  signal \data_p1[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[3]_i_2__0_n_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal load_p1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__4\ : label is "soft_lutpair25";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:00,TWO:01,ONE:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:00,TWO:01,ONE:10";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__1\ : label is "soft_lutpair25";
begin
\FSM_sequential_state[0]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0230"
    )
        port map (
      I0 => in_stream_TVALID,
      I1 => in_stream_TREADY_int_regslice,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCC3A0"
    )
        port map (
      I0 => ack_in_t_reg_n_0,
      I1 => in_stream_TREADY_int_regslice,
      I2 => in_stream_TVALID,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      R => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
\ack_in_t_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFAA2FF"
    )
        port map (
      I0 => ack_in_t_reg_n_0,
      I1 => in_stream_TVALID,
      I2 => in_stream_TREADY_int_regslice,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__1_n_0\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__1_n_0\,
      Q => ack_in_t_reg_n_0,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(0),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TSTRB(0),
      O => \data_p1[0]_i_1__2_n_0\
    );
\data_p1[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(1),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TSTRB(1),
      O => \data_p1[1]_i_1__2_n_0\
    );
\data_p1[2]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TSTRB(2),
      O => \data_p1[2]_i_1__2_n_0\
    );
\data_p1[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A8C"
    )
        port map (
      I0 => in_stream_TREADY_int_regslice,
      I1 => in_stream_TVALID,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => load_p1
    );
\data_p1[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(3),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TSTRB(3),
      O => \data_p1[3]_i_2__0_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[0]_i_1__2_n_0\,
      Q => Q(0),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[1]_i_1__2_n_0\,
      Q => Q(1),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[2]_i_1__2_n_0\,
      Q => Q(2),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[3]_i_2__0_n_0\,
      Q => Q(3),
      R => '0'
    );
\data_p2[3]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in_stream_TVALID,
      I1 => ack_in_t_reg_n_0,
      O => load_p2
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TSTRB(0),
      Q => data_p2(0),
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TSTRB(1),
      Q => data_p2(1),
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TSTRB(2),
      Q => data_p2(2),
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TSTRB(3),
      Q => data_p2(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0_2\ is
  port (
    ack_in_t_reg_0 : out STD_LOGIC;
    out_stream_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    in_stream_TREADY_int_regslice : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0_2\ : entity is "audio_passthrough_regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0_2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0_2\ is
  signal \ack_in_t_i_1__4_n_0\ : STD_LOGIC;
  signal \^ack_in_t_reg_0\ : STD_LOGIC;
  signal \data_p1[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \data_p1[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \data_p1[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \data_p1[3]_i_2__1_n_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal load_p1 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__1\ : label is "soft_lutpair29";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:00,TWO:01,ONE:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:00,TWO:01,ONE:10";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__4\ : label is "soft_lutpair29";
begin
  ack_in_t_reg_0 <= \^ack_in_t_reg_0\;
\FSM_sequential_state[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0230"
    )
        port map (
      I0 => in_stream_TREADY_int_regslice,
      I1 => out_stream_TREADY,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCC3A0"
    )
        port map (
      I0 => \^ack_in_t_reg_0\,
      I1 => out_stream_TREADY,
      I2 => in_stream_TREADY_int_regslice,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      R => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
\ack_in_t_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FCD0FF"
    )
        port map (
      I0 => in_stream_TREADY_int_regslice,
      I1 => out_stream_TREADY,
      I2 => \^ack_in_t_reg_0\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__4_n_0\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__4_n_0\,
      Q => \^ack_in_t_reg_0\,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(0),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => D(0),
      O => \data_p1[0]_i_1__3_n_0\
    );
\data_p1[1]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(1),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => D(1),
      O => \data_p1[1]_i_1__3_n_0\
    );
\data_p1[2]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => D(2),
      O => \data_p1[2]_i_1__3_n_0\
    );
\data_p1[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A8C"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => in_stream_TREADY_int_regslice,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => load_p1
    );
\data_p1[3]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(3),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => D(3),
      O => \data_p1[3]_i_2__1_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[0]_i_1__3_n_0\,
      Q => out_stream_TKEEP(0),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[1]_i_1__3_n_0\,
      Q => out_stream_TKEEP(1),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[2]_i_1__3_n_0\,
      Q => out_stream_TKEEP(2),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[3]_i_2__1_n_0\,
      Q => out_stream_TKEEP(3),
      R => '0'
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => D(0),
      Q => data_p2(0),
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => D(1),
      Q => data_p2(1),
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => D(2),
      Q => data_p2(2),
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => D(3),
      Q => data_p2(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0_4\ is
  port (
    ack_in_t_reg_0 : out STD_LOGIC;
    out_stream_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    in_stream_TREADY_int_regslice : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0_4\ : entity is "audio_passthrough_regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0_4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0_4\ is
  signal \ack_in_t_i_1__5_n_0\ : STD_LOGIC;
  signal \^ack_in_t_reg_0\ : STD_LOGIC;
  signal \data_p1[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \data_p1[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \data_p1[2]_i_1__4_n_0\ : STD_LOGIC;
  signal \data_p1[3]_i_2__2_n_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal load_p1 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__0\ : label is "soft_lutpair31";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:00,TWO:01,ONE:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:00,TWO:01,ONE:10";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__5\ : label is "soft_lutpair31";
begin
  ack_in_t_reg_0 <= \^ack_in_t_reg_0\;
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0230"
    )
        port map (
      I0 => in_stream_TREADY_int_regslice,
      I1 => out_stream_TREADY,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCC3A0"
    )
        port map (
      I0 => \^ack_in_t_reg_0\,
      I1 => out_stream_TREADY,
      I2 => in_stream_TREADY_int_regslice,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      R => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
\ack_in_t_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FCD0FF"
    )
        port map (
      I0 => in_stream_TREADY_int_regslice,
      I1 => out_stream_TREADY,
      I2 => \^ack_in_t_reg_0\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__5_n_0\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__5_n_0\,
      Q => \^ack_in_t_reg_0\,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(0),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => D(0),
      O => \data_p1[0]_i_1__4_n_0\
    );
\data_p1[1]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(1),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => D(1),
      O => \data_p1[1]_i_1__4_n_0\
    );
\data_p1[2]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => D(2),
      O => \data_p1[2]_i_1__4_n_0\
    );
\data_p1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A8C"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => in_stream_TREADY_int_regslice,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => load_p1
    );
\data_p1[3]_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(3),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => D(3),
      O => \data_p1[3]_i_2__2_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[0]_i_1__4_n_0\,
      Q => out_stream_TSTRB(0),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[1]_i_1__4_n_0\,
      Q => out_stream_TSTRB(1),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[2]_i_1__4_n_0\,
      Q => out_stream_TSTRB(2),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[3]_i_2__2_n_0\,
      Q => out_stream_TSTRB(3),
      R => '0'
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => D(0),
      Q => data_p2(0),
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => D(1),
      Q => data_p2(1),
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => D(2),
      Q => data_p2(2),
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => D(3),
      Q => data_p2(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized1\ is
  port (
    in_stream_TLAST_int_regslice : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    in_stream_TVALID : in STD_LOGIC;
    in_stream_TREADY_int_regslice : in STD_LOGIC;
    in_stream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized1\ : entity is "audio_passthrough_regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized1\ is
  signal \ack_in_t_i_1__2_n_0\ : STD_LOGIC;
  signal ack_in_t_reg_n_0 : STD_LOGIC;
  signal \data_p1[0]_i_1__5_n_0\ : STD_LOGIC;
  signal \data_p1[0]_i_2_n_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC;
  signal \data_p2[0]_i_1_n_0\ : STD_LOGIC;
  signal \^in_stream_tlast_int_regslice\ : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__3\ : label is "soft_lutpair24";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:00,TWO:01,ONE:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:00,TWO:01,ONE:10";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__2\ : label is "soft_lutpair24";
begin
  in_stream_TLAST_int_regslice <= \^in_stream_tlast_int_regslice\;
\FSM_sequential_state[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0230"
    )
        port map (
      I0 => in_stream_TVALID,
      I1 => in_stream_TREADY_int_regslice,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCC3A0"
    )
        port map (
      I0 => ack_in_t_reg_n_0,
      I1 => in_stream_TREADY_int_regslice,
      I2 => in_stream_TVALID,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      R => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
\ack_in_t_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFAA2FF"
    )
        port map (
      I0 => ack_in_t_reg_n_0,
      I1 => in_stream_TVALID,
      I2 => in_stream_TREADY_int_regslice,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__2_n_0\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__2_n_0\,
      Q => ack_in_t_reg_n_0,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBBFAF008880A0"
    )
        port map (
      I0 => \data_p1[0]_i_2_n_0\,
      I1 => in_stream_TREADY_int_regslice,
      I2 => in_stream_TVALID,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      I5 => \^in_stream_tlast_int_regslice\,
      O => \data_p1[0]_i_1__5_n_0\
    );
\data_p1[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TLAST(0),
      O => \data_p1[0]_i_2_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \data_p1[0]_i_1__5_n_0\,
      Q => \^in_stream_tlast_int_regslice\,
      R => '0'
    );
\data_p2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => in_stream_TLAST(0),
      I1 => in_stream_TVALID,
      I2 => ack_in_t_reg_n_0,
      I3 => data_p2,
      O => \data_p2[0]_i_1_n_0\
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \data_p2[0]_i_1_n_0\,
      Q => data_p2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized1_3\ is
  port (
    out_stream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    in_stream_TREADY_int_regslice : in STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    in_stream_TLAST_int_regslice : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized1_3\ : entity is "audio_passthrough_regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized1_3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized1_3\ is
  signal \ack_in_t_i_1__6_n_0\ : STD_LOGIC;
  signal ack_in_t_reg_n_0 : STD_LOGIC;
  signal \data_p1[0]_i_1__6_n_0\ : STD_LOGIC;
  signal \data_p1[0]_i_2__0_n_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC;
  signal \data_p2[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^out_stream_tlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair30";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:00,TWO:01,ONE:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:00,TWO:01,ONE:10";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__6\ : label is "soft_lutpair30";
begin
  out_stream_TLAST(0) <= \^out_stream_tlast\(0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0230"
    )
        port map (
      I0 => in_stream_TREADY_int_regslice,
      I1 => out_stream_TREADY,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCC3A0"
    )
        port map (
      I0 => ack_in_t_reg_n_0,
      I1 => out_stream_TREADY,
      I2 => in_stream_TREADY_int_regslice,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      R => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
\ack_in_t_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FCD0FF"
    )
        port map (
      I0 => in_stream_TREADY_int_regslice,
      I1 => out_stream_TREADY,
      I2 => ack_in_t_reg_n_0,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__6_n_0\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__6_n_0\,
      Q => ack_in_t_reg_n_0,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBBFAF008880A0"
    )
        port map (
      I0 => \data_p1[0]_i_2__0_n_0\,
      I1 => out_stream_TREADY,
      I2 => in_stream_TREADY_int_regslice,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      I5 => \^out_stream_tlast\(0),
      O => \data_p1[0]_i_1__6_n_0\
    );
\data_p1[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => in_stream_TLAST_int_regslice,
      O => \data_p1[0]_i_2__0_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \data_p1[0]_i_1__6_n_0\,
      Q => \^out_stream_tlast\(0),
      R => '0'
    );
\data_p2[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => in_stream_TLAST_int_regslice,
      I1 => in_stream_TREADY_int_regslice,
      I2 => ack_in_t_reg_n_0,
      I3 => data_p2,
      O => \data_p2[0]_i_1__0_n_0\
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \data_p2[0]_i_1__0_n_0\,
      Q => data_p2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    in_stream_TVALID : in STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    in_stream_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_stream_TREADY : out STD_LOGIC;
    in_stream_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_stream_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_stream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_stream_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    out_stream_TVALID : out STD_LOGIC;
    out_stream_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    out_stream_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    out_stream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_AWVALID : in STD_LOGIC;
    s_axi_ctrl_AWREADY : out STD_LOGIC;
    s_axi_ctrl_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_WVALID : in STD_LOGIC;
    s_axi_ctrl_WREADY : out STD_LOGIC;
    s_axi_ctrl_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_ARVALID : in STD_LOGIC;
    s_axi_ctrl_ARREADY : out STD_LOGIC;
    s_axi_ctrl_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_RVALID : out STD_LOGIC;
    s_axi_ctrl_RREADY : in STD_LOGIC;
    s_axi_ctrl_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_BVALID : out STD_LOGIC;
    s_axi_ctrl_BREADY : in STD_LOGIC;
    s_axi_ctrl_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt : out STD_LOGIC
  );
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough : entity is 5;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough : entity is 32;
  attribute C_S_AXI_CTRL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CTRL_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough : entity is 4;
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough : entity is "1'b1";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough is
  signal \<const0>\ : STD_LOGIC;
  signal ap_block_pp0_stage0_11001 : STD_LOGIC;
  signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal ap_start : STD_LOGIC;
  signal ctrl_s_axi_U_n_8 : STD_LOGIC;
  signal ctrl_s_axi_U_n_9 : STD_LOGIC;
  signal in_stream_TKEEP_int_regslice : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal in_stream_TLAST_int_regslice : STD_LOGIC;
  signal in_stream_TREADY_int_regslice : STD_LOGIC;
  signal in_stream_TSTRB_int_regslice : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal in_stream_TVALID_int_regslice : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal load_p2_0 : STD_LOGIC;
  signal out_stream_TDATA_int_regslice : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal regslice_both_in_stream_V_data_V_U_n_33 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_34 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_35 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_36 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_37 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_38 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_39 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_40 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_41 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_42 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_43 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_44 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_45 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_46 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_47 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_48 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_49 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_50 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_51 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_52 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_53 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_54 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_55 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_56 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_57 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_58 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_59 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_60 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_61 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_62 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_63 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_64 : STD_LOGIC;
  signal regslice_both_out_stream_V_data_V_U_n_0 : STD_LOGIC;
  signal regslice_both_out_stream_V_keep_V_U_n_0 : STD_LOGIC;
  signal regslice_both_out_stream_V_strb_V_U_n_0 : STD_LOGIC;
  signal \^s_axi_ctrl_rdata\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sub_ln27_fu_181_p2 : STD_LOGIC_VECTOR ( 31 downto 1 );
begin
  s_axi_ctrl_BRESP(1) <= \<const0>\;
  s_axi_ctrl_BRESP(0) <= \<const0>\;
  s_axi_ctrl_RDATA(31) <= \<const0>\;
  s_axi_ctrl_RDATA(30) <= \<const0>\;
  s_axi_ctrl_RDATA(29) <= \<const0>\;
  s_axi_ctrl_RDATA(28) <= \<const0>\;
  s_axi_ctrl_RDATA(27) <= \<const0>\;
  s_axi_ctrl_RDATA(26) <= \<const0>\;
  s_axi_ctrl_RDATA(25) <= \<const0>\;
  s_axi_ctrl_RDATA(24) <= \<const0>\;
  s_axi_ctrl_RDATA(23) <= \<const0>\;
  s_axi_ctrl_RDATA(22) <= \<const0>\;
  s_axi_ctrl_RDATA(21) <= \<const0>\;
  s_axi_ctrl_RDATA(20) <= \<const0>\;
  s_axi_ctrl_RDATA(19) <= \<const0>\;
  s_axi_ctrl_RDATA(18) <= \<const0>\;
  s_axi_ctrl_RDATA(17) <= \<const0>\;
  s_axi_ctrl_RDATA(16) <= \<const0>\;
  s_axi_ctrl_RDATA(15) <= \<const0>\;
  s_axi_ctrl_RDATA(14) <= \<const0>\;
  s_axi_ctrl_RDATA(13) <= \<const0>\;
  s_axi_ctrl_RDATA(12) <= \<const0>\;
  s_axi_ctrl_RDATA(11) <= \<const0>\;
  s_axi_ctrl_RDATA(10) <= \<const0>\;
  s_axi_ctrl_RDATA(9) <= \^s_axi_ctrl_rdata\(9);
  s_axi_ctrl_RDATA(8) <= \<const0>\;
  s_axi_ctrl_RDATA(7 downto 0) <= \^s_axi_ctrl_rdata\(7 downto 0);
  s_axi_ctrl_RRESP(1) <= \<const0>\;
  s_axi_ctrl_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ctrl_s_axi_U_n_9,
      Q => ap_enable_reg_pp0_iter1,
      R => ap_rst_n_inv
    );
ap_loop_exit_ready_pp0_iter1_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_out_stream_V_data_V_U_n_0,
      Q => ap_loop_exit_ready_pp0_iter1_reg,
      R => '0'
    );
ctrl_s_axi_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_ctrl_s_axi
     port map (
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_ctrl_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_ctrl_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_ctrl_WREADY,
      ap_block_pp0_stage0_11001 => ap_block_pp0_stage0_11001,
      ap_clk => ap_clk,
      ap_condition_exit_pp0_iter0_stage0 => ap_condition_exit_pp0_iter0_stage0,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_loop_exit_ready_pp0_iter1_reg => ap_loop_exit_ready_pp0_iter1_reg,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_start => ap_start,
      in_stream_TLAST_int_regslice => in_stream_TLAST_int_regslice,
      int_ap_start_reg_0 => ctrl_s_axi_U_n_9,
      \int_switches_reg[1]_0\ => ctrl_s_axi_U_n_8,
      interrupt => interrupt,
      s_axi_ctrl_ARADDR(4 downto 0) => s_axi_ctrl_ARADDR(4 downto 0),
      s_axi_ctrl_ARVALID => s_axi_ctrl_ARVALID,
      s_axi_ctrl_AWADDR(2 downto 0) => s_axi_ctrl_AWADDR(4 downto 2),
      s_axi_ctrl_AWVALID => s_axi_ctrl_AWVALID,
      s_axi_ctrl_BREADY => s_axi_ctrl_BREADY,
      s_axi_ctrl_BVALID => s_axi_ctrl_BVALID,
      s_axi_ctrl_RDATA(8) => \^s_axi_ctrl_rdata\(9),
      s_axi_ctrl_RDATA(7 downto 0) => \^s_axi_ctrl_rdata\(7 downto 0),
      s_axi_ctrl_RREADY => s_axi_ctrl_RREADY,
      s_axi_ctrl_RVALID => s_axi_ctrl_RVALID,
      s_axi_ctrl_WDATA(7 downto 0) => s_axi_ctrl_WDATA(7 downto 0),
      s_axi_ctrl_WSTRB(0) => s_axi_ctrl_WSTRB(0),
      s_axi_ctrl_WVALID => s_axi_ctrl_WVALID
    );
regslice_both_in_stream_V_data_V_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both
     port map (
      D(30 downto 0) => out_stream_TDATA_int_regslice(31 downto 1),
      Q(0) => in_stream_TVALID_int_regslice,
      ack_in_t_reg_0 => in_stream_TREADY,
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      \data_p1_reg[31]_0\(31) => regslice_both_in_stream_V_data_V_U_n_33,
      \data_p1_reg[31]_0\(30) => regslice_both_in_stream_V_data_V_U_n_34,
      \data_p1_reg[31]_0\(29) => regslice_both_in_stream_V_data_V_U_n_35,
      \data_p1_reg[31]_0\(28) => regslice_both_in_stream_V_data_V_U_n_36,
      \data_p1_reg[31]_0\(27) => regslice_both_in_stream_V_data_V_U_n_37,
      \data_p1_reg[31]_0\(26) => regslice_both_in_stream_V_data_V_U_n_38,
      \data_p1_reg[31]_0\(25) => regslice_both_in_stream_V_data_V_U_n_39,
      \data_p1_reg[31]_0\(24) => regslice_both_in_stream_V_data_V_U_n_40,
      \data_p1_reg[31]_0\(23) => regslice_both_in_stream_V_data_V_U_n_41,
      \data_p1_reg[31]_0\(22) => regslice_both_in_stream_V_data_V_U_n_42,
      \data_p1_reg[31]_0\(21) => regslice_both_in_stream_V_data_V_U_n_43,
      \data_p1_reg[31]_0\(20) => regslice_both_in_stream_V_data_V_U_n_44,
      \data_p1_reg[31]_0\(19) => regslice_both_in_stream_V_data_V_U_n_45,
      \data_p1_reg[31]_0\(18) => regslice_both_in_stream_V_data_V_U_n_46,
      \data_p1_reg[31]_0\(17) => regslice_both_in_stream_V_data_V_U_n_47,
      \data_p1_reg[31]_0\(16) => regslice_both_in_stream_V_data_V_U_n_48,
      \data_p1_reg[31]_0\(15) => regslice_both_in_stream_V_data_V_U_n_49,
      \data_p1_reg[31]_0\(14) => regslice_both_in_stream_V_data_V_U_n_50,
      \data_p1_reg[31]_0\(13) => regslice_both_in_stream_V_data_V_U_n_51,
      \data_p1_reg[31]_0\(12) => regslice_both_in_stream_V_data_V_U_n_52,
      \data_p1_reg[31]_0\(11) => regslice_both_in_stream_V_data_V_U_n_53,
      \data_p1_reg[31]_0\(10) => regslice_both_in_stream_V_data_V_U_n_54,
      \data_p1_reg[31]_0\(9) => regslice_both_in_stream_V_data_V_U_n_55,
      \data_p1_reg[31]_0\(8) => regslice_both_in_stream_V_data_V_U_n_56,
      \data_p1_reg[31]_0\(7) => regslice_both_in_stream_V_data_V_U_n_57,
      \data_p1_reg[31]_0\(6) => regslice_both_in_stream_V_data_V_U_n_58,
      \data_p1_reg[31]_0\(5) => regslice_both_in_stream_V_data_V_U_n_59,
      \data_p1_reg[31]_0\(4) => regslice_both_in_stream_V_data_V_U_n_60,
      \data_p1_reg[31]_0\(3) => regslice_both_in_stream_V_data_V_U_n_61,
      \data_p1_reg[31]_0\(2) => regslice_both_in_stream_V_data_V_U_n_62,
      \data_p1_reg[31]_0\(1) => regslice_both_in_stream_V_data_V_U_n_63,
      \data_p1_reg[31]_0\(0) => regslice_both_in_stream_V_data_V_U_n_64,
      \data_p2_reg[1]_0\ => ctrl_s_axi_U_n_8,
      in_stream_TDATA(31 downto 0) => in_stream_TDATA(31 downto 0),
      in_stream_TREADY_int_regslice => in_stream_TREADY_int_regslice,
      in_stream_TVALID => in_stream_TVALID,
      sub_ln27_fu_181_p2(30 downto 0) => sub_ln27_fu_181_p2(31 downto 1)
    );
regslice_both_in_stream_V_keep_V_U: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0\
     port map (
      Q(3 downto 0) => in_stream_TKEEP_int_regslice(3 downto 0),
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      in_stream_TKEEP(3 downto 0) => in_stream_TKEEP(3 downto 0),
      in_stream_TREADY_int_regslice => in_stream_TREADY_int_regslice,
      in_stream_TVALID => in_stream_TVALID
    );
regslice_both_in_stream_V_last_V_U: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized1\
     port map (
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      in_stream_TLAST(0) => in_stream_TLAST(0),
      in_stream_TLAST_int_regslice => in_stream_TLAST_int_regslice,
      in_stream_TREADY_int_regslice => in_stream_TREADY_int_regslice,
      in_stream_TVALID => in_stream_TVALID
    );
regslice_both_in_stream_V_strb_V_U: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0_0\
     port map (
      Q(3 downto 0) => in_stream_TSTRB_int_regslice(3 downto 0),
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      in_stream_TREADY_int_regslice => in_stream_TREADY_int_regslice,
      in_stream_TSTRB(3 downto 0) => in_stream_TSTRB(3 downto 0),
      in_stream_TVALID => in_stream_TVALID
    );
regslice_both_out_stream_V_data_V_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both_1
     port map (
      D(31 downto 1) => out_stream_TDATA_int_regslice(31 downto 1),
      D(0) => regslice_both_in_stream_V_data_V_U_n_64,
      E(0) => load_p2_0,
      Q(0) => in_stream_TVALID_int_regslice,
      ack_in_t_reg_0(0) => load_p2,
      ap_block_pp0_stage0_11001 => ap_block_pp0_stage0_11001,
      ap_clk => ap_clk,
      ap_condition_exit_pp0_iter0_stage0 => ap_condition_exit_pp0_iter0_stage0,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_loop_exit_ready_pp0_iter1_reg => ap_loop_exit_ready_pp0_iter1_reg,
      ap_loop_exit_ready_pp0_iter1_reg_reg => regslice_both_out_stream_V_data_V_U_n_0,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_start => ap_start,
      \data_p1_reg[1]_0\ => ctrl_s_axi_U_n_8,
      \data_p1_reg[31]_0\(30) => regslice_both_in_stream_V_data_V_U_n_33,
      \data_p1_reg[31]_0\(29) => regslice_both_in_stream_V_data_V_U_n_34,
      \data_p1_reg[31]_0\(28) => regslice_both_in_stream_V_data_V_U_n_35,
      \data_p1_reg[31]_0\(27) => regslice_both_in_stream_V_data_V_U_n_36,
      \data_p1_reg[31]_0\(26) => regslice_both_in_stream_V_data_V_U_n_37,
      \data_p1_reg[31]_0\(25) => regslice_both_in_stream_V_data_V_U_n_38,
      \data_p1_reg[31]_0\(24) => regslice_both_in_stream_V_data_V_U_n_39,
      \data_p1_reg[31]_0\(23) => regslice_both_in_stream_V_data_V_U_n_40,
      \data_p1_reg[31]_0\(22) => regslice_both_in_stream_V_data_V_U_n_41,
      \data_p1_reg[31]_0\(21) => regslice_both_in_stream_V_data_V_U_n_42,
      \data_p1_reg[31]_0\(20) => regslice_both_in_stream_V_data_V_U_n_43,
      \data_p1_reg[31]_0\(19) => regslice_both_in_stream_V_data_V_U_n_44,
      \data_p1_reg[31]_0\(18) => regslice_both_in_stream_V_data_V_U_n_45,
      \data_p1_reg[31]_0\(17) => regslice_both_in_stream_V_data_V_U_n_46,
      \data_p1_reg[31]_0\(16) => regslice_both_in_stream_V_data_V_U_n_47,
      \data_p1_reg[31]_0\(15) => regslice_both_in_stream_V_data_V_U_n_48,
      \data_p1_reg[31]_0\(14) => regslice_both_in_stream_V_data_V_U_n_49,
      \data_p1_reg[31]_0\(13) => regslice_both_in_stream_V_data_V_U_n_50,
      \data_p1_reg[31]_0\(12) => regslice_both_in_stream_V_data_V_U_n_51,
      \data_p1_reg[31]_0\(11) => regslice_both_in_stream_V_data_V_U_n_52,
      \data_p1_reg[31]_0\(10) => regslice_both_in_stream_V_data_V_U_n_53,
      \data_p1_reg[31]_0\(9) => regslice_both_in_stream_V_data_V_U_n_54,
      \data_p1_reg[31]_0\(8) => regslice_both_in_stream_V_data_V_U_n_55,
      \data_p1_reg[31]_0\(7) => regslice_both_in_stream_V_data_V_U_n_56,
      \data_p1_reg[31]_0\(6) => regslice_both_in_stream_V_data_V_U_n_57,
      \data_p1_reg[31]_0\(5) => regslice_both_in_stream_V_data_V_U_n_58,
      \data_p1_reg[31]_0\(4) => regslice_both_in_stream_V_data_V_U_n_59,
      \data_p1_reg[31]_0\(3) => regslice_both_in_stream_V_data_V_U_n_60,
      \data_p1_reg[31]_0\(2) => regslice_both_in_stream_V_data_V_U_n_61,
      \data_p1_reg[31]_0\(1) => regslice_both_in_stream_V_data_V_U_n_62,
      \data_p1_reg[31]_0\(0) => regslice_both_in_stream_V_data_V_U_n_63,
      \data_p2_reg[3]_0\ => regslice_both_out_stream_V_strb_V_U_n_0,
      \data_p2_reg[3]_1\ => regslice_both_out_stream_V_keep_V_U_n_0,
      in_stream_TLAST_int_regslice => in_stream_TLAST_int_regslice,
      in_stream_TREADY_int_regslice => in_stream_TREADY_int_regslice,
      out_stream_TDATA(31 downto 0) => out_stream_TDATA(31 downto 0),
      out_stream_TREADY => out_stream_TREADY,
      out_stream_TVALID => out_stream_TVALID,
      sub_ln27_fu_181_p2(30 downto 0) => sub_ln27_fu_181_p2(31 downto 1)
    );
regslice_both_out_stream_V_keep_V_U: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0_2\
     port map (
      D(3 downto 0) => in_stream_TKEEP_int_regslice(3 downto 0),
      E(0) => load_p2,
      ack_in_t_reg_0 => regslice_both_out_stream_V_keep_V_U_n_0,
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      in_stream_TREADY_int_regslice => in_stream_TREADY_int_regslice,
      out_stream_TKEEP(3 downto 0) => out_stream_TKEEP(3 downto 0),
      out_stream_TREADY => out_stream_TREADY
    );
regslice_both_out_stream_V_last_V_U: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized1_3\
     port map (
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      in_stream_TLAST_int_regslice => in_stream_TLAST_int_regslice,
      in_stream_TREADY_int_regslice => in_stream_TREADY_int_regslice,
      out_stream_TLAST(0) => out_stream_TLAST(0),
      out_stream_TREADY => out_stream_TREADY
    );
regslice_both_out_stream_V_strb_V_U: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0_4\
     port map (
      D(3 downto 0) => in_stream_TSTRB_int_regslice(3 downto 0),
      E(0) => load_p2_0,
      ack_in_t_reg_0 => regslice_both_out_stream_V_strb_V_U_n_0,
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      in_stream_TREADY_int_regslice => in_stream_TREADY_int_regslice,
      out_stream_TREADY => out_stream_TREADY,
      out_stream_TSTRB(3 downto 0) => out_stream_TSTRB(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_ctrl_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_ARREADY : out STD_LOGIC;
    s_axi_ctrl_ARVALID : in STD_LOGIC;
    s_axi_ctrl_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_AWREADY : out STD_LOGIC;
    s_axi_ctrl_AWVALID : in STD_LOGIC;
    s_axi_ctrl_BREADY : in STD_LOGIC;
    s_axi_ctrl_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_BVALID : out STD_LOGIC;
    s_axi_ctrl_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_RREADY : in STD_LOGIC;
    s_axi_ctrl_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_RVALID : out STD_LOGIC;
    s_axi_ctrl_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_WREADY : out STD_LOGIC;
    s_axi_ctrl_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_WVALID : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    in_stream_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_stream_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_stream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_stream_TREADY : out STD_LOGIC;
    in_stream_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_stream_TVALID : in STD_LOGIC;
    out_stream_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    out_stream_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    out_stream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_stream_TREADY : in STD_LOGIC;
    out_stream_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    out_stream_TVALID : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "dma_axis_ip_example_audio_passthrough_0_0,audio_passthrough,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "audio_passthrough,Vivado 2024.1";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_ctrl_rdata\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_inst_s_axi_ctrl_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_ctrl_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_inst_s_axi_ctrl_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of inst : label is 5;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_CTRL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CTRL_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of inst : label is "1'b1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_ctrl:in_stream:out_stream, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999985, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dma_axis_ip_example_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of in_stream_TREADY : signal is "xilinx.com:interface:axis:1.0 in_stream TREADY";
  attribute X_INTERFACE_INFO of in_stream_TVALID : signal is "xilinx.com:interface:axis:1.0 in_stream TVALID";
  attribute X_INTERFACE_PARAMETER of in_stream_TVALID : signal is "XIL_INTERFACENAME in_stream, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999985, PHASE 0.0, CLK_DOMAIN dma_axis_ip_example_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of out_stream_TREADY : signal is "xilinx.com:interface:axis:1.0 out_stream TREADY";
  attribute X_INTERFACE_INFO of out_stream_TVALID : signal is "xilinx.com:interface:axis:1.0 out_stream TVALID";
  attribute X_INTERFACE_PARAMETER of out_stream_TVALID : signal is "XIL_INTERFACENAME out_stream, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999985, PHASE 0.0, CLK_DOMAIN dma_axis_ip_example_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_ctrl_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID";
  attribute X_INTERFACE_PARAMETER of s_axi_ctrl_WVALID : signal is "XIL_INTERFACENAME s_axi_ctrl, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 99999985, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN dma_axis_ip_example_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of in_stream_TDATA : signal is "xilinx.com:interface:axis:1.0 in_stream TDATA";
  attribute X_INTERFACE_INFO of in_stream_TKEEP : signal is "xilinx.com:interface:axis:1.0 in_stream TKEEP";
  attribute X_INTERFACE_INFO of in_stream_TLAST : signal is "xilinx.com:interface:axis:1.0 in_stream TLAST";
  attribute X_INTERFACE_INFO of in_stream_TSTRB : signal is "xilinx.com:interface:axis:1.0 in_stream TSTRB";
  attribute X_INTERFACE_INFO of out_stream_TDATA : signal is "xilinx.com:interface:axis:1.0 out_stream TDATA";
  attribute X_INTERFACE_INFO of out_stream_TKEEP : signal is "xilinx.com:interface:axis:1.0 out_stream TKEEP";
  attribute X_INTERFACE_INFO of out_stream_TLAST : signal is "xilinx.com:interface:axis:1.0 out_stream TLAST";
  attribute X_INTERFACE_INFO of out_stream_TSTRB : signal is "xilinx.com:interface:axis:1.0 out_stream TSTRB";
  attribute X_INTERFACE_INFO of s_axi_ctrl_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WSTRB";
begin
  s_axi_ctrl_BRESP(1) <= \<const0>\;
  s_axi_ctrl_BRESP(0) <= \<const0>\;
  s_axi_ctrl_RDATA(31) <= \<const0>\;
  s_axi_ctrl_RDATA(30) <= \<const0>\;
  s_axi_ctrl_RDATA(29) <= \<const0>\;
  s_axi_ctrl_RDATA(28) <= \<const0>\;
  s_axi_ctrl_RDATA(27) <= \<const0>\;
  s_axi_ctrl_RDATA(26) <= \<const0>\;
  s_axi_ctrl_RDATA(25) <= \<const0>\;
  s_axi_ctrl_RDATA(24) <= \<const0>\;
  s_axi_ctrl_RDATA(23) <= \<const0>\;
  s_axi_ctrl_RDATA(22) <= \<const0>\;
  s_axi_ctrl_RDATA(21) <= \<const0>\;
  s_axi_ctrl_RDATA(20) <= \<const0>\;
  s_axi_ctrl_RDATA(19) <= \<const0>\;
  s_axi_ctrl_RDATA(18) <= \<const0>\;
  s_axi_ctrl_RDATA(17) <= \<const0>\;
  s_axi_ctrl_RDATA(16) <= \<const0>\;
  s_axi_ctrl_RDATA(15) <= \<const0>\;
  s_axi_ctrl_RDATA(14) <= \<const0>\;
  s_axi_ctrl_RDATA(13) <= \<const0>\;
  s_axi_ctrl_RDATA(12) <= \<const0>\;
  s_axi_ctrl_RDATA(11) <= \<const0>\;
  s_axi_ctrl_RDATA(10) <= \<const0>\;
  s_axi_ctrl_RDATA(9) <= \^s_axi_ctrl_rdata\(9);
  s_axi_ctrl_RDATA(8) <= \<const0>\;
  s_axi_ctrl_RDATA(7 downto 0) <= \^s_axi_ctrl_rdata\(7 downto 0);
  s_axi_ctrl_RRESP(1) <= \<const0>\;
  s_axi_ctrl_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      in_stream_TDATA(31 downto 0) => in_stream_TDATA(31 downto 0),
      in_stream_TKEEP(3 downto 0) => in_stream_TKEEP(3 downto 0),
      in_stream_TLAST(0) => in_stream_TLAST(0),
      in_stream_TREADY => in_stream_TREADY,
      in_stream_TSTRB(3 downto 0) => in_stream_TSTRB(3 downto 0),
      in_stream_TVALID => in_stream_TVALID,
      interrupt => interrupt,
      out_stream_TDATA(31 downto 0) => out_stream_TDATA(31 downto 0),
      out_stream_TKEEP(3 downto 0) => out_stream_TKEEP(3 downto 0),
      out_stream_TLAST(0) => out_stream_TLAST(0),
      out_stream_TREADY => out_stream_TREADY,
      out_stream_TSTRB(3 downto 0) => out_stream_TSTRB(3 downto 0),
      out_stream_TVALID => out_stream_TVALID,
      s_axi_ctrl_ARADDR(4 downto 0) => s_axi_ctrl_ARADDR(4 downto 0),
      s_axi_ctrl_ARREADY => s_axi_ctrl_ARREADY,
      s_axi_ctrl_ARVALID => s_axi_ctrl_ARVALID,
      s_axi_ctrl_AWADDR(4 downto 2) => s_axi_ctrl_AWADDR(4 downto 2),
      s_axi_ctrl_AWADDR(1 downto 0) => B"00",
      s_axi_ctrl_AWREADY => s_axi_ctrl_AWREADY,
      s_axi_ctrl_AWVALID => s_axi_ctrl_AWVALID,
      s_axi_ctrl_BREADY => s_axi_ctrl_BREADY,
      s_axi_ctrl_BRESP(1 downto 0) => NLW_inst_s_axi_ctrl_BRESP_UNCONNECTED(1 downto 0),
      s_axi_ctrl_BVALID => s_axi_ctrl_BVALID,
      s_axi_ctrl_RDATA(31 downto 10) => NLW_inst_s_axi_ctrl_RDATA_UNCONNECTED(31 downto 10),
      s_axi_ctrl_RDATA(9) => \^s_axi_ctrl_rdata\(9),
      s_axi_ctrl_RDATA(8) => NLW_inst_s_axi_ctrl_RDATA_UNCONNECTED(8),
      s_axi_ctrl_RDATA(7 downto 0) => \^s_axi_ctrl_rdata\(7 downto 0),
      s_axi_ctrl_RREADY => s_axi_ctrl_RREADY,
      s_axi_ctrl_RRESP(1 downto 0) => NLW_inst_s_axi_ctrl_RRESP_UNCONNECTED(1 downto 0),
      s_axi_ctrl_RVALID => s_axi_ctrl_RVALID,
      s_axi_ctrl_WDATA(31 downto 8) => B"000000000000000000000000",
      s_axi_ctrl_WDATA(7 downto 0) => s_axi_ctrl_WDATA(7 downto 0),
      s_axi_ctrl_WREADY => s_axi_ctrl_WREADY,
      s_axi_ctrl_WSTRB(3 downto 1) => B"000",
      s_axi_ctrl_WSTRB(0) => s_axi_ctrl_WSTRB(0),
      s_axi_ctrl_WVALID => s_axi_ctrl_WVALID
    );
end STRUCTURE;
