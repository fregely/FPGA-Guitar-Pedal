// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Mar 31 15:35:00 2026
// Host        : Theodore running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dma_axis_ip_example_audio_passthrough_0_0_sim_netlist.v
// Design      : dma_axis_ip_example_audio_passthrough_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_S_AXI_CTRL_ADDR_WIDTH = "5" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* C_S_AXI_CTRL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ap_ST_fsm_pp0_stage0 = "1'b1" *) 
(* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough
   (ap_clk,
    ap_rst_n,
    in_stream_TVALID,
    out_stream_TREADY,
    in_stream_TDATA,
    in_stream_TREADY,
    in_stream_TKEEP,
    in_stream_TSTRB,
    in_stream_TLAST,
    out_stream_TDATA,
    out_stream_TVALID,
    out_stream_TKEEP,
    out_stream_TSTRB,
    out_stream_TLAST,
    s_axi_ctrl_AWVALID,
    s_axi_ctrl_AWREADY,
    s_axi_ctrl_AWADDR,
    s_axi_ctrl_WVALID,
    s_axi_ctrl_WREADY,
    s_axi_ctrl_WDATA,
    s_axi_ctrl_WSTRB,
    s_axi_ctrl_ARVALID,
    s_axi_ctrl_ARREADY,
    s_axi_ctrl_ARADDR,
    s_axi_ctrl_RVALID,
    s_axi_ctrl_RREADY,
    s_axi_ctrl_RDATA,
    s_axi_ctrl_RRESP,
    s_axi_ctrl_BVALID,
    s_axi_ctrl_BREADY,
    s_axi_ctrl_BRESP,
    interrupt);
  input ap_clk;
  input ap_rst_n;
  input in_stream_TVALID;
  input out_stream_TREADY;
  input [31:0]in_stream_TDATA;
  output in_stream_TREADY;
  input [3:0]in_stream_TKEEP;
  input [3:0]in_stream_TSTRB;
  input [0:0]in_stream_TLAST;
  output [31:0]out_stream_TDATA;
  output out_stream_TVALID;
  output [3:0]out_stream_TKEEP;
  output [3:0]out_stream_TSTRB;
  output [0:0]out_stream_TLAST;
  input s_axi_ctrl_AWVALID;
  output s_axi_ctrl_AWREADY;
  input [4:0]s_axi_ctrl_AWADDR;
  input s_axi_ctrl_WVALID;
  output s_axi_ctrl_WREADY;
  input [31:0]s_axi_ctrl_WDATA;
  input [3:0]s_axi_ctrl_WSTRB;
  input s_axi_ctrl_ARVALID;
  output s_axi_ctrl_ARREADY;
  input [4:0]s_axi_ctrl_ARADDR;
  output s_axi_ctrl_RVALID;
  input s_axi_ctrl_RREADY;
  output [31:0]s_axi_ctrl_RDATA;
  output [1:0]s_axi_ctrl_RRESP;
  output s_axi_ctrl_BVALID;
  input s_axi_ctrl_BREADY;
  output [1:0]s_axi_ctrl_BRESP;
  output interrupt;

  wire \<const0> ;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_condition_exit_pp0_iter0_stage0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire ctrl_s_axi_U_n_8;
  wire ctrl_s_axi_U_n_9;
  wire [31:0]in_stream_TDATA;
  wire [3:0]in_stream_TKEEP;
  wire [3:0]in_stream_TKEEP_int_regslice;
  wire [0:0]in_stream_TLAST;
  wire in_stream_TLAST_int_regslice;
  wire in_stream_TREADY;
  wire in_stream_TREADY_int_regslice;
  wire [3:0]in_stream_TSTRB;
  wire [3:0]in_stream_TSTRB_int_regslice;
  wire in_stream_TVALID;
  wire in_stream_TVALID_int_regslice;
  wire interrupt;
  wire load_p2;
  wire load_p2_0;
  wire [31:0]out_stream_TDATA;
  wire [31:1]out_stream_TDATA_int_regslice;
  wire [3:0]out_stream_TKEEP;
  wire [0:0]out_stream_TLAST;
  wire out_stream_TREADY;
  wire [3:0]out_stream_TSTRB;
  wire out_stream_TVALID;
  wire regslice_both_in_stream_V_data_V_U_n_33;
  wire regslice_both_in_stream_V_data_V_U_n_34;
  wire regslice_both_in_stream_V_data_V_U_n_35;
  wire regslice_both_in_stream_V_data_V_U_n_36;
  wire regslice_both_in_stream_V_data_V_U_n_37;
  wire regslice_both_in_stream_V_data_V_U_n_38;
  wire regslice_both_in_stream_V_data_V_U_n_39;
  wire regslice_both_in_stream_V_data_V_U_n_40;
  wire regslice_both_in_stream_V_data_V_U_n_41;
  wire regslice_both_in_stream_V_data_V_U_n_42;
  wire regslice_both_in_stream_V_data_V_U_n_43;
  wire regslice_both_in_stream_V_data_V_U_n_44;
  wire regslice_both_in_stream_V_data_V_U_n_45;
  wire regslice_both_in_stream_V_data_V_U_n_46;
  wire regslice_both_in_stream_V_data_V_U_n_47;
  wire regslice_both_in_stream_V_data_V_U_n_48;
  wire regslice_both_in_stream_V_data_V_U_n_49;
  wire regslice_both_in_stream_V_data_V_U_n_50;
  wire regslice_both_in_stream_V_data_V_U_n_51;
  wire regslice_both_in_stream_V_data_V_U_n_52;
  wire regslice_both_in_stream_V_data_V_U_n_53;
  wire regslice_both_in_stream_V_data_V_U_n_54;
  wire regslice_both_in_stream_V_data_V_U_n_55;
  wire regslice_both_in_stream_V_data_V_U_n_56;
  wire regslice_both_in_stream_V_data_V_U_n_57;
  wire regslice_both_in_stream_V_data_V_U_n_58;
  wire regslice_both_in_stream_V_data_V_U_n_59;
  wire regslice_both_in_stream_V_data_V_U_n_60;
  wire regslice_both_in_stream_V_data_V_U_n_61;
  wire regslice_both_in_stream_V_data_V_U_n_62;
  wire regslice_both_in_stream_V_data_V_U_n_63;
  wire regslice_both_in_stream_V_data_V_U_n_64;
  wire regslice_both_out_stream_V_data_V_U_n_0;
  wire regslice_both_out_stream_V_keep_V_U_n_0;
  wire regslice_both_out_stream_V_strb_V_U_n_0;
  wire [4:0]s_axi_ctrl_ARADDR;
  wire s_axi_ctrl_ARREADY;
  wire s_axi_ctrl_ARVALID;
  wire [4:0]s_axi_ctrl_AWADDR;
  wire s_axi_ctrl_AWREADY;
  wire s_axi_ctrl_AWVALID;
  wire s_axi_ctrl_BREADY;
  wire s_axi_ctrl_BVALID;
  wire [9:0]\^s_axi_ctrl_RDATA ;
  wire s_axi_ctrl_RREADY;
  wire s_axi_ctrl_RVALID;
  wire [31:0]s_axi_ctrl_WDATA;
  wire s_axi_ctrl_WREADY;
  wire [3:0]s_axi_ctrl_WSTRB;
  wire s_axi_ctrl_WVALID;
  wire [31:1]sub_ln27_fu_181_p2;

  assign s_axi_ctrl_BRESP[1] = \<const0> ;
  assign s_axi_ctrl_BRESP[0] = \<const0> ;
  assign s_axi_ctrl_RDATA[31] = \<const0> ;
  assign s_axi_ctrl_RDATA[30] = \<const0> ;
  assign s_axi_ctrl_RDATA[29] = \<const0> ;
  assign s_axi_ctrl_RDATA[28] = \<const0> ;
  assign s_axi_ctrl_RDATA[27] = \<const0> ;
  assign s_axi_ctrl_RDATA[26] = \<const0> ;
  assign s_axi_ctrl_RDATA[25] = \<const0> ;
  assign s_axi_ctrl_RDATA[24] = \<const0> ;
  assign s_axi_ctrl_RDATA[23] = \<const0> ;
  assign s_axi_ctrl_RDATA[22] = \<const0> ;
  assign s_axi_ctrl_RDATA[21] = \<const0> ;
  assign s_axi_ctrl_RDATA[20] = \<const0> ;
  assign s_axi_ctrl_RDATA[19] = \<const0> ;
  assign s_axi_ctrl_RDATA[18] = \<const0> ;
  assign s_axi_ctrl_RDATA[17] = \<const0> ;
  assign s_axi_ctrl_RDATA[16] = \<const0> ;
  assign s_axi_ctrl_RDATA[15] = \<const0> ;
  assign s_axi_ctrl_RDATA[14] = \<const0> ;
  assign s_axi_ctrl_RDATA[13] = \<const0> ;
  assign s_axi_ctrl_RDATA[12] = \<const0> ;
  assign s_axi_ctrl_RDATA[11] = \<const0> ;
  assign s_axi_ctrl_RDATA[10] = \<const0> ;
  assign s_axi_ctrl_RDATA[9] = \^s_axi_ctrl_RDATA [9];
  assign s_axi_ctrl_RDATA[8] = \<const0> ;
  assign s_axi_ctrl_RDATA[7:0] = \^s_axi_ctrl_RDATA [7:0];
  assign s_axi_ctrl_RRESP[1] = \<const0> ;
  assign s_axi_ctrl_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ctrl_s_axi_U_n_9),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ap_rst_n_inv));
  FDRE ap_loop_exit_ready_pp0_iter1_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_out_stream_V_data_V_U_n_0),
        .Q(ap_loop_exit_ready_pp0_iter1_reg),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_ctrl_s_axi ctrl_s_axi_U
       (.\FSM_onehot_rstate_reg[1]_0 (s_axi_ctrl_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_ctrl_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_ctrl_WREADY),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_condition_exit_pp0_iter0_stage0(ap_condition_exit_pp0_iter0_stage0),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_loop_exit_ready_pp0_iter1_reg(ap_loop_exit_ready_pp0_iter1_reg),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .in_stream_TLAST_int_regslice(in_stream_TLAST_int_regslice),
        .int_ap_start_reg_0(ctrl_s_axi_U_n_9),
        .\int_switches_reg[1]_0 (ctrl_s_axi_U_n_8),
        .interrupt(interrupt),
        .s_axi_ctrl_ARADDR(s_axi_ctrl_ARADDR),
        .s_axi_ctrl_ARVALID(s_axi_ctrl_ARVALID),
        .s_axi_ctrl_AWADDR(s_axi_ctrl_AWADDR[4:2]),
        .s_axi_ctrl_AWVALID(s_axi_ctrl_AWVALID),
        .s_axi_ctrl_BREADY(s_axi_ctrl_BREADY),
        .s_axi_ctrl_BVALID(s_axi_ctrl_BVALID),
        .s_axi_ctrl_RDATA({\^s_axi_ctrl_RDATA [9],\^s_axi_ctrl_RDATA [7:0]}),
        .s_axi_ctrl_RREADY(s_axi_ctrl_RREADY),
        .s_axi_ctrl_RVALID(s_axi_ctrl_RVALID),
        .s_axi_ctrl_WDATA(s_axi_ctrl_WDATA[7:0]),
        .s_axi_ctrl_WSTRB(s_axi_ctrl_WSTRB[0]),
        .s_axi_ctrl_WVALID(s_axi_ctrl_WVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both regslice_both_in_stream_V_data_V_U
       (.D(out_stream_TDATA_int_regslice),
        .Q(in_stream_TVALID_int_regslice),
        .ack_in_t_reg_0(in_stream_TREADY),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\data_p1_reg[31]_0 ({regslice_both_in_stream_V_data_V_U_n_33,regslice_both_in_stream_V_data_V_U_n_34,regslice_both_in_stream_V_data_V_U_n_35,regslice_both_in_stream_V_data_V_U_n_36,regslice_both_in_stream_V_data_V_U_n_37,regslice_both_in_stream_V_data_V_U_n_38,regslice_both_in_stream_V_data_V_U_n_39,regslice_both_in_stream_V_data_V_U_n_40,regslice_both_in_stream_V_data_V_U_n_41,regslice_both_in_stream_V_data_V_U_n_42,regslice_both_in_stream_V_data_V_U_n_43,regslice_both_in_stream_V_data_V_U_n_44,regslice_both_in_stream_V_data_V_U_n_45,regslice_both_in_stream_V_data_V_U_n_46,regslice_both_in_stream_V_data_V_U_n_47,regslice_both_in_stream_V_data_V_U_n_48,regslice_both_in_stream_V_data_V_U_n_49,regslice_both_in_stream_V_data_V_U_n_50,regslice_both_in_stream_V_data_V_U_n_51,regslice_both_in_stream_V_data_V_U_n_52,regslice_both_in_stream_V_data_V_U_n_53,regslice_both_in_stream_V_data_V_U_n_54,regslice_both_in_stream_V_data_V_U_n_55,regslice_both_in_stream_V_data_V_U_n_56,regslice_both_in_stream_V_data_V_U_n_57,regslice_both_in_stream_V_data_V_U_n_58,regslice_both_in_stream_V_data_V_U_n_59,regslice_both_in_stream_V_data_V_U_n_60,regslice_both_in_stream_V_data_V_U_n_61,regslice_both_in_stream_V_data_V_U_n_62,regslice_both_in_stream_V_data_V_U_n_63,regslice_both_in_stream_V_data_V_U_n_64}),
        .\data_p2_reg[1]_0 (ctrl_s_axi_U_n_8),
        .in_stream_TDATA(in_stream_TDATA),
        .in_stream_TREADY_int_regslice(in_stream_TREADY_int_regslice),
        .in_stream_TVALID(in_stream_TVALID),
        .sub_ln27_fu_181_p2(sub_ln27_fu_181_p2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0 regslice_both_in_stream_V_keep_V_U
       (.Q(in_stream_TKEEP_int_regslice),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .in_stream_TKEEP(in_stream_TKEEP),
        .in_stream_TREADY_int_regslice(in_stream_TREADY_int_regslice),
        .in_stream_TVALID(in_stream_TVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized1 regslice_both_in_stream_V_last_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .in_stream_TLAST(in_stream_TLAST),
        .in_stream_TLAST_int_regslice(in_stream_TLAST_int_regslice),
        .in_stream_TREADY_int_regslice(in_stream_TREADY_int_regslice),
        .in_stream_TVALID(in_stream_TVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0_0 regslice_both_in_stream_V_strb_V_U
       (.Q(in_stream_TSTRB_int_regslice),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .in_stream_TREADY_int_regslice(in_stream_TREADY_int_regslice),
        .in_stream_TSTRB(in_stream_TSTRB),
        .in_stream_TVALID(in_stream_TVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both_1 regslice_both_out_stream_V_data_V_U
       (.D({out_stream_TDATA_int_regslice,regslice_both_in_stream_V_data_V_U_n_64}),
        .E(load_p2_0),
        .Q(in_stream_TVALID_int_regslice),
        .ack_in_t_reg_0(load_p2),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_condition_exit_pp0_iter0_stage0(ap_condition_exit_pp0_iter0_stage0),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_loop_exit_ready_pp0_iter1_reg(ap_loop_exit_ready_pp0_iter1_reg),
        .ap_loop_exit_ready_pp0_iter1_reg_reg(regslice_both_out_stream_V_data_V_U_n_0),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .\data_p1_reg[1]_0 (ctrl_s_axi_U_n_8),
        .\data_p1_reg[31]_0 ({regslice_both_in_stream_V_data_V_U_n_33,regslice_both_in_stream_V_data_V_U_n_34,regslice_both_in_stream_V_data_V_U_n_35,regslice_both_in_stream_V_data_V_U_n_36,regslice_both_in_stream_V_data_V_U_n_37,regslice_both_in_stream_V_data_V_U_n_38,regslice_both_in_stream_V_data_V_U_n_39,regslice_both_in_stream_V_data_V_U_n_40,regslice_both_in_stream_V_data_V_U_n_41,regslice_both_in_stream_V_data_V_U_n_42,regslice_both_in_stream_V_data_V_U_n_43,regslice_both_in_stream_V_data_V_U_n_44,regslice_both_in_stream_V_data_V_U_n_45,regslice_both_in_stream_V_data_V_U_n_46,regslice_both_in_stream_V_data_V_U_n_47,regslice_both_in_stream_V_data_V_U_n_48,regslice_both_in_stream_V_data_V_U_n_49,regslice_both_in_stream_V_data_V_U_n_50,regslice_both_in_stream_V_data_V_U_n_51,regslice_both_in_stream_V_data_V_U_n_52,regslice_both_in_stream_V_data_V_U_n_53,regslice_both_in_stream_V_data_V_U_n_54,regslice_both_in_stream_V_data_V_U_n_55,regslice_both_in_stream_V_data_V_U_n_56,regslice_both_in_stream_V_data_V_U_n_57,regslice_both_in_stream_V_data_V_U_n_58,regslice_both_in_stream_V_data_V_U_n_59,regslice_both_in_stream_V_data_V_U_n_60,regslice_both_in_stream_V_data_V_U_n_61,regslice_both_in_stream_V_data_V_U_n_62,regslice_both_in_stream_V_data_V_U_n_63}),
        .\data_p2_reg[3]_0 (regslice_both_out_stream_V_strb_V_U_n_0),
        .\data_p2_reg[3]_1 (regslice_both_out_stream_V_keep_V_U_n_0),
        .in_stream_TLAST_int_regslice(in_stream_TLAST_int_regslice),
        .in_stream_TREADY_int_regslice(in_stream_TREADY_int_regslice),
        .out_stream_TDATA(out_stream_TDATA),
        .out_stream_TREADY(out_stream_TREADY),
        .out_stream_TVALID(out_stream_TVALID),
        .sub_ln27_fu_181_p2(sub_ln27_fu_181_p2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0_2 regslice_both_out_stream_V_keep_V_U
       (.D(in_stream_TKEEP_int_regslice),
        .E(load_p2),
        .ack_in_t_reg_0(regslice_both_out_stream_V_keep_V_U_n_0),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .in_stream_TREADY_int_regslice(in_stream_TREADY_int_regslice),
        .out_stream_TKEEP(out_stream_TKEEP),
        .out_stream_TREADY(out_stream_TREADY));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized1_3 regslice_both_out_stream_V_last_V_U
       (.ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .in_stream_TLAST_int_regslice(in_stream_TLAST_int_regslice),
        .in_stream_TREADY_int_regslice(in_stream_TREADY_int_regslice),
        .out_stream_TLAST(out_stream_TLAST),
        .out_stream_TREADY(out_stream_TREADY));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0_4 regslice_both_out_stream_V_strb_V_U
       (.D(in_stream_TSTRB_int_regslice),
        .E(load_p2_0),
        .ack_in_t_reg_0(regslice_both_out_stream_V_strb_V_U_n_0),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .in_stream_TREADY_int_regslice(in_stream_TREADY_int_regslice),
        .out_stream_TREADY(out_stream_TREADY),
        .out_stream_TSTRB(out_stream_TSTRB));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_ctrl_s_axi
   (ap_rst_n_inv,
    interrupt,
    \FSM_onehot_rstate_reg[1]_0 ,
    \FSM_onehot_wstate_reg[2]_0 ,
    ap_start,
    s_axi_ctrl_BVALID,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_ctrl_RVALID,
    \int_switches_reg[1]_0 ,
    int_ap_start_reg_0,
    s_axi_ctrl_RDATA,
    ap_clk,
    s_axi_ctrl_ARADDR,
    s_axi_ctrl_ARVALID,
    s_axi_ctrl_WVALID,
    s_axi_ctrl_WSTRB,
    ap_enable_reg_pp0_iter1,
    s_axi_ctrl_BREADY,
    s_axi_ctrl_AWVALID,
    s_axi_ctrl_RREADY,
    s_axi_ctrl_WDATA,
    ap_rst_n,
    ap_loop_exit_ready_pp0_iter1_reg,
    ap_block_pp0_stage0_11001,
    in_stream_TLAST_int_regslice,
    s_axi_ctrl_AWADDR,
    ap_condition_exit_pp0_iter0_stage0);
  output ap_rst_n_inv;
  output interrupt;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output ap_start;
  output s_axi_ctrl_BVALID;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output s_axi_ctrl_RVALID;
  output \int_switches_reg[1]_0 ;
  output int_ap_start_reg_0;
  output [8:0]s_axi_ctrl_RDATA;
  input ap_clk;
  input [4:0]s_axi_ctrl_ARADDR;
  input s_axi_ctrl_ARVALID;
  input s_axi_ctrl_WVALID;
  input [0:0]s_axi_ctrl_WSTRB;
  input ap_enable_reg_pp0_iter1;
  input s_axi_ctrl_BREADY;
  input s_axi_ctrl_AWVALID;
  input s_axi_ctrl_RREADY;
  input [7:0]s_axi_ctrl_WDATA;
  input ap_rst_n;
  input ap_loop_exit_ready_pp0_iter1_reg;
  input ap_block_pp0_stage0_11001;
  input in_stream_TLAST_int_regslice;
  input [2:0]s_axi_ctrl_AWADDR;
  input ap_condition_exit_pp0_iter0_stage0;

  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_1_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_condition_exit_pp0_iter0_stage0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_idle;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire ar_hs;
  wire auto_restart_status_i_1_n_0;
  wire auto_restart_status_reg_n_0;
  wire in_stream_TLAST_int_regslice;
  wire int_ap_ready;
  wire int_ap_ready_i_1_n_0;
  wire int_ap_start1;
  wire int_ap_start_i_1_n_0;
  wire int_ap_start_reg_0;
  wire int_auto_restart_i_1_n_0;
  wire int_auto_restart_i_2_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_reg_n_0;
  wire int_ier10_out;
  wire \int_ier_reg_n_0_[0] ;
  wire int_interrupt0;
  wire int_isr7_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire \int_isr_reg_n_0_[1] ;
  wire \int_switches[0]_i_1_n_0 ;
  wire \int_switches[1]_i_1_n_0 ;
  wire \int_switches[2]_i_1_n_0 ;
  wire \int_switches[3]_i_1_n_0 ;
  wire \int_switches[4]_i_1_n_0 ;
  wire \int_switches[5]_i_1_n_0 ;
  wire \int_switches[6]_i_1_n_0 ;
  wire \int_switches[7]_i_1_n_0 ;
  wire \int_switches[7]_i_2_n_0 ;
  wire \int_switches_reg[1]_0 ;
  wire \int_switches_reg_n_0_[5] ;
  wire \int_switches_reg_n_0_[6] ;
  wire \int_switches_reg_n_0_[7] ;
  wire int_task_ap_done;
  wire int_task_ap_done0__4;
  wire int_task_ap_done_i_1_n_0;
  wire int_task_ap_done_i_2_n_0;
  wire interrupt;
  wire p_0_in;
  wire [7:2]p_1_in;
  wire [9:0]rdata;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire [4:0]s_axi_ctrl_ARADDR;
  wire s_axi_ctrl_ARVALID;
  wire [2:0]s_axi_ctrl_AWADDR;
  wire s_axi_ctrl_AWVALID;
  wire s_axi_ctrl_BREADY;
  wire s_axi_ctrl_BVALID;
  wire [8:0]s_axi_ctrl_RDATA;
  wire s_axi_ctrl_RREADY;
  wire s_axi_ctrl_RVALID;
  wire [7:0]s_axi_ctrl_WDATA;
  wire [0:0]s_axi_ctrl_WSTRB;
  wire s_axi_ctrl_WVALID;
  wire [4:0]switches;
  wire waddr;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF277)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_ctrl_ARVALID),
        .I2(s_axi_ctrl_RREADY),
        .I3(s_axi_ctrl_RVALID),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_ctrl_RREADY),
        .I1(s_axi_ctrl_RVALID),
        .I2(s_axi_ctrl_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(s_axi_ctrl_RVALID),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFF0C1D1D)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_ctrl_AWVALID),
        .I3(s_axi_ctrl_BREADY),
        .I4(s_axi_ctrl_BVALID),
        .O(\FSM_onehot_wstate[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_ctrl_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_ctrl_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_ctrl_BREADY),
        .I1(s_axi_ctrl_BVALID),
        .I2(s_axi_ctrl_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_ctrl_BVALID),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    ack_in_t_i_1
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_start),
        .I1(ap_block_pp0_stage0_11001),
        .I2(ap_enable_reg_pp0_iter1),
        .O(int_ap_start_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFEAA)) 
    auto_restart_status_i_1
       (.I0(p_1_in[7]),
        .I1(ap_start),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(auto_restart_status_reg_n_0),
        .O(auto_restart_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(auto_restart_status_i_1_n_0),
        .Q(auto_restart_status_reg_n_0),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_p1[31]_i_3 
       (.I0(switches[1]),
        .I1(switches[3]),
        .I2(switches[0]),
        .I3(switches[2]),
        .I4(switches[4]),
        .O(\int_switches_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    int_ap_idle_i_1
       (.I0(ap_start),
        .I1(ap_enable_reg_pp0_iter1),
        .O(ap_idle));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(p_1_in[2]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h0040FFFF00400040)) 
    int_ap_ready_i_1
       (.I0(p_1_in[7]),
        .I1(ap_start),
        .I2(in_stream_TLAST_int_regslice),
        .I3(ap_block_pp0_stage0_11001),
        .I4(int_task_ap_done0__4),
        .I5(int_ap_ready),
        .O(int_ap_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFEF00EF00EF00)) 
    int_ap_start_i_1
       (.I0(p_1_in[7]),
        .I1(ap_block_pp0_stage0_11001),
        .I2(in_stream_TLAST_int_regslice),
        .I3(ap_start),
        .I4(int_ap_start1),
        .I5(s_axi_ctrl_WDATA[0]),
        .O(int_ap_start_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    int_ap_start_i_3
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_ctrl_WVALID),
        .I4(\waddr_reg_n_0_[4] ),
        .I5(s_axi_ctrl_WSTRB),
        .O(int_ap_start1));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    int_auto_restart_i_1
       (.I0(s_axi_ctrl_WDATA[7]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(int_auto_restart_i_2_n_0),
        .I4(p_1_in[7]),
        .O(int_auto_restart_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    int_auto_restart_i_2
       (.I0(s_axi_ctrl_WSTRB),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(s_axi_ctrl_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(int_auto_restart_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(p_1_in[7]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    int_gie_i_1
       (.I0(s_axi_ctrl_WDATA[0]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(int_auto_restart_i_2_n_0),
        .I4(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \int_ier[1]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_ctrl_WVALID),
        .I4(\waddr_reg_n_0_[4] ),
        .I5(s_axi_ctrl_WSTRB),
        .O(int_ier10_out));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(int_ier10_out),
        .D(s_axi_ctrl_WDATA[0]),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(int_ier10_out),
        .D(s_axi_ctrl_WDATA[1]),
        .Q(p_0_in),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hE0)) 
    int_interrupt_i_1
       (.I0(\int_isr_reg_n_0_[0] ),
        .I1(\int_isr_reg_n_0_[1] ),
        .I2(int_gie_reg_n_0),
        .O(int_interrupt0));
  FDRE #(
    .INIT(1'b0)) 
    int_interrupt_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_interrupt0),
        .Q(interrupt),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h7F7777778F888888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_ctrl_WDATA[0]),
        .I1(int_isr7_out),
        .I2(ap_block_pp0_stage0_11001),
        .I3(ap_loop_exit_ready_pp0_iter1_reg),
        .I4(\int_ier_reg_n_0_[0] ),
        .I5(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \int_isr[0]_i_2 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_ctrl_WVALID),
        .I4(\waddr_reg_n_0_[4] ),
        .I5(s_axi_ctrl_WSTRB),
        .O(int_isr7_out));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_ctrl_WDATA[1]),
        .I1(int_isr7_out),
        .I2(p_0_in),
        .I3(ap_condition_exit_pp0_iter0_stage0),
        .I4(\int_isr_reg_n_0_[1] ),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_switches[0]_i_1 
       (.I0(s_axi_ctrl_WDATA[0]),
        .I1(s_axi_ctrl_WSTRB),
        .I2(switches[0]),
        .O(\int_switches[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_switches[1]_i_1 
       (.I0(s_axi_ctrl_WDATA[1]),
        .I1(s_axi_ctrl_WSTRB),
        .I2(switches[1]),
        .O(\int_switches[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_switches[2]_i_1 
       (.I0(s_axi_ctrl_WDATA[2]),
        .I1(s_axi_ctrl_WSTRB),
        .I2(switches[2]),
        .O(\int_switches[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_switches[3]_i_1 
       (.I0(s_axi_ctrl_WDATA[3]),
        .I1(s_axi_ctrl_WSTRB),
        .I2(switches[3]),
        .O(\int_switches[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_switches[4]_i_1 
       (.I0(s_axi_ctrl_WDATA[4]),
        .I1(s_axi_ctrl_WSTRB),
        .I2(switches[4]),
        .O(\int_switches[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_switches[5]_i_1 
       (.I0(s_axi_ctrl_WDATA[5]),
        .I1(s_axi_ctrl_WSTRB),
        .I2(\int_switches_reg_n_0_[5] ),
        .O(\int_switches[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_switches[6]_i_1 
       (.I0(s_axi_ctrl_WDATA[6]),
        .I1(s_axi_ctrl_WSTRB),
        .I2(\int_switches_reg_n_0_[6] ),
        .O(\int_switches[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \int_switches[7]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .I4(s_axi_ctrl_WVALID),
        .O(\int_switches[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_switches[7]_i_2 
       (.I0(s_axi_ctrl_WDATA[7]),
        .I1(s_axi_ctrl_WSTRB),
        .I2(\int_switches_reg_n_0_[7] ),
        .O(\int_switches[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_switches_reg[0] 
       (.C(ap_clk),
        .CE(\int_switches[7]_i_1_n_0 ),
        .D(\int_switches[0]_i_1_n_0 ),
        .Q(switches[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_switches_reg[1] 
       (.C(ap_clk),
        .CE(\int_switches[7]_i_1_n_0 ),
        .D(\int_switches[1]_i_1_n_0 ),
        .Q(switches[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_switches_reg[2] 
       (.C(ap_clk),
        .CE(\int_switches[7]_i_1_n_0 ),
        .D(\int_switches[2]_i_1_n_0 ),
        .Q(switches[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_switches_reg[3] 
       (.C(ap_clk),
        .CE(\int_switches[7]_i_1_n_0 ),
        .D(\int_switches[3]_i_1_n_0 ),
        .Q(switches[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_switches_reg[4] 
       (.C(ap_clk),
        .CE(\int_switches[7]_i_1_n_0 ),
        .D(\int_switches[4]_i_1_n_0 ),
        .Q(switches[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_switches_reg[5] 
       (.C(ap_clk),
        .CE(\int_switches[7]_i_1_n_0 ),
        .D(\int_switches[5]_i_1_n_0 ),
        .Q(\int_switches_reg_n_0_[5] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_switches_reg[6] 
       (.C(ap_clk),
        .CE(\int_switches[7]_i_1_n_0 ),
        .D(\int_switches[6]_i_1_n_0 ),
        .Q(\int_switches_reg_n_0_[6] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_switches_reg[7] 
       (.C(ap_clk),
        .CE(\int_switches[7]_i_1_n_0 ),
        .D(\int_switches[7]_i_2_n_0 ),
        .Q(\int_switches_reg_n_0_[7] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFF04FFFFFF04FF04)) 
    int_task_ap_done_i_1
       (.I0(auto_restart_status_reg_n_0),
        .I1(ap_loop_exit_ready_pp0_iter1_reg),
        .I2(ap_block_pp0_stage0_11001),
        .I3(int_task_ap_done_i_2_n_0),
        .I4(int_task_ap_done0__4),
        .I5(int_task_ap_done),
        .O(int_task_ap_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    int_task_ap_done_i_2
       (.I0(p_1_in[2]),
        .I1(auto_restart_status_reg_n_0),
        .I2(ap_start),
        .I3(ap_enable_reg_pp0_iter1),
        .O(int_task_ap_done_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    int_task_ap_done_i_3
       (.I0(s_axi_ctrl_ARADDR[1]),
        .I1(s_axi_ctrl_ARADDR[0]),
        .I2(s_axi_ctrl_ARADDR[3]),
        .I3(s_axi_ctrl_ARADDR[2]),
        .I4(s_axi_ctrl_ARADDR[4]),
        .I5(ar_hs),
        .O(int_task_ap_done0__4));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h000CAAAA00000000)) 
    \rdata[0]_i_1 
       (.I0(\rdata[0]_i_2_n_0 ),
        .I1(switches[0]),
        .I2(s_axi_ctrl_ARADDR[3]),
        .I3(s_axi_ctrl_ARADDR[2]),
        .I4(s_axi_ctrl_ARADDR[4]),
        .I5(\rdata[7]_i_2_n_0 ),
        .O(rdata[0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdata[0]_i_2 
       (.I0(int_gie_reg_n_0),
        .I1(\int_isr_reg_n_0_[0] ),
        .I2(s_axi_ctrl_ARADDR[2]),
        .I3(s_axi_ctrl_ARADDR[3]),
        .I4(ap_start),
        .I5(\int_ier_reg_n_0_[0] ),
        .O(\rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000CAAAA00000000)) 
    \rdata[1]_i_1 
       (.I0(\rdata[1]_i_2_n_0 ),
        .I1(switches[1]),
        .I2(s_axi_ctrl_ARADDR[3]),
        .I3(s_axi_ctrl_ARADDR[2]),
        .I4(s_axi_ctrl_ARADDR[4]),
        .I5(\rdata[7]_i_2_n_0 ),
        .O(rdata[1]));
  LUT5 #(
    .INIT(32'hFC0A0C0A)) 
    \rdata[1]_i_2 
       (.I0(int_task_ap_done),
        .I1(p_0_in),
        .I2(s_axi_ctrl_ARADDR[2]),
        .I3(s_axi_ctrl_ARADDR[3]),
        .I4(\int_isr_reg_n_0_[1] ),
        .O(\rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000C000A00000000)) 
    \rdata[2]_i_1 
       (.I0(p_1_in[2]),
        .I1(switches[2]),
        .I2(s_axi_ctrl_ARADDR[3]),
        .I3(s_axi_ctrl_ARADDR[2]),
        .I4(s_axi_ctrl_ARADDR[4]),
        .I5(\rdata[7]_i_2_n_0 ),
        .O(rdata[2]));
  LUT6 #(
    .INIT(64'h000C000A00000000)) 
    \rdata[3]_i_1 
       (.I0(int_ap_ready),
        .I1(switches[3]),
        .I2(s_axi_ctrl_ARADDR[3]),
        .I3(s_axi_ctrl_ARADDR[2]),
        .I4(s_axi_ctrl_ARADDR[4]),
        .I5(\rdata[7]_i_2_n_0 ),
        .O(rdata[3]));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \rdata[4]_i_1 
       (.I0(s_axi_ctrl_ARADDR[1]),
        .I1(s_axi_ctrl_ARADDR[0]),
        .I2(s_axi_ctrl_ARADDR[4]),
        .I3(s_axi_ctrl_ARADDR[2]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(switches[4]),
        .O(rdata[4]));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \rdata[5]_i_1 
       (.I0(s_axi_ctrl_ARADDR[1]),
        .I1(s_axi_ctrl_ARADDR[0]),
        .I2(s_axi_ctrl_ARADDR[4]),
        .I3(s_axi_ctrl_ARADDR[2]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(\int_switches_reg_n_0_[5] ),
        .O(rdata[5]));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \rdata[6]_i_1 
       (.I0(s_axi_ctrl_ARADDR[1]),
        .I1(s_axi_ctrl_ARADDR[0]),
        .I2(s_axi_ctrl_ARADDR[4]),
        .I3(s_axi_ctrl_ARADDR[2]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(\int_switches_reg_n_0_[6] ),
        .O(rdata[6]));
  LUT6 #(
    .INIT(64'h000C000A00000000)) 
    \rdata[7]_i_1 
       (.I0(p_1_in[7]),
        .I1(\int_switches_reg_n_0_[7] ),
        .I2(s_axi_ctrl_ARADDR[3]),
        .I3(s_axi_ctrl_ARADDR[2]),
        .I4(s_axi_ctrl_ARADDR[4]),
        .I5(\rdata[7]_i_2_n_0 ),
        .O(rdata[7]));
  LUT2 #(
    .INIT(4'h1)) 
    \rdata[7]_i_2 
       (.I0(s_axi_ctrl_ARADDR[1]),
        .I1(s_axi_ctrl_ARADDR[0]),
        .O(\rdata[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[9]_i_1 
       (.I0(s_axi_ctrl_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(ar_hs));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata[9]_i_2 
       (.I0(s_axi_ctrl_ARADDR[3]),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(s_axi_ctrl_ARADDR[4]),
        .I3(s_axi_ctrl_ARADDR[0]),
        .I4(s_axi_ctrl_ARADDR[1]),
        .I5(interrupt),
        .O(rdata[9]));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[0]),
        .Q(s_axi_ctrl_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[1]),
        .Q(s_axi_ctrl_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[2]),
        .Q(s_axi_ctrl_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[3]),
        .Q(s_axi_ctrl_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[4]),
        .Q(s_axi_ctrl_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[5]),
        .Q(s_axi_ctrl_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[6]),
        .Q(s_axi_ctrl_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[7]),
        .Q(s_axi_ctrl_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[9]),
        .Q(s_axi_ctrl_RDATA[8]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[4]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_ctrl_AWVALID),
        .O(waddr));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_ctrl_AWADDR[0]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_ctrl_AWADDR[1]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_ctrl_AWADDR[2]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both
   (ack_in_t_reg_0,
    sub_ln27_fu_181_p2,
    Q,
    \data_p1_reg[31]_0 ,
    D,
    ap_rst_n_inv,
    ap_clk,
    in_stream_TREADY_int_regslice,
    in_stream_TVALID,
    in_stream_TDATA,
    \data_p2_reg[1]_0 );
  output ack_in_t_reg_0;
  output [30:0]sub_ln27_fu_181_p2;
  output [0:0]Q;
  output [31:0]\data_p1_reg[31]_0 ;
  output [30:0]D;
  input ap_rst_n_inv;
  input ap_clk;
  input in_stream_TREADY_int_regslice;
  input in_stream_TVALID;
  input [31:0]in_stream_TDATA;
  input \data_p2_reg[1]_0 ;

  wire [30:0]D;
  wire [0:0]Q;
  wire ack_in_t_i_2_n_0;
  wire ack_in_t_reg_0;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire \data_p1[16]_i_10_n_0 ;
  wire \data_p1[16]_i_3_n_0 ;
  wire \data_p1[16]_i_4_n_0 ;
  wire \data_p1[16]_i_5_n_0 ;
  wire \data_p1[16]_i_6_n_0 ;
  wire \data_p1[16]_i_7_n_0 ;
  wire \data_p1[16]_i_8_n_0 ;
  wire \data_p1[16]_i_9_n_0 ;
  wire \data_p1[24]_i_10_n_0 ;
  wire \data_p1[24]_i_3_n_0 ;
  wire \data_p1[24]_i_4_n_0 ;
  wire \data_p1[24]_i_5_n_0 ;
  wire \data_p1[24]_i_6_n_0 ;
  wire \data_p1[24]_i_7_n_0 ;
  wire \data_p1[24]_i_8_n_0 ;
  wire \data_p1[24]_i_9_n_0 ;
  wire \data_p1[31]_i_10_n_0 ;
  wire \data_p1[31]_i_11_n_0 ;
  wire \data_p1[31]_i_5_n_0 ;
  wire \data_p1[31]_i_6_n_0 ;
  wire \data_p1[31]_i_7_n_0 ;
  wire \data_p1[31]_i_8_n_0 ;
  wire \data_p1[31]_i_9_n_0 ;
  wire \data_p1[8]_i_10_n_0 ;
  wire \data_p1[8]_i_11_n_0 ;
  wire \data_p1[8]_i_3_n_0 ;
  wire \data_p1[8]_i_4_n_0 ;
  wire \data_p1[8]_i_5_n_0 ;
  wire \data_p1[8]_i_6_n_0 ;
  wire \data_p1[8]_i_7_n_0 ;
  wire \data_p1[8]_i_8_n_0 ;
  wire \data_p1[8]_i_9_n_0 ;
  wire \data_p1_reg[16]_i_2_n_0 ;
  wire \data_p1_reg[16]_i_2_n_1 ;
  wire \data_p1_reg[16]_i_2_n_2 ;
  wire \data_p1_reg[16]_i_2_n_3 ;
  wire \data_p1_reg[16]_i_2_n_4 ;
  wire \data_p1_reg[16]_i_2_n_5 ;
  wire \data_p1_reg[16]_i_2_n_6 ;
  wire \data_p1_reg[16]_i_2_n_7 ;
  wire \data_p1_reg[24]_i_2_n_0 ;
  wire \data_p1_reg[24]_i_2_n_1 ;
  wire \data_p1_reg[24]_i_2_n_2 ;
  wire \data_p1_reg[24]_i_2_n_3 ;
  wire \data_p1_reg[24]_i_2_n_4 ;
  wire \data_p1_reg[24]_i_2_n_5 ;
  wire \data_p1_reg[24]_i_2_n_6 ;
  wire \data_p1_reg[24]_i_2_n_7 ;
  wire [31:0]\data_p1_reg[31]_0 ;
  wire \data_p1_reg[31]_i_4_n_2 ;
  wire \data_p1_reg[31]_i_4_n_3 ;
  wire \data_p1_reg[31]_i_4_n_4 ;
  wire \data_p1_reg[31]_i_4_n_5 ;
  wire \data_p1_reg[31]_i_4_n_6 ;
  wire \data_p1_reg[31]_i_4_n_7 ;
  wire \data_p1_reg[8]_i_2_n_0 ;
  wire \data_p1_reg[8]_i_2_n_1 ;
  wire \data_p1_reg[8]_i_2_n_2 ;
  wire \data_p1_reg[8]_i_2_n_3 ;
  wire \data_p1_reg[8]_i_2_n_4 ;
  wire \data_p1_reg[8]_i_2_n_5 ;
  wire \data_p1_reg[8]_i_2_n_6 ;
  wire \data_p1_reg[8]_i_2_n_7 ;
  wire \data_p2_reg[1]_0 ;
  wire \data_p2_reg_n_0_[0] ;
  wire \data_p2_reg_n_0_[10] ;
  wire \data_p2_reg_n_0_[11] ;
  wire \data_p2_reg_n_0_[12] ;
  wire \data_p2_reg_n_0_[13] ;
  wire \data_p2_reg_n_0_[14] ;
  wire \data_p2_reg_n_0_[15] ;
  wire \data_p2_reg_n_0_[16] ;
  wire \data_p2_reg_n_0_[17] ;
  wire \data_p2_reg_n_0_[18] ;
  wire \data_p2_reg_n_0_[19] ;
  wire \data_p2_reg_n_0_[1] ;
  wire \data_p2_reg_n_0_[20] ;
  wire \data_p2_reg_n_0_[21] ;
  wire \data_p2_reg_n_0_[22] ;
  wire \data_p2_reg_n_0_[23] ;
  wire \data_p2_reg_n_0_[24] ;
  wire \data_p2_reg_n_0_[25] ;
  wire \data_p2_reg_n_0_[26] ;
  wire \data_p2_reg_n_0_[27] ;
  wire \data_p2_reg_n_0_[28] ;
  wire \data_p2_reg_n_0_[29] ;
  wire \data_p2_reg_n_0_[2] ;
  wire \data_p2_reg_n_0_[30] ;
  wire \data_p2_reg_n_0_[31] ;
  wire \data_p2_reg_n_0_[3] ;
  wire \data_p2_reg_n_0_[4] ;
  wire \data_p2_reg_n_0_[5] ;
  wire \data_p2_reg_n_0_[6] ;
  wire \data_p2_reg_n_0_[7] ;
  wire \data_p2_reg_n_0_[8] ;
  wire \data_p2_reg_n_0_[9] ;
  wire [31:0]in_stream_TDATA;
  wire in_stream_TREADY_int_regslice;
  wire in_stream_TVALID;
  wire load_p1;
  wire load_p2;
  wire [1:0]next__0;
  wire [31:0]p_0_in;
  wire [1:1]state;
  wire \state[0]_i_1__0_n_0 ;
  wire \state[1]_i_1__0_n_0 ;
  wire [1:0]state__0;
  wire [30:0]sub_ln27_fu_181_p2;
  wire [7:6]\NLW_data_p1_reg[31]_i_4_CO_UNCONNECTED ;
  wire [7:7]\NLW_data_p1_reg[31]_i_4_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h0230)) 
    \FSM_sequential_state[0]_i_1__6 
       (.I0(in_stream_TVALID),
        .I1(in_stream_TREADY_int_regslice),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00CCC3A0)) 
    \FSM_sequential_state[1]_i_1__6 
       (.I0(ack_in_t_reg_0),
        .I1(in_stream_TREADY_int_regslice),
        .I2(in_stream_TVALID),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAAFAA2FF)) 
    ack_in_t_i_2
       (.I0(ack_in_t_reg_0),
        .I1(in_stream_TVALID),
        .I2(in_stream_TREADY_int_regslice),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_2_n_0));
  FDRE ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_2_n_0),
        .Q(ack_in_t_reg_0),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_1__0 
       (.I0(\data_p2_reg_n_0_[0] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[0]),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[10]_i_1__0 
       (.I0(\data_p2_reg_n_0_[10] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[10]),
        .O(p_0_in[10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[11]_i_1__0 
       (.I0(\data_p2_reg_n_0_[11] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[11]),
        .O(p_0_in[11]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[12]_i_1__0 
       (.I0(\data_p2_reg_n_0_[12] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[12]),
        .O(p_0_in[12]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[13]_i_1__0 
       (.I0(\data_p2_reg_n_0_[13] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[13]),
        .O(p_0_in[13]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[14]_i_1__0 
       (.I0(\data_p2_reg_n_0_[14] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[14]),
        .O(p_0_in[14]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[15]_i_1__0 
       (.I0(\data_p2_reg_n_0_[15] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[15]),
        .O(p_0_in[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[16]_i_10 
       (.I0(\data_p1_reg[31]_0 [9]),
        .O(\data_p1[16]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[16]_i_1__0 
       (.I0(\data_p2_reg_n_0_[16] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[16]),
        .O(p_0_in[16]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[16]_i_3 
       (.I0(\data_p1_reg[31]_0 [16]),
        .O(\data_p1[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[16]_i_4 
       (.I0(\data_p1_reg[31]_0 [15]),
        .O(\data_p1[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[16]_i_5 
       (.I0(\data_p1_reg[31]_0 [14]),
        .O(\data_p1[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[16]_i_6 
       (.I0(\data_p1_reg[31]_0 [13]),
        .O(\data_p1[16]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[16]_i_7 
       (.I0(\data_p1_reg[31]_0 [12]),
        .O(\data_p1[16]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[16]_i_8 
       (.I0(\data_p1_reg[31]_0 [11]),
        .O(\data_p1[16]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[16]_i_9 
       (.I0(\data_p1_reg[31]_0 [10]),
        .O(\data_p1[16]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[17]_i_1__0 
       (.I0(\data_p2_reg_n_0_[17] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[17]),
        .O(p_0_in[17]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[18]_i_1__0 
       (.I0(\data_p2_reg_n_0_[18] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[18]),
        .O(p_0_in[18]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[19]_i_1__0 
       (.I0(\data_p2_reg_n_0_[19] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[19]),
        .O(p_0_in[19]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[1]_i_1__0 
       (.I0(\data_p2_reg_n_0_[1] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[1]),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[20]_i_1__0 
       (.I0(\data_p2_reg_n_0_[20] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[20]),
        .O(p_0_in[20]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[21]_i_1__0 
       (.I0(\data_p2_reg_n_0_[21] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[21]),
        .O(p_0_in[21]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[22]_i_1__0 
       (.I0(\data_p2_reg_n_0_[22] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[22]),
        .O(p_0_in[22]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[23]_i_1__0 
       (.I0(\data_p2_reg_n_0_[23] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[23]),
        .O(p_0_in[23]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[24]_i_10 
       (.I0(\data_p1_reg[31]_0 [17]),
        .O(\data_p1[24]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[24]_i_1__0 
       (.I0(\data_p2_reg_n_0_[24] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[24]),
        .O(p_0_in[24]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[24]_i_3 
       (.I0(\data_p1_reg[31]_0 [24]),
        .O(\data_p1[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[24]_i_4 
       (.I0(\data_p1_reg[31]_0 [23]),
        .O(\data_p1[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[24]_i_5 
       (.I0(\data_p1_reg[31]_0 [22]),
        .O(\data_p1[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[24]_i_6 
       (.I0(\data_p1_reg[31]_0 [21]),
        .O(\data_p1[24]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[24]_i_7 
       (.I0(\data_p1_reg[31]_0 [20]),
        .O(\data_p1[24]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[24]_i_8 
       (.I0(\data_p1_reg[31]_0 [19]),
        .O(\data_p1[24]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[24]_i_9 
       (.I0(\data_p1_reg[31]_0 [18]),
        .O(\data_p1[24]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[25]_i_1__0 
       (.I0(\data_p2_reg_n_0_[25] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[25]),
        .O(p_0_in[25]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[26]_i_1__0 
       (.I0(\data_p2_reg_n_0_[26] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[26]),
        .O(p_0_in[26]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[27]_i_1__0 
       (.I0(\data_p2_reg_n_0_[27] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[27]),
        .O(p_0_in[27]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[28]_i_1__0 
       (.I0(\data_p2_reg_n_0_[28] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[28]),
        .O(p_0_in[28]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[29]_i_1__0 
       (.I0(\data_p2_reg_n_0_[29] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[29]),
        .O(p_0_in[29]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[2]_i_1__0 
       (.I0(\data_p2_reg_n_0_[2] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[2]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[30]_i_1__0 
       (.I0(\data_p2_reg_n_0_[30] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[30]),
        .O(p_0_in[30]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[31]_i_10 
       (.I0(\data_p1_reg[31]_0 [26]),
        .O(\data_p1[31]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[31]_i_11 
       (.I0(\data_p1_reg[31]_0 [25]),
        .O(\data_p1[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0A8C)) 
    \data_p1[31]_i_1__0 
       (.I0(in_stream_TREADY_int_regslice),
        .I1(in_stream_TVALID),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[31]_i_2__0 
       (.I0(\data_p2_reg_n_0_[31] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[31]),
        .O(p_0_in[31]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[31]_i_5 
       (.I0(\data_p1_reg[31]_0 [31]),
        .O(\data_p1[31]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[31]_i_6 
       (.I0(\data_p1_reg[31]_0 [30]),
        .O(\data_p1[31]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[31]_i_7 
       (.I0(\data_p1_reg[31]_0 [29]),
        .O(\data_p1[31]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[31]_i_8 
       (.I0(\data_p1_reg[31]_0 [28]),
        .O(\data_p1[31]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[31]_i_9 
       (.I0(\data_p1_reg[31]_0 [27]),
        .O(\data_p1[31]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[3]_i_1__4 
       (.I0(\data_p2_reg_n_0_[3] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[3]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[4]_i_1__0 
       (.I0(\data_p2_reg_n_0_[4] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[4]),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[5]_i_1__0 
       (.I0(\data_p2_reg_n_0_[5] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[5]),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[6]_i_1__0 
       (.I0(\data_p2_reg_n_0_[6] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[6]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[7]_i_1__0 
       (.I0(\data_p2_reg_n_0_[7] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[7]),
        .O(p_0_in[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[8]_i_10 
       (.I0(\data_p1_reg[31]_0 [2]),
        .O(\data_p1[8]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[8]_i_11 
       (.I0(\data_p1_reg[31]_0 [1]),
        .O(\data_p1[8]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[8]_i_1__0 
       (.I0(\data_p2_reg_n_0_[8] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[8]),
        .O(p_0_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[8]_i_3 
       (.I0(\data_p1_reg[31]_0 [0]),
        .O(\data_p1[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[8]_i_4 
       (.I0(\data_p1_reg[31]_0 [8]),
        .O(\data_p1[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[8]_i_5 
       (.I0(\data_p1_reg[31]_0 [7]),
        .O(\data_p1[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[8]_i_6 
       (.I0(\data_p1_reg[31]_0 [6]),
        .O(\data_p1[8]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[8]_i_7 
       (.I0(\data_p1_reg[31]_0 [5]),
        .O(\data_p1[8]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[8]_i_8 
       (.I0(\data_p1_reg[31]_0 [4]),
        .O(\data_p1[8]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[8]_i_9 
       (.I0(\data_p1_reg[31]_0 [3]),
        .O(\data_p1[8]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[9]_i_1__0 
       (.I0(\data_p2_reg_n_0_[9] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TDATA[9]),
        .O(p_0_in[9]));
  FDRE \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[0]),
        .Q(\data_p1_reg[31]_0 [0]),
        .R(1'b0));
  FDRE \data_p1_reg[10] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[10]),
        .Q(\data_p1_reg[31]_0 [10]),
        .R(1'b0));
  FDRE \data_p1_reg[11] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[11]),
        .Q(\data_p1_reg[31]_0 [11]),
        .R(1'b0));
  FDRE \data_p1_reg[12] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[12]),
        .Q(\data_p1_reg[31]_0 [12]),
        .R(1'b0));
  FDRE \data_p1_reg[13] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[13]),
        .Q(\data_p1_reg[31]_0 [13]),
        .R(1'b0));
  FDRE \data_p1_reg[14] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[14]),
        .Q(\data_p1_reg[31]_0 [14]),
        .R(1'b0));
  FDRE \data_p1_reg[15] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[15]),
        .Q(\data_p1_reg[31]_0 [15]),
        .R(1'b0));
  FDRE \data_p1_reg[16] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[16]),
        .Q(\data_p1_reg[31]_0 [16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \data_p1_reg[16]_i_2 
       (.CI(\data_p1_reg[8]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\data_p1_reg[16]_i_2_n_0 ,\data_p1_reg[16]_i_2_n_1 ,\data_p1_reg[16]_i_2_n_2 ,\data_p1_reg[16]_i_2_n_3 ,\data_p1_reg[16]_i_2_n_4 ,\data_p1_reg[16]_i_2_n_5 ,\data_p1_reg[16]_i_2_n_6 ,\data_p1_reg[16]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(sub_ln27_fu_181_p2[15:8]),
        .S({\data_p1[16]_i_3_n_0 ,\data_p1[16]_i_4_n_0 ,\data_p1[16]_i_5_n_0 ,\data_p1[16]_i_6_n_0 ,\data_p1[16]_i_7_n_0 ,\data_p1[16]_i_8_n_0 ,\data_p1[16]_i_9_n_0 ,\data_p1[16]_i_10_n_0 }));
  FDRE \data_p1_reg[17] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[17]),
        .Q(\data_p1_reg[31]_0 [17]),
        .R(1'b0));
  FDRE \data_p1_reg[18] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[18]),
        .Q(\data_p1_reg[31]_0 [18]),
        .R(1'b0));
  FDRE \data_p1_reg[19] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[19]),
        .Q(\data_p1_reg[31]_0 [19]),
        .R(1'b0));
  FDRE \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[1]),
        .Q(\data_p1_reg[31]_0 [1]),
        .R(1'b0));
  FDRE \data_p1_reg[20] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[20]),
        .Q(\data_p1_reg[31]_0 [20]),
        .R(1'b0));
  FDRE \data_p1_reg[21] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[21]),
        .Q(\data_p1_reg[31]_0 [21]),
        .R(1'b0));
  FDRE \data_p1_reg[22] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[22]),
        .Q(\data_p1_reg[31]_0 [22]),
        .R(1'b0));
  FDRE \data_p1_reg[23] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[23]),
        .Q(\data_p1_reg[31]_0 [23]),
        .R(1'b0));
  FDRE \data_p1_reg[24] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[24]),
        .Q(\data_p1_reg[31]_0 [24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \data_p1_reg[24]_i_2 
       (.CI(\data_p1_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\data_p1_reg[24]_i_2_n_0 ,\data_p1_reg[24]_i_2_n_1 ,\data_p1_reg[24]_i_2_n_2 ,\data_p1_reg[24]_i_2_n_3 ,\data_p1_reg[24]_i_2_n_4 ,\data_p1_reg[24]_i_2_n_5 ,\data_p1_reg[24]_i_2_n_6 ,\data_p1_reg[24]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(sub_ln27_fu_181_p2[23:16]),
        .S({\data_p1[24]_i_3_n_0 ,\data_p1[24]_i_4_n_0 ,\data_p1[24]_i_5_n_0 ,\data_p1[24]_i_6_n_0 ,\data_p1[24]_i_7_n_0 ,\data_p1[24]_i_8_n_0 ,\data_p1[24]_i_9_n_0 ,\data_p1[24]_i_10_n_0 }));
  FDRE \data_p1_reg[25] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[25]),
        .Q(\data_p1_reg[31]_0 [25]),
        .R(1'b0));
  FDRE \data_p1_reg[26] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[26]),
        .Q(\data_p1_reg[31]_0 [26]),
        .R(1'b0));
  FDRE \data_p1_reg[27] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[27]),
        .Q(\data_p1_reg[31]_0 [27]),
        .R(1'b0));
  FDRE \data_p1_reg[28] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[28]),
        .Q(\data_p1_reg[31]_0 [28]),
        .R(1'b0));
  FDRE \data_p1_reg[29] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[29]),
        .Q(\data_p1_reg[31]_0 [29]),
        .R(1'b0));
  FDRE \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[2]),
        .Q(\data_p1_reg[31]_0 [2]),
        .R(1'b0));
  FDRE \data_p1_reg[30] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[30]),
        .Q(\data_p1_reg[31]_0 [30]),
        .R(1'b0));
  FDRE \data_p1_reg[31] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[31]),
        .Q(\data_p1_reg[31]_0 [31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \data_p1_reg[31]_i_4 
       (.CI(\data_p1_reg[24]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_data_p1_reg[31]_i_4_CO_UNCONNECTED [7:6],\data_p1_reg[31]_i_4_n_2 ,\data_p1_reg[31]_i_4_n_3 ,\data_p1_reg[31]_i_4_n_4 ,\data_p1_reg[31]_i_4_n_5 ,\data_p1_reg[31]_i_4_n_6 ,\data_p1_reg[31]_i_4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_data_p1_reg[31]_i_4_O_UNCONNECTED [7],sub_ln27_fu_181_p2[30:24]}),
        .S({1'b0,\data_p1[31]_i_5_n_0 ,\data_p1[31]_i_6_n_0 ,\data_p1[31]_i_7_n_0 ,\data_p1[31]_i_8_n_0 ,\data_p1[31]_i_9_n_0 ,\data_p1[31]_i_10_n_0 ,\data_p1[31]_i_11_n_0 }));
  FDRE \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[3]),
        .Q(\data_p1_reg[31]_0 [3]),
        .R(1'b0));
  FDRE \data_p1_reg[4] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[4]),
        .Q(\data_p1_reg[31]_0 [4]),
        .R(1'b0));
  FDRE \data_p1_reg[5] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[5]),
        .Q(\data_p1_reg[31]_0 [5]),
        .R(1'b0));
  FDRE \data_p1_reg[6] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[6]),
        .Q(\data_p1_reg[31]_0 [6]),
        .R(1'b0));
  FDRE \data_p1_reg[7] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[7]),
        .Q(\data_p1_reg[31]_0 [7]),
        .R(1'b0));
  FDRE \data_p1_reg[8] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[8]),
        .Q(\data_p1_reg[31]_0 [8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \data_p1_reg[8]_i_2 
       (.CI(\data_p1[8]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\data_p1_reg[8]_i_2_n_0 ,\data_p1_reg[8]_i_2_n_1 ,\data_p1_reg[8]_i_2_n_2 ,\data_p1_reg[8]_i_2_n_3 ,\data_p1_reg[8]_i_2_n_4 ,\data_p1_reg[8]_i_2_n_5 ,\data_p1_reg[8]_i_2_n_6 ,\data_p1_reg[8]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(sub_ln27_fu_181_p2[7:0]),
        .S({\data_p1[8]_i_4_n_0 ,\data_p1[8]_i_5_n_0 ,\data_p1[8]_i_6_n_0 ,\data_p1[8]_i_7_n_0 ,\data_p1[8]_i_8_n_0 ,\data_p1[8]_i_9_n_0 ,\data_p1[8]_i_10_n_0 ,\data_p1[8]_i_11_n_0 }));
  FDRE \data_p1_reg[9] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[9]),
        .Q(\data_p1_reg[31]_0 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[10]_i_1 
       (.I0(\data_p1_reg[31]_0 [10]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[9]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[11]_i_1 
       (.I0(\data_p1_reg[31]_0 [11]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[12]_i_1 
       (.I0(\data_p1_reg[31]_0 [12]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[13]_i_1 
       (.I0(\data_p1_reg[31]_0 [13]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[14]_i_1 
       (.I0(\data_p1_reg[31]_0 [14]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[15]_i_1 
       (.I0(\data_p1_reg[31]_0 [15]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[16]_i_1 
       (.I0(\data_p1_reg[31]_0 [16]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[17]_i_1 
       (.I0(\data_p1_reg[31]_0 [17]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[18]_i_1 
       (.I0(\data_p1_reg[31]_0 [18]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[17]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[19]_i_1 
       (.I0(\data_p1_reg[31]_0 [19]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[1]_i_1 
       (.I0(\data_p1_reg[31]_0 [1]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[20]_i_1 
       (.I0(\data_p1_reg[31]_0 [20]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[21]_i_1 
       (.I0(\data_p1_reg[31]_0 [21]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[20]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[22]_i_1 
       (.I0(\data_p1_reg[31]_0 [22]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[21]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[23]_i_1 
       (.I0(\data_p1_reg[31]_0 [23]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[24]_i_1 
       (.I0(\data_p1_reg[31]_0 [24]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[23]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[25]_i_1 
       (.I0(\data_p1_reg[31]_0 [25]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[24]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[26]_i_1 
       (.I0(\data_p1_reg[31]_0 [26]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[25]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[27]_i_1 
       (.I0(\data_p1_reg[31]_0 [27]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[26]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[28]_i_1 
       (.I0(\data_p1_reg[31]_0 [28]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[27]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[29]_i_1 
       (.I0(\data_p1_reg[31]_0 [29]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[28]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[2]_i_1 
       (.I0(\data_p1_reg[31]_0 [2]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[30]_i_1 
       (.I0(\data_p1_reg[31]_0 [30]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[29]),
        .O(D[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \data_p2[31]_i_1__0 
       (.I0(in_stream_TVALID),
        .I1(ack_in_t_reg_0),
        .O(load_p2));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[31]_i_2 
       (.I0(\data_p1_reg[31]_0 [31]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[30]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[3]_i_1__3 
       (.I0(\data_p1_reg[31]_0 [3]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[2]),
        .O(D[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[4]_i_1 
       (.I0(\data_p1_reg[31]_0 [4]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[5]_i_1 
       (.I0(\data_p1_reg[31]_0 [5]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[6]_i_1 
       (.I0(\data_p1_reg[31]_0 [6]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[7]_i_1 
       (.I0(\data_p1_reg[31]_0 [7]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[8]_i_1 
       (.I0(\data_p1_reg[31]_0 [8]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_p2[9]_i_1 
       (.I0(\data_p1_reg[31]_0 [9]),
        .I1(\data_p2_reg[1]_0 ),
        .I2(sub_ln27_fu_181_p2[8]),
        .O(D[8]));
  FDRE \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[0]),
        .Q(\data_p2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_p2_reg[10] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[10]),
        .Q(\data_p2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \data_p2_reg[11] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[11]),
        .Q(\data_p2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \data_p2_reg[12] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[12]),
        .Q(\data_p2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \data_p2_reg[13] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[13]),
        .Q(\data_p2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \data_p2_reg[14] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[14]),
        .Q(\data_p2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \data_p2_reg[15] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[15]),
        .Q(\data_p2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \data_p2_reg[16] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[16]),
        .Q(\data_p2_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \data_p2_reg[17] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[17]),
        .Q(\data_p2_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \data_p2_reg[18] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[18]),
        .Q(\data_p2_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \data_p2_reg[19] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[19]),
        .Q(\data_p2_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[1]),
        .Q(\data_p2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_p2_reg[20] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[20]),
        .Q(\data_p2_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \data_p2_reg[21] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[21]),
        .Q(\data_p2_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \data_p2_reg[22] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[22]),
        .Q(\data_p2_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \data_p2_reg[23] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[23]),
        .Q(\data_p2_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \data_p2_reg[24] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[24]),
        .Q(\data_p2_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \data_p2_reg[25] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[25]),
        .Q(\data_p2_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \data_p2_reg[26] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[26]),
        .Q(\data_p2_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \data_p2_reg[27] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[27]),
        .Q(\data_p2_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \data_p2_reg[28] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[28]),
        .Q(\data_p2_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \data_p2_reg[29] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[29]),
        .Q(\data_p2_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[2]),
        .Q(\data_p2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \data_p2_reg[30] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[30]),
        .Q(\data_p2_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \data_p2_reg[31] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[31]),
        .Q(\data_p2_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[3]),
        .Q(\data_p2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \data_p2_reg[4] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[4]),
        .Q(\data_p2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \data_p2_reg[5] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[5]),
        .Q(\data_p2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \data_p2_reg[6] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[6]),
        .Q(\data_p2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \data_p2_reg[7] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[7]),
        .Q(\data_p2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \data_p2_reg[8] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[8]),
        .Q(\data_p2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \data_p2_reg[9] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[9]),
        .Q(\data_p2_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF5F8800)) 
    \state[0]_i_1__0 
       (.I0(state),
        .I1(ack_in_t_reg_0),
        .I2(in_stream_TREADY_int_regslice),
        .I3(in_stream_TVALID),
        .I4(Q),
        .O(\state[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hF5FD)) 
    \state[1]_i_1__0 
       (.I0(Q),
        .I1(state),
        .I2(in_stream_TREADY_int_regslice),
        .I3(in_stream_TVALID),
        .O(\state[1]_i_1__0_n_0 ));
  FDRE \state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[0]_i_1__0_n_0 ),
        .Q(Q),
        .R(ap_rst_n_inv));
  FDSE \state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[1]_i_1__0_n_0 ),
        .Q(state),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "audio_passthrough_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both_1
   (ap_loop_exit_ready_pp0_iter1_reg_reg,
    ap_block_pp0_stage0_11001,
    in_stream_TREADY_int_regslice,
    out_stream_TVALID,
    E,
    ack_in_t_reg_0,
    ap_condition_exit_pp0_iter0_stage0,
    out_stream_TDATA,
    ap_rst_n_inv,
    ap_clk,
    ap_loop_exit_ready_pp0_iter1_reg,
    ap_start,
    in_stream_TLAST_int_regslice,
    out_stream_TREADY,
    \data_p2_reg[3]_0 ,
    \data_p2_reg[3]_1 ,
    ap_enable_reg_pp0_iter1,
    Q,
    D,
    \data_p1_reg[31]_0 ,
    \data_p1_reg[1]_0 ,
    sub_ln27_fu_181_p2);
  output ap_loop_exit_ready_pp0_iter1_reg_reg;
  output ap_block_pp0_stage0_11001;
  output in_stream_TREADY_int_regslice;
  output out_stream_TVALID;
  output [0:0]E;
  output [0:0]ack_in_t_reg_0;
  output ap_condition_exit_pp0_iter0_stage0;
  output [31:0]out_stream_TDATA;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_loop_exit_ready_pp0_iter1_reg;
  input ap_start;
  input in_stream_TLAST_int_regslice;
  input out_stream_TREADY;
  input \data_p2_reg[3]_0 ;
  input \data_p2_reg[3]_1 ;
  input ap_enable_reg_pp0_iter1;
  input [0:0]Q;
  input [31:0]D;
  input [30:0]\data_p1_reg[31]_0 ;
  input \data_p1_reg[1]_0 ;
  input [30:0]sub_ln27_fu_181_p2;

  wire [31:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire ack_in_t_i_1__3_n_0;
  wire [0:0]ack_in_t_reg_0;
  wire ack_in_t_reg_n_0;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_condition_exit_pp0_iter0_stage0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_exit_ready_pp0_iter1_reg_reg;
  wire ap_rst_n_inv;
  wire ap_start;
  wire \data_p1[0]_i_1_n_0 ;
  wire \data_p1[10]_i_1_n_0 ;
  wire \data_p1[11]_i_1_n_0 ;
  wire \data_p1[12]_i_1_n_0 ;
  wire \data_p1[13]_i_1_n_0 ;
  wire \data_p1[14]_i_1_n_0 ;
  wire \data_p1[15]_i_1_n_0 ;
  wire \data_p1[16]_i_1_n_0 ;
  wire \data_p1[17]_i_1_n_0 ;
  wire \data_p1[18]_i_1_n_0 ;
  wire \data_p1[19]_i_1_n_0 ;
  wire \data_p1[1]_i_1_n_0 ;
  wire \data_p1[20]_i_1_n_0 ;
  wire \data_p1[21]_i_1_n_0 ;
  wire \data_p1[22]_i_1_n_0 ;
  wire \data_p1[23]_i_1_n_0 ;
  wire \data_p1[24]_i_1_n_0 ;
  wire \data_p1[25]_i_1_n_0 ;
  wire \data_p1[26]_i_1_n_0 ;
  wire \data_p1[27]_i_1_n_0 ;
  wire \data_p1[28]_i_1_n_0 ;
  wire \data_p1[29]_i_1_n_0 ;
  wire \data_p1[2]_i_1_n_0 ;
  wire \data_p1[30]_i_1_n_0 ;
  wire \data_p1[31]_i_2_n_0 ;
  wire \data_p1[3]_i_1__3_n_0 ;
  wire \data_p1[4]_i_1_n_0 ;
  wire \data_p1[5]_i_1_n_0 ;
  wire \data_p1[6]_i_1_n_0 ;
  wire \data_p1[7]_i_1_n_0 ;
  wire \data_p1[8]_i_1_n_0 ;
  wire \data_p1[9]_i_1_n_0 ;
  wire \data_p1_reg[1]_0 ;
  wire [30:0]\data_p1_reg[31]_0 ;
  wire \data_p2_reg[3]_0 ;
  wire \data_p2_reg[3]_1 ;
  wire \data_p2_reg_n_0_[0] ;
  wire \data_p2_reg_n_0_[10] ;
  wire \data_p2_reg_n_0_[11] ;
  wire \data_p2_reg_n_0_[12] ;
  wire \data_p2_reg_n_0_[13] ;
  wire \data_p2_reg_n_0_[14] ;
  wire \data_p2_reg_n_0_[15] ;
  wire \data_p2_reg_n_0_[16] ;
  wire \data_p2_reg_n_0_[17] ;
  wire \data_p2_reg_n_0_[18] ;
  wire \data_p2_reg_n_0_[19] ;
  wire \data_p2_reg_n_0_[1] ;
  wire \data_p2_reg_n_0_[20] ;
  wire \data_p2_reg_n_0_[21] ;
  wire \data_p2_reg_n_0_[22] ;
  wire \data_p2_reg_n_0_[23] ;
  wire \data_p2_reg_n_0_[24] ;
  wire \data_p2_reg_n_0_[25] ;
  wire \data_p2_reg_n_0_[26] ;
  wire \data_p2_reg_n_0_[27] ;
  wire \data_p2_reg_n_0_[28] ;
  wire \data_p2_reg_n_0_[29] ;
  wire \data_p2_reg_n_0_[2] ;
  wire \data_p2_reg_n_0_[30] ;
  wire \data_p2_reg_n_0_[31] ;
  wire \data_p2_reg_n_0_[3] ;
  wire \data_p2_reg_n_0_[4] ;
  wire \data_p2_reg_n_0_[5] ;
  wire \data_p2_reg_n_0_[6] ;
  wire \data_p2_reg_n_0_[7] ;
  wire \data_p2_reg_n_0_[8] ;
  wire \data_p2_reg_n_0_[9] ;
  wire in_stream_TLAST_int_regslice;
  wire in_stream_TREADY_int_regslice;
  wire \int_isr[1]_i_3_n_0 ;
  wire \int_isr[1]_i_4_n_0 ;
  wire load_p1;
  wire load_p2;
  wire [1:0]next__0;
  wire [31:0]out_stream_TDATA;
  wire out_stream_TREADY;
  wire out_stream_TVALID;
  wire regslice_both_out_stream_V_data_V_U_apdone_blk;
  wire [1:1]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire [1:0]state__0;
  wire [30:0]sub_ln27_fu_181_p2;

  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0230)) 
    \FSM_sequential_state[0]_i_1__2 
       (.I0(in_stream_TREADY_int_regslice),
        .I1(out_stream_TREADY),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00CCC3A0)) 
    \FSM_sequential_state[1]_i_1__2 
       (.I0(ack_in_t_reg_n_0),
        .I1(out_stream_TREADY),
        .I2(in_stream_TREADY_int_regslice),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hF0FCD0FF)) 
    ack_in_t_i_1__3
       (.I0(in_stream_TREADY_int_regslice),
        .I1(out_stream_TREADY),
        .I2(ack_in_t_reg_n_0),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_1__3_n_0));
  LUT6 #(
    .INIT(64'h0020A0A000000000)) 
    ack_in_t_i_3
       (.I0(ack_in_t_reg_n_0),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_start),
        .I3(ap_loop_exit_ready_pp0_iter1_reg),
        .I4(regslice_both_out_stream_V_data_V_U_apdone_blk),
        .I5(Q),
        .O(in_stream_TREADY_int_regslice));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h34)) 
    ack_in_t_i_4
       (.I0(out_stream_TREADY),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .O(regslice_both_out_stream_V_data_V_U_apdone_blk));
  FDRE ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__3_n_0),
        .Q(ack_in_t_reg_n_0),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hD888)) 
    ap_loop_exit_ready_pp0_iter1_reg_i_1
       (.I0(ap_block_pp0_stage0_11001),
        .I1(ap_loop_exit_ready_pp0_iter1_reg),
        .I2(ap_start),
        .I3(in_stream_TLAST_int_regslice),
        .O(ap_loop_exit_ready_pp0_iter1_reg_reg));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_1 
       (.I0(\data_p2_reg_n_0_[0] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(D[0]),
        .O(\data_p1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[10]_i_1 
       (.I0(\data_p2_reg_n_0_[10] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [9]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[9]),
        .O(\data_p1[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[11]_i_1 
       (.I0(\data_p2_reg_n_0_[11] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [10]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[10]),
        .O(\data_p1[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[12]_i_1 
       (.I0(\data_p2_reg_n_0_[12] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [11]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[11]),
        .O(\data_p1[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[13]_i_1 
       (.I0(\data_p2_reg_n_0_[13] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [12]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[12]),
        .O(\data_p1[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[14]_i_1 
       (.I0(\data_p2_reg_n_0_[14] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [13]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[13]),
        .O(\data_p1[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[15]_i_1 
       (.I0(\data_p2_reg_n_0_[15] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [14]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[14]),
        .O(\data_p1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[16]_i_1 
       (.I0(\data_p2_reg_n_0_[16] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [15]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[15]),
        .O(\data_p1[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[17]_i_1 
       (.I0(\data_p2_reg_n_0_[17] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [16]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[16]),
        .O(\data_p1[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[18]_i_1 
       (.I0(\data_p2_reg_n_0_[18] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [17]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[17]),
        .O(\data_p1[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[19]_i_1 
       (.I0(\data_p2_reg_n_0_[19] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [18]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[18]),
        .O(\data_p1[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[1]_i_1 
       (.I0(\data_p2_reg_n_0_[1] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [0]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[0]),
        .O(\data_p1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[20]_i_1 
       (.I0(\data_p2_reg_n_0_[20] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [19]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[19]),
        .O(\data_p1[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[21]_i_1 
       (.I0(\data_p2_reg_n_0_[21] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [20]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[20]),
        .O(\data_p1[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[22]_i_1 
       (.I0(\data_p2_reg_n_0_[22] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [21]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[21]),
        .O(\data_p1[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[23]_i_1 
       (.I0(\data_p2_reg_n_0_[23] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [22]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[22]),
        .O(\data_p1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[24]_i_1 
       (.I0(\data_p2_reg_n_0_[24] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [23]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[23]),
        .O(\data_p1[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[25]_i_1 
       (.I0(\data_p2_reg_n_0_[25] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [24]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[24]),
        .O(\data_p1[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[26]_i_1 
       (.I0(\data_p2_reg_n_0_[26] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [25]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[25]),
        .O(\data_p1[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[27]_i_1 
       (.I0(\data_p2_reg_n_0_[27] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [26]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[26]),
        .O(\data_p1[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[28]_i_1 
       (.I0(\data_p2_reg_n_0_[28] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [27]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[27]),
        .O(\data_p1[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[29]_i_1 
       (.I0(\data_p2_reg_n_0_[29] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [28]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[28]),
        .O(\data_p1[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[2]_i_1 
       (.I0(\data_p2_reg_n_0_[2] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [1]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[1]),
        .O(\data_p1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[30]_i_1 
       (.I0(\data_p2_reg_n_0_[30] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [29]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[29]),
        .O(\data_p1[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0A8C)) 
    \data_p1[31]_i_1 
       (.I0(out_stream_TREADY),
        .I1(in_stream_TREADY_int_regslice),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(load_p1));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[31]_i_2 
       (.I0(\data_p2_reg_n_0_[31] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [30]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[30]),
        .O(\data_p1[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[3]_i_1__3 
       (.I0(\data_p2_reg_n_0_[3] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [2]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[2]),
        .O(\data_p1[3]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[4]_i_1 
       (.I0(\data_p2_reg_n_0_[4] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [3]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[3]),
        .O(\data_p1[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[5]_i_1 
       (.I0(\data_p2_reg_n_0_[5] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [4]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[4]),
        .O(\data_p1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[6]_i_1 
       (.I0(\data_p2_reg_n_0_[6] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [5]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[5]),
        .O(\data_p1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[7]_i_1 
       (.I0(\data_p2_reg_n_0_[7] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [6]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[6]),
        .O(\data_p1[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[8]_i_1 
       (.I0(\data_p2_reg_n_0_[8] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [7]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[7]),
        .O(\data_p1[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[9]_i_1 
       (.I0(\data_p2_reg_n_0_[9] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p1_reg[31]_0 [8]),
        .I4(\data_p1_reg[1]_0 ),
        .I5(sub_ln27_fu_181_p2[8]),
        .O(\data_p1[9]_i_1_n_0 ));
  FDRE \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1_n_0 ),
        .Q(out_stream_TDATA[0]),
        .R(1'b0));
  FDRE \data_p1_reg[10] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[10]_i_1_n_0 ),
        .Q(out_stream_TDATA[10]),
        .R(1'b0));
  FDRE \data_p1_reg[11] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[11]_i_1_n_0 ),
        .Q(out_stream_TDATA[11]),
        .R(1'b0));
  FDRE \data_p1_reg[12] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[12]_i_1_n_0 ),
        .Q(out_stream_TDATA[12]),
        .R(1'b0));
  FDRE \data_p1_reg[13] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[13]_i_1_n_0 ),
        .Q(out_stream_TDATA[13]),
        .R(1'b0));
  FDRE \data_p1_reg[14] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[14]_i_1_n_0 ),
        .Q(out_stream_TDATA[14]),
        .R(1'b0));
  FDRE \data_p1_reg[15] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[15]_i_1_n_0 ),
        .Q(out_stream_TDATA[15]),
        .R(1'b0));
  FDRE \data_p1_reg[16] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[16]_i_1_n_0 ),
        .Q(out_stream_TDATA[16]),
        .R(1'b0));
  FDRE \data_p1_reg[17] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[17]_i_1_n_0 ),
        .Q(out_stream_TDATA[17]),
        .R(1'b0));
  FDRE \data_p1_reg[18] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[18]_i_1_n_0 ),
        .Q(out_stream_TDATA[18]),
        .R(1'b0));
  FDRE \data_p1_reg[19] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[19]_i_1_n_0 ),
        .Q(out_stream_TDATA[19]),
        .R(1'b0));
  FDRE \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1_n_0 ),
        .Q(out_stream_TDATA[1]),
        .R(1'b0));
  FDRE \data_p1_reg[20] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[20]_i_1_n_0 ),
        .Q(out_stream_TDATA[20]),
        .R(1'b0));
  FDRE \data_p1_reg[21] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[21]_i_1_n_0 ),
        .Q(out_stream_TDATA[21]),
        .R(1'b0));
  FDRE \data_p1_reg[22] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[22]_i_1_n_0 ),
        .Q(out_stream_TDATA[22]),
        .R(1'b0));
  FDRE \data_p1_reg[23] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[23]_i_1_n_0 ),
        .Q(out_stream_TDATA[23]),
        .R(1'b0));
  FDRE \data_p1_reg[24] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[24]_i_1_n_0 ),
        .Q(out_stream_TDATA[24]),
        .R(1'b0));
  FDRE \data_p1_reg[25] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[25]_i_1_n_0 ),
        .Q(out_stream_TDATA[25]),
        .R(1'b0));
  FDRE \data_p1_reg[26] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[26]_i_1_n_0 ),
        .Q(out_stream_TDATA[26]),
        .R(1'b0));
  FDRE \data_p1_reg[27] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[27]_i_1_n_0 ),
        .Q(out_stream_TDATA[27]),
        .R(1'b0));
  FDRE \data_p1_reg[28] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[28]_i_1_n_0 ),
        .Q(out_stream_TDATA[28]),
        .R(1'b0));
  FDRE \data_p1_reg[29] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[29]_i_1_n_0 ),
        .Q(out_stream_TDATA[29]),
        .R(1'b0));
  FDRE \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1_n_0 ),
        .Q(out_stream_TDATA[2]),
        .R(1'b0));
  FDRE \data_p1_reg[30] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[30]_i_1_n_0 ),
        .Q(out_stream_TDATA[30]),
        .R(1'b0));
  FDRE \data_p1_reg[31] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[31]_i_2_n_0 ),
        .Q(out_stream_TDATA[31]),
        .R(1'b0));
  FDRE \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[3]_i_1__3_n_0 ),
        .Q(out_stream_TDATA[3]),
        .R(1'b0));
  FDRE \data_p1_reg[4] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[4]_i_1_n_0 ),
        .Q(out_stream_TDATA[4]),
        .R(1'b0));
  FDRE \data_p1_reg[5] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[5]_i_1_n_0 ),
        .Q(out_stream_TDATA[5]),
        .R(1'b0));
  FDRE \data_p1_reg[6] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[6]_i_1_n_0 ),
        .Q(out_stream_TDATA[6]),
        .R(1'b0));
  FDRE \data_p1_reg[7] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[7]_i_1_n_0 ),
        .Q(out_stream_TDATA[7]),
        .R(1'b0));
  FDRE \data_p1_reg[8] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[8]_i_1_n_0 ),
        .Q(out_stream_TDATA[8]),
        .R(1'b0));
  FDRE \data_p1_reg[9] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[9]_i_1_n_0 ),
        .Q(out_stream_TDATA[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \data_p2[31]_i_1 
       (.I0(in_stream_TREADY_int_regslice),
        .I1(ack_in_t_reg_n_0),
        .O(load_p2));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_p2[3]_i_1 
       (.I0(in_stream_TREADY_int_regslice),
        .I1(\data_p2_reg[3]_0 ),
        .O(E));
  LUT2 #(
    .INIT(4'h8)) 
    \data_p2[3]_i_1__0 
       (.I0(in_stream_TREADY_int_regslice),
        .I1(\data_p2_reg[3]_1 ),
        .O(ack_in_t_reg_0));
  FDRE \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[0]),
        .Q(\data_p2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_p2_reg[10] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[10]),
        .Q(\data_p2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \data_p2_reg[11] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[11]),
        .Q(\data_p2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \data_p2_reg[12] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[12]),
        .Q(\data_p2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \data_p2_reg[13] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[13]),
        .Q(\data_p2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \data_p2_reg[14] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[14]),
        .Q(\data_p2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \data_p2_reg[15] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[15]),
        .Q(\data_p2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \data_p2_reg[16] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[16]),
        .Q(\data_p2_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \data_p2_reg[17] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[17]),
        .Q(\data_p2_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \data_p2_reg[18] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[18]),
        .Q(\data_p2_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \data_p2_reg[19] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[19]),
        .Q(\data_p2_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[1]),
        .Q(\data_p2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_p2_reg[20] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[20]),
        .Q(\data_p2_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \data_p2_reg[21] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[21]),
        .Q(\data_p2_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \data_p2_reg[22] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[22]),
        .Q(\data_p2_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \data_p2_reg[23] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[23]),
        .Q(\data_p2_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \data_p2_reg[24] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[24]),
        .Q(\data_p2_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \data_p2_reg[25] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[25]),
        .Q(\data_p2_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \data_p2_reg[26] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[26]),
        .Q(\data_p2_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \data_p2_reg[27] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[27]),
        .Q(\data_p2_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \data_p2_reg[28] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[28]),
        .Q(\data_p2_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \data_p2_reg[29] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[29]),
        .Q(\data_p2_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[2]),
        .Q(\data_p2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \data_p2_reg[30] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[30]),
        .Q(\data_p2_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \data_p2_reg[31] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[31]),
        .Q(\data_p2_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[3]),
        .Q(\data_p2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \data_p2_reg[4] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[4]),
        .Q(\data_p2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \data_p2_reg[5] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[5]),
        .Q(\data_p2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \data_p2_reg[6] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[6]),
        .Q(\data_p2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \data_p2_reg[7] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[7]),
        .Q(\data_p2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \data_p2_reg[8] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[8]),
        .Q(\data_p2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \data_p2_reg[9] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[9]),
        .Q(\data_p2_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDCCD5C0FFFFFFC0)) 
    int_ap_start_i_2
       (.I0(Q),
        .I1(regslice_both_out_stream_V_data_V_U_apdone_blk),
        .I2(ap_loop_exit_ready_pp0_iter1_reg),
        .I3(ap_start),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(ack_in_t_reg_n_0),
        .O(ap_block_pp0_stage0_11001));
  LUT5 #(
    .INIT(32'h00000080)) 
    \int_isr[1]_i_2 
       (.I0(in_stream_TLAST_int_regslice),
        .I1(ack_in_t_reg_n_0),
        .I2(ap_start),
        .I3(\int_isr[1]_i_3_n_0 ),
        .I4(\int_isr[1]_i_4_n_0 ),
        .O(ap_condition_exit_pp0_iter0_stage0));
  LUT4 #(
    .INIT(16'h2600)) 
    \int_isr[1]_i_3 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(out_stream_TREADY),
        .I3(ap_loop_exit_ready_pp0_iter1_reg),
        .O(\int_isr[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0A20FFFF0A200A20)) 
    \int_isr[1]_i_4 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(out_stream_TREADY),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(Q),
        .I5(ap_start),
        .O(\int_isr[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF5F8800)) 
    \state[0]_i_1 
       (.I0(state),
        .I1(ack_in_t_reg_n_0),
        .I2(out_stream_TREADY),
        .I3(in_stream_TREADY_int_regslice),
        .I4(out_stream_TVALID),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF7F5)) 
    \state[1]_i_1 
       (.I0(out_stream_TVALID),
        .I1(in_stream_TREADY_int_regslice),
        .I2(out_stream_TREADY),
        .I3(state),
        .O(\state[1]_i_1_n_0 ));
  FDRE \state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(out_stream_TVALID),
        .R(ap_rst_n_inv));
  FDSE \state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "audio_passthrough_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0
   (Q,
    ap_rst_n_inv,
    ap_clk,
    in_stream_TREADY_int_regslice,
    in_stream_TVALID,
    in_stream_TKEEP);
  output [3:0]Q;
  input ap_rst_n_inv;
  input ap_clk;
  input in_stream_TREADY_int_regslice;
  input in_stream_TVALID;
  input [3:0]in_stream_TKEEP;

  wire [3:0]Q;
  wire ack_in_t_i_1__0_n_0;
  wire ack_in_t_reg_n_0;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire \data_p1[0]_i_1__1_n_0 ;
  wire \data_p1[1]_i_1__1_n_0 ;
  wire \data_p1[2]_i_1__1_n_0 ;
  wire \data_p1[3]_i_2_n_0 ;
  wire [3:0]data_p2;
  wire [3:0]in_stream_TKEEP;
  wire in_stream_TREADY_int_regslice;
  wire in_stream_TVALID;
  wire load_p1;
  wire load_p2;
  wire [1:0]next__0;
  wire [1:0]state__0;

  LUT4 #(
    .INIT(16'h0230)) 
    \FSM_sequential_state[0]_i_1__5 
       (.I0(in_stream_TVALID),
        .I1(in_stream_TREADY_int_regslice),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00CCC3A0)) 
    \FSM_sequential_state[1]_i_1__5 
       (.I0(ack_in_t_reg_n_0),
        .I1(in_stream_TREADY_int_regslice),
        .I2(in_stream_TVALID),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hAAFAA2FF)) 
    ack_in_t_i_1__0
       (.I0(ack_in_t_reg_n_0),
        .I1(in_stream_TVALID),
        .I2(in_stream_TREADY_int_regslice),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_1__0_n_0));
  FDRE ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__0_n_0),
        .Q(ack_in_t_reg_n_0),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_1__1 
       (.I0(data_p2[0]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TKEEP[0]),
        .O(\data_p1[0]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[1]_i_1__1 
       (.I0(data_p2[1]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TKEEP[1]),
        .O(\data_p1[1]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[2]_i_1__1 
       (.I0(data_p2[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TKEEP[2]),
        .O(\data_p1[2]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h0A8C)) 
    \data_p1[3]_i_1__2 
       (.I0(in_stream_TREADY_int_regslice),
        .I1(in_stream_TVALID),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[3]_i_2 
       (.I0(data_p2[3]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TKEEP[3]),
        .O(\data_p1[3]_i_2_n_0 ));
  FDRE \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[3]_i_2_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \data_p2[3]_i_1__1 
       (.I0(in_stream_TVALID),
        .I1(ack_in_t_reg_n_0),
        .O(load_p2));
  FDRE \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TKEEP[0]),
        .Q(data_p2[0]),
        .R(1'b0));
  FDRE \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TKEEP[1]),
        .Q(data_p2[1]),
        .R(1'b0));
  FDRE \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TKEEP[2]),
        .Q(data_p2[2]),
        .R(1'b0));
  FDRE \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TKEEP[3]),
        .Q(data_p2[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "audio_passthrough_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0_0
   (Q,
    ap_rst_n_inv,
    ap_clk,
    in_stream_TREADY_int_regslice,
    in_stream_TVALID,
    in_stream_TSTRB);
  output [3:0]Q;
  input ap_rst_n_inv;
  input ap_clk;
  input in_stream_TREADY_int_regslice;
  input in_stream_TVALID;
  input [3:0]in_stream_TSTRB;

  wire [3:0]Q;
  wire ack_in_t_i_1__1_n_0;
  wire ack_in_t_reg_n_0;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire \data_p1[0]_i_1__2_n_0 ;
  wire \data_p1[1]_i_1__2_n_0 ;
  wire \data_p1[2]_i_1__2_n_0 ;
  wire \data_p1[3]_i_2__0_n_0 ;
  wire [3:0]data_p2;
  wire in_stream_TREADY_int_regslice;
  wire [3:0]in_stream_TSTRB;
  wire in_stream_TVALID;
  wire load_p1;
  wire load_p2;
  wire [1:0]next__0;
  wire [1:0]state__0;

  LUT4 #(
    .INIT(16'h0230)) 
    \FSM_sequential_state[0]_i_1__4 
       (.I0(in_stream_TVALID),
        .I1(in_stream_TREADY_int_regslice),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00CCC3A0)) 
    \FSM_sequential_state[1]_i_1__4 
       (.I0(ack_in_t_reg_n_0),
        .I1(in_stream_TREADY_int_regslice),
        .I2(in_stream_TVALID),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hAAFAA2FF)) 
    ack_in_t_i_1__1
       (.I0(ack_in_t_reg_n_0),
        .I1(in_stream_TVALID),
        .I2(in_stream_TREADY_int_regslice),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_1__1_n_0));
  FDRE ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__1_n_0),
        .Q(ack_in_t_reg_n_0),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_1__2 
       (.I0(data_p2[0]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TSTRB[0]),
        .O(\data_p1[0]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[1]_i_1__2 
       (.I0(data_p2[1]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TSTRB[1]),
        .O(\data_p1[1]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[2]_i_1__2 
       (.I0(data_p2[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TSTRB[2]),
        .O(\data_p1[2]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h0A8C)) 
    \data_p1[3]_i_1__1 
       (.I0(in_stream_TREADY_int_regslice),
        .I1(in_stream_TVALID),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[3]_i_2__0 
       (.I0(data_p2[3]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TSTRB[3]),
        .O(\data_p1[3]_i_2__0_n_0 ));
  FDRE \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[3]_i_2__0_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \data_p2[3]_i_1__2 
       (.I0(in_stream_TVALID),
        .I1(ack_in_t_reg_n_0),
        .O(load_p2));
  FDRE \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TSTRB[0]),
        .Q(data_p2[0]),
        .R(1'b0));
  FDRE \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TSTRB[1]),
        .Q(data_p2[1]),
        .R(1'b0));
  FDRE \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TSTRB[2]),
        .Q(data_p2[2]),
        .R(1'b0));
  FDRE \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TSTRB[3]),
        .Q(data_p2[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "audio_passthrough_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0_2
   (ack_in_t_reg_0,
    out_stream_TKEEP,
    ap_rst_n_inv,
    ap_clk,
    out_stream_TREADY,
    in_stream_TREADY_int_regslice,
    D,
    E);
  output ack_in_t_reg_0;
  output [3:0]out_stream_TKEEP;
  input ap_rst_n_inv;
  input ap_clk;
  input out_stream_TREADY;
  input in_stream_TREADY_int_regslice;
  input [3:0]D;
  input [0:0]E;

  wire [3:0]D;
  wire [0:0]E;
  wire ack_in_t_i_1__4_n_0;
  wire ack_in_t_reg_0;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire \data_p1[0]_i_1__3_n_0 ;
  wire \data_p1[1]_i_1__3_n_0 ;
  wire \data_p1[2]_i_1__3_n_0 ;
  wire \data_p1[3]_i_2__1_n_0 ;
  wire [3:0]data_p2;
  wire in_stream_TREADY_int_regslice;
  wire load_p1;
  wire [1:0]next__0;
  wire [3:0]out_stream_TKEEP;
  wire out_stream_TREADY;
  wire [1:0]state__0;

  LUT4 #(
    .INIT(16'h0230)) 
    \FSM_sequential_state[0]_i_1__1 
       (.I0(in_stream_TREADY_int_regslice),
        .I1(out_stream_TREADY),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00CCC3A0)) 
    \FSM_sequential_state[1]_i_1__1 
       (.I0(ack_in_t_reg_0),
        .I1(out_stream_TREADY),
        .I2(in_stream_TREADY_int_regslice),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hF0FCD0FF)) 
    ack_in_t_i_1__4
       (.I0(in_stream_TREADY_int_regslice),
        .I1(out_stream_TREADY),
        .I2(ack_in_t_reg_0),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_1__4_n_0));
  FDRE ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__4_n_0),
        .Q(ack_in_t_reg_0),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_1__3 
       (.I0(data_p2[0]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(D[0]),
        .O(\data_p1[0]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[1]_i_1__3 
       (.I0(data_p2[1]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(D[1]),
        .O(\data_p1[1]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[2]_i_1__3 
       (.I0(data_p2[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(D[2]),
        .O(\data_p1[2]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'h0A8C)) 
    \data_p1[3]_i_1__0 
       (.I0(out_stream_TREADY),
        .I1(in_stream_TREADY_int_regslice),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[3]_i_2__1 
       (.I0(data_p2[3]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(D[3]),
        .O(\data_p1[3]_i_2__1_n_0 ));
  FDRE \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1__3_n_0 ),
        .Q(out_stream_TKEEP[0]),
        .R(1'b0));
  FDRE \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1__3_n_0 ),
        .Q(out_stream_TKEEP[1]),
        .R(1'b0));
  FDRE \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1__3_n_0 ),
        .Q(out_stream_TKEEP[2]),
        .R(1'b0));
  FDRE \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[3]_i_2__1_n_0 ),
        .Q(out_stream_TKEEP[3]),
        .R(1'b0));
  FDRE \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(D[0]),
        .Q(data_p2[0]),
        .R(1'b0));
  FDRE \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(D[1]),
        .Q(data_p2[1]),
        .R(1'b0));
  FDRE \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(D[2]),
        .Q(data_p2[2]),
        .R(1'b0));
  FDRE \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(D[3]),
        .Q(data_p2[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "audio_passthrough_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized0_4
   (ack_in_t_reg_0,
    out_stream_TSTRB,
    ap_rst_n_inv,
    ap_clk,
    out_stream_TREADY,
    in_stream_TREADY_int_regslice,
    D,
    E);
  output ack_in_t_reg_0;
  output [3:0]out_stream_TSTRB;
  input ap_rst_n_inv;
  input ap_clk;
  input out_stream_TREADY;
  input in_stream_TREADY_int_regslice;
  input [3:0]D;
  input [0:0]E;

  wire [3:0]D;
  wire [0:0]E;
  wire ack_in_t_i_1__5_n_0;
  wire ack_in_t_reg_0;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire \data_p1[0]_i_1__4_n_0 ;
  wire \data_p1[1]_i_1__4_n_0 ;
  wire \data_p1[2]_i_1__4_n_0 ;
  wire \data_p1[3]_i_2__2_n_0 ;
  wire [3:0]data_p2;
  wire in_stream_TREADY_int_regslice;
  wire load_p1;
  wire [1:0]next__0;
  wire out_stream_TREADY;
  wire [3:0]out_stream_TSTRB;
  wire [1:0]state__0;

  LUT4 #(
    .INIT(16'h0230)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(in_stream_TREADY_int_regslice),
        .I1(out_stream_TREADY),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00CCC3A0)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(ack_in_t_reg_0),
        .I1(out_stream_TREADY),
        .I2(in_stream_TREADY_int_regslice),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hF0FCD0FF)) 
    ack_in_t_i_1__5
       (.I0(in_stream_TREADY_int_regslice),
        .I1(out_stream_TREADY),
        .I2(ack_in_t_reg_0),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_1__5_n_0));
  FDRE ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__5_n_0),
        .Q(ack_in_t_reg_0),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_1__4 
       (.I0(data_p2[0]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(D[0]),
        .O(\data_p1[0]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[1]_i_1__4 
       (.I0(data_p2[1]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(D[1]),
        .O(\data_p1[1]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[2]_i_1__4 
       (.I0(data_p2[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(D[2]),
        .O(\data_p1[2]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'h0A8C)) 
    \data_p1[3]_i_1 
       (.I0(out_stream_TREADY),
        .I1(in_stream_TREADY_int_regslice),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[3]_i_2__2 
       (.I0(data_p2[3]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(D[3]),
        .O(\data_p1[3]_i_2__2_n_0 ));
  FDRE \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1__4_n_0 ),
        .Q(out_stream_TSTRB[0]),
        .R(1'b0));
  FDRE \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1__4_n_0 ),
        .Q(out_stream_TSTRB[1]),
        .R(1'b0));
  FDRE \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1__4_n_0 ),
        .Q(out_stream_TSTRB[2]),
        .R(1'b0));
  FDRE \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[3]_i_2__2_n_0 ),
        .Q(out_stream_TSTRB[3]),
        .R(1'b0));
  FDRE \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(D[0]),
        .Q(data_p2[0]),
        .R(1'b0));
  FDRE \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(D[1]),
        .Q(data_p2[1]),
        .R(1'b0));
  FDRE \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(D[2]),
        .Q(data_p2[2]),
        .R(1'b0));
  FDRE \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(D[3]),
        .Q(data_p2[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "audio_passthrough_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized1
   (in_stream_TLAST_int_regslice,
    ap_rst_n_inv,
    ap_clk,
    in_stream_TVALID,
    in_stream_TREADY_int_regslice,
    in_stream_TLAST);
  output in_stream_TLAST_int_regslice;
  input ap_rst_n_inv;
  input ap_clk;
  input in_stream_TVALID;
  input in_stream_TREADY_int_regslice;
  input [0:0]in_stream_TLAST;

  wire ack_in_t_i_1__2_n_0;
  wire ack_in_t_reg_n_0;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire \data_p1[0]_i_1__5_n_0 ;
  wire \data_p1[0]_i_2_n_0 ;
  wire data_p2;
  wire \data_p2[0]_i_1_n_0 ;
  wire [0:0]in_stream_TLAST;
  wire in_stream_TLAST_int_regslice;
  wire in_stream_TREADY_int_regslice;
  wire in_stream_TVALID;
  wire [1:0]next__0;
  wire [1:0]state__0;

  LUT4 #(
    .INIT(16'h0230)) 
    \FSM_sequential_state[0]_i_1__3 
       (.I0(in_stream_TVALID),
        .I1(in_stream_TREADY_int_regslice),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00CCC3A0)) 
    \FSM_sequential_state[1]_i_1__3 
       (.I0(ack_in_t_reg_n_0),
        .I1(in_stream_TREADY_int_regslice),
        .I2(in_stream_TVALID),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hAAFAA2FF)) 
    ack_in_t_i_1__2
       (.I0(ack_in_t_reg_n_0),
        .I1(in_stream_TVALID),
        .I2(in_stream_TREADY_int_regslice),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_1__2_n_0));
  FDRE ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__2_n_0),
        .Q(ack_in_t_reg_n_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFBBBFAF008880A0)) 
    \data_p1[0]_i_1__5 
       (.I0(\data_p1[0]_i_2_n_0 ),
        .I1(in_stream_TREADY_int_regslice),
        .I2(in_stream_TVALID),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .I5(in_stream_TLAST_int_regslice),
        .O(\data_p1[0]_i_1__5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_2 
       (.I0(data_p2),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TLAST),
        .O(\data_p1[0]_i_2_n_0 ));
  FDRE \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p1[0]_i_1__5_n_0 ),
        .Q(in_stream_TLAST_int_regslice),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_p2[0]_i_1 
       (.I0(in_stream_TLAST),
        .I1(in_stream_TVALID),
        .I2(ack_in_t_reg_n_0),
        .I3(data_p2),
        .O(\data_p2[0]_i_1_n_0 ));
  FDRE \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p2[0]_i_1_n_0 ),
        .Q(data_p2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "audio_passthrough_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough_regslice_both__parameterized1_3
   (out_stream_TLAST,
    ap_rst_n_inv,
    ap_clk,
    in_stream_TREADY_int_regslice,
    out_stream_TREADY,
    in_stream_TLAST_int_regslice);
  output [0:0]out_stream_TLAST;
  input ap_rst_n_inv;
  input ap_clk;
  input in_stream_TREADY_int_regslice;
  input out_stream_TREADY;
  input in_stream_TLAST_int_regslice;

  wire ack_in_t_i_1__6_n_0;
  wire ack_in_t_reg_n_0;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire \data_p1[0]_i_1__6_n_0 ;
  wire \data_p1[0]_i_2__0_n_0 ;
  wire data_p2;
  wire \data_p2[0]_i_1__0_n_0 ;
  wire in_stream_TLAST_int_regslice;
  wire in_stream_TREADY_int_regslice;
  wire [1:0]next__0;
  wire [0:0]out_stream_TLAST;
  wire out_stream_TREADY;
  wire [1:0]state__0;

  LUT4 #(
    .INIT(16'h0230)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(in_stream_TREADY_int_regslice),
        .I1(out_stream_TREADY),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00CCC3A0)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(ack_in_t_reg_n_0),
        .I1(out_stream_TREADY),
        .I2(in_stream_TREADY_int_regslice),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hF0FCD0FF)) 
    ack_in_t_i_1__6
       (.I0(in_stream_TREADY_int_regslice),
        .I1(out_stream_TREADY),
        .I2(ack_in_t_reg_n_0),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_1__6_n_0));
  FDRE ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__6_n_0),
        .Q(ack_in_t_reg_n_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFBBBFAF008880A0)) 
    \data_p1[0]_i_1__6 
       (.I0(\data_p1[0]_i_2__0_n_0 ),
        .I1(out_stream_TREADY),
        .I2(in_stream_TREADY_int_regslice),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .I5(out_stream_TLAST),
        .O(\data_p1[0]_i_1__6_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_2__0 
       (.I0(data_p2),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(in_stream_TLAST_int_regslice),
        .O(\data_p1[0]_i_2__0_n_0 ));
  FDRE \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p1[0]_i_1__6_n_0 ),
        .Q(out_stream_TLAST),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_p2[0]_i_1__0 
       (.I0(in_stream_TLAST_int_regslice),
        .I1(in_stream_TREADY_int_regslice),
        .I2(ack_in_t_reg_n_0),
        .I3(data_p2),
        .O(\data_p2[0]_i_1__0_n_0 ));
  FDRE \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p2[0]_i_1__0_n_0 ),
        .Q(data_p2),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "dma_axis_ip_example_audio_passthrough_0_0,audio_passthrough,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "audio_passthrough,Vivado 2024.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_ctrl_ARADDR,
    s_axi_ctrl_ARREADY,
    s_axi_ctrl_ARVALID,
    s_axi_ctrl_AWADDR,
    s_axi_ctrl_AWREADY,
    s_axi_ctrl_AWVALID,
    s_axi_ctrl_BREADY,
    s_axi_ctrl_BRESP,
    s_axi_ctrl_BVALID,
    s_axi_ctrl_RDATA,
    s_axi_ctrl_RREADY,
    s_axi_ctrl_RRESP,
    s_axi_ctrl_RVALID,
    s_axi_ctrl_WDATA,
    s_axi_ctrl_WREADY,
    s_axi_ctrl_WSTRB,
    s_axi_ctrl_WVALID,
    ap_clk,
    ap_rst_n,
    interrupt,
    in_stream_TDATA,
    in_stream_TKEEP,
    in_stream_TLAST,
    in_stream_TREADY,
    in_stream_TSTRB,
    in_stream_TVALID,
    out_stream_TDATA,
    out_stream_TKEEP,
    out_stream_TLAST,
    out_stream_TREADY,
    out_stream_TSTRB,
    out_stream_TVALID);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR" *) input [4:0]s_axi_ctrl_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY" *) output s_axi_ctrl_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID" *) input s_axi_ctrl_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR" *) input [4:0]s_axi_ctrl_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY" *) output s_axi_ctrl_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID" *) input s_axi_ctrl_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY" *) input s_axi_ctrl_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP" *) output [1:0]s_axi_ctrl_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID" *) output s_axi_ctrl_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA" *) output [31:0]s_axi_ctrl_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY" *) input s_axi_ctrl_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP" *) output [1:0]s_axi_ctrl_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID" *) output s_axi_ctrl_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA" *) input [31:0]s_axi_ctrl_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY" *) output s_axi_ctrl_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WSTRB" *) input [3:0]s_axi_ctrl_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 99999985, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN dma_axis_ip_example_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_ctrl_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_ctrl:in_stream:out_stream, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999985, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dma_axis_ip_example_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TDATA" *) input [31:0]in_stream_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TKEEP" *) input [3:0]in_stream_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TLAST" *) input [0:0]in_stream_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TREADY" *) output in_stream_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TSTRB" *) input [3:0]in_stream_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_stream, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999985, PHASE 0.0, CLK_DOMAIN dma_axis_ip_example_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) input in_stream_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TDATA" *) output [31:0]out_stream_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TKEEP" *) output [3:0]out_stream_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TLAST" *) output [0:0]out_stream_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TREADY" *) input out_stream_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TSTRB" *) output [3:0]out_stream_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_stream, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999985, PHASE 0.0, CLK_DOMAIN dma_axis_ip_example_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) output out_stream_TVALID;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire [31:0]in_stream_TDATA;
  wire [3:0]in_stream_TKEEP;
  wire [0:0]in_stream_TLAST;
  wire in_stream_TREADY;
  wire [3:0]in_stream_TSTRB;
  wire in_stream_TVALID;
  wire interrupt;
  wire [31:0]out_stream_TDATA;
  wire [3:0]out_stream_TKEEP;
  wire [0:0]out_stream_TLAST;
  wire out_stream_TREADY;
  wire [3:0]out_stream_TSTRB;
  wire out_stream_TVALID;
  wire [4:0]s_axi_ctrl_ARADDR;
  wire s_axi_ctrl_ARREADY;
  wire s_axi_ctrl_ARVALID;
  wire [4:0]s_axi_ctrl_AWADDR;
  wire s_axi_ctrl_AWREADY;
  wire s_axi_ctrl_AWVALID;
  wire s_axi_ctrl_BREADY;
  wire s_axi_ctrl_BVALID;
  wire [9:0]\^s_axi_ctrl_RDATA ;
  wire s_axi_ctrl_RREADY;
  wire s_axi_ctrl_RVALID;
  wire [31:0]s_axi_ctrl_WDATA;
  wire s_axi_ctrl_WREADY;
  wire [3:0]s_axi_ctrl_WSTRB;
  wire s_axi_ctrl_WVALID;
  wire [1:0]NLW_inst_s_axi_ctrl_BRESP_UNCONNECTED;
  wire [31:8]NLW_inst_s_axi_ctrl_RDATA_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_RRESP_UNCONNECTED;

  assign s_axi_ctrl_BRESP[1] = \<const0> ;
  assign s_axi_ctrl_BRESP[0] = \<const0> ;
  assign s_axi_ctrl_RDATA[31] = \<const0> ;
  assign s_axi_ctrl_RDATA[30] = \<const0> ;
  assign s_axi_ctrl_RDATA[29] = \<const0> ;
  assign s_axi_ctrl_RDATA[28] = \<const0> ;
  assign s_axi_ctrl_RDATA[27] = \<const0> ;
  assign s_axi_ctrl_RDATA[26] = \<const0> ;
  assign s_axi_ctrl_RDATA[25] = \<const0> ;
  assign s_axi_ctrl_RDATA[24] = \<const0> ;
  assign s_axi_ctrl_RDATA[23] = \<const0> ;
  assign s_axi_ctrl_RDATA[22] = \<const0> ;
  assign s_axi_ctrl_RDATA[21] = \<const0> ;
  assign s_axi_ctrl_RDATA[20] = \<const0> ;
  assign s_axi_ctrl_RDATA[19] = \<const0> ;
  assign s_axi_ctrl_RDATA[18] = \<const0> ;
  assign s_axi_ctrl_RDATA[17] = \<const0> ;
  assign s_axi_ctrl_RDATA[16] = \<const0> ;
  assign s_axi_ctrl_RDATA[15] = \<const0> ;
  assign s_axi_ctrl_RDATA[14] = \<const0> ;
  assign s_axi_ctrl_RDATA[13] = \<const0> ;
  assign s_axi_ctrl_RDATA[12] = \<const0> ;
  assign s_axi_ctrl_RDATA[11] = \<const0> ;
  assign s_axi_ctrl_RDATA[10] = \<const0> ;
  assign s_axi_ctrl_RDATA[9] = \^s_axi_ctrl_RDATA [9];
  assign s_axi_ctrl_RDATA[8] = \<const0> ;
  assign s_axi_ctrl_RDATA[7:0] = \^s_axi_ctrl_RDATA [7:0];
  assign s_axi_ctrl_RRESP[1] = \<const0> ;
  assign s_axi_ctrl_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S_AXI_CTRL_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_pp0_stage0 = "1'b1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_passthrough inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in_stream_TDATA(in_stream_TDATA),
        .in_stream_TKEEP(in_stream_TKEEP),
        .in_stream_TLAST(in_stream_TLAST),
        .in_stream_TREADY(in_stream_TREADY),
        .in_stream_TSTRB(in_stream_TSTRB),
        .in_stream_TVALID(in_stream_TVALID),
        .interrupt(interrupt),
        .out_stream_TDATA(out_stream_TDATA),
        .out_stream_TKEEP(out_stream_TKEEP),
        .out_stream_TLAST(out_stream_TLAST),
        .out_stream_TREADY(out_stream_TREADY),
        .out_stream_TSTRB(out_stream_TSTRB),
        .out_stream_TVALID(out_stream_TVALID),
        .s_axi_ctrl_ARADDR(s_axi_ctrl_ARADDR),
        .s_axi_ctrl_ARREADY(s_axi_ctrl_ARREADY),
        .s_axi_ctrl_ARVALID(s_axi_ctrl_ARVALID),
        .s_axi_ctrl_AWADDR({s_axi_ctrl_AWADDR[4:2],1'b0,1'b0}),
        .s_axi_ctrl_AWREADY(s_axi_ctrl_AWREADY),
        .s_axi_ctrl_AWVALID(s_axi_ctrl_AWVALID),
        .s_axi_ctrl_BREADY(s_axi_ctrl_BREADY),
        .s_axi_ctrl_BRESP(NLW_inst_s_axi_ctrl_BRESP_UNCONNECTED[1:0]),
        .s_axi_ctrl_BVALID(s_axi_ctrl_BVALID),
        .s_axi_ctrl_RDATA({NLW_inst_s_axi_ctrl_RDATA_UNCONNECTED[31:10],\^s_axi_ctrl_RDATA }),
        .s_axi_ctrl_RREADY(s_axi_ctrl_RREADY),
        .s_axi_ctrl_RRESP(NLW_inst_s_axi_ctrl_RRESP_UNCONNECTED[1:0]),
        .s_axi_ctrl_RVALID(s_axi_ctrl_RVALID),
        .s_axi_ctrl_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_ctrl_WDATA[7:0]}),
        .s_axi_ctrl_WREADY(s_axi_ctrl_WREADY),
        .s_axi_ctrl_WSTRB({1'b0,1'b0,1'b0,s_axi_ctrl_WSTRB[0]}),
        .s_axi_ctrl_WVALID(s_axi_ctrl_WVALID));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
