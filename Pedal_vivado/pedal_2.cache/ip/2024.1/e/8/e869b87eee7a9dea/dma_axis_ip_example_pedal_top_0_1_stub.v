// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Apr  8 15:41:26 2026
// Host        : WFXB07B250A3A85 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dma_axis_ip_example_pedal_top_0_1_stub.v
// Design      : dma_axis_ip_example_pedal_top_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "pedal_top,Vivado 2024.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_ctrl_ARADDR, s_axi_ctrl_ARREADY, 
  s_axi_ctrl_ARVALID, s_axi_ctrl_AWADDR, s_axi_ctrl_AWREADY, s_axi_ctrl_AWVALID, 
  s_axi_ctrl_BREADY, s_axi_ctrl_BRESP, s_axi_ctrl_BVALID, s_axi_ctrl_RDATA, 
  s_axi_ctrl_RREADY, s_axi_ctrl_RRESP, s_axi_ctrl_RVALID, s_axi_ctrl_WDATA, 
  s_axi_ctrl_WREADY, s_axi_ctrl_WSTRB, s_axi_ctrl_WVALID, ap_clk, ap_rst_n, interrupt, 
  in_stream_TDATA, in_stream_TKEEP, in_stream_TLAST, in_stream_TREADY, in_stream_TSTRB, 
  in_stream_TVALID, out_stream_TDATA, out_stream_TKEEP, out_stream_TLAST, 
  out_stream_TREADY, out_stream_TSTRB, out_stream_TVALID)
/* synthesis syn_black_box black_box_pad_pin="s_axi_ctrl_ARADDR[4:0],s_axi_ctrl_ARREADY,s_axi_ctrl_ARVALID,s_axi_ctrl_AWADDR[4:0],s_axi_ctrl_AWREADY,s_axi_ctrl_AWVALID,s_axi_ctrl_BREADY,s_axi_ctrl_BRESP[1:0],s_axi_ctrl_BVALID,s_axi_ctrl_RDATA[31:0],s_axi_ctrl_RREADY,s_axi_ctrl_RRESP[1:0],s_axi_ctrl_RVALID,s_axi_ctrl_WDATA[31:0],s_axi_ctrl_WREADY,s_axi_ctrl_WSTRB[3:0],s_axi_ctrl_WVALID,ap_rst_n,interrupt,in_stream_TDATA[31:0],in_stream_TKEEP[3:0],in_stream_TLAST[0:0],in_stream_TREADY,in_stream_TSTRB[3:0],in_stream_TVALID,out_stream_TDATA[31:0],out_stream_TKEEP[3:0],out_stream_TLAST[0:0],out_stream_TREADY,out_stream_TSTRB[3:0],out_stream_TVALID" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  input [4:0]s_axi_ctrl_ARADDR;
  output s_axi_ctrl_ARREADY;
  input s_axi_ctrl_ARVALID;
  input [4:0]s_axi_ctrl_AWADDR;
  output s_axi_ctrl_AWREADY;
  input s_axi_ctrl_AWVALID;
  input s_axi_ctrl_BREADY;
  output [1:0]s_axi_ctrl_BRESP;
  output s_axi_ctrl_BVALID;
  output [31:0]s_axi_ctrl_RDATA;
  input s_axi_ctrl_RREADY;
  output [1:0]s_axi_ctrl_RRESP;
  output s_axi_ctrl_RVALID;
  input [31:0]s_axi_ctrl_WDATA;
  output s_axi_ctrl_WREADY;
  input [3:0]s_axi_ctrl_WSTRB;
  input s_axi_ctrl_WVALID;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst_n;
  output interrupt;
  input [31:0]in_stream_TDATA;
  input [3:0]in_stream_TKEEP;
  input [0:0]in_stream_TLAST;
  output in_stream_TREADY;
  input [3:0]in_stream_TSTRB;
  input in_stream_TVALID;
  output [31:0]out_stream_TDATA;
  output [3:0]out_stream_TKEEP;
  output [0:0]out_stream_TLAST;
  input out_stream_TREADY;
  output [3:0]out_stream_TSTRB;
  output out_stream_TVALID;
endmodule
