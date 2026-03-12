// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Mar 12 10:44:12 2026
// Host        : Theodore running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA-Guitar-Pedal/Pedal_vivado/Pedal.gen/sources_1/bd/pedal_passthrough/ip/pedal_passthrough_audio_passthrough_0_0/pedal_passthrough_audio_passthrough_0_0_stub.v
// Design      : pedal_passthrough_audio_passthrough_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "audio_passthrough,Vivado 2024.1" *)
module pedal_passthrough_audio_passthrough_0_0(s_axi_control_ARADDR, 
  s_axi_control_ARREADY, s_axi_control_ARVALID, s_axi_control_AWADDR, 
  s_axi_control_AWREADY, s_axi_control_AWVALID, s_axi_control_BREADY, 
  s_axi_control_BRESP, s_axi_control_BVALID, s_axi_control_RDATA, s_axi_control_RREADY, 
  s_axi_control_RRESP, s_axi_control_RVALID, s_axi_control_WDATA, s_axi_control_WREADY, 
  s_axi_control_WSTRB, s_axi_control_WVALID, ap_clk, ap_rst_n, interrupt, in_stream_TDATA, 
  in_stream_TKEEP, in_stream_TLAST, in_stream_TREADY, in_stream_TSTRB, in_stream_TVALID, 
  out_stream_TDATA, out_stream_TKEEP, out_stream_TLAST, out_stream_TREADY, 
  out_stream_TSTRB, out_stream_TVALID)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_ARADDR[3:0],s_axi_control_ARREADY,s_axi_control_ARVALID,s_axi_control_AWADDR[3:0],s_axi_control_AWREADY,s_axi_control_AWVALID,s_axi_control_BREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_RDATA[31:0],s_axi_control_RREADY,s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_WDATA[31:0],s_axi_control_WREADY,s_axi_control_WSTRB[3:0],s_axi_control_WVALID,ap_rst_n,interrupt,in_stream_TDATA[31:0],in_stream_TKEEP[3:0],in_stream_TLAST[0:0],in_stream_TREADY,in_stream_TSTRB[3:0],in_stream_TVALID,out_stream_TDATA[31:0],out_stream_TKEEP[3:0],out_stream_TLAST[0:0],out_stream_TREADY,out_stream_TSTRB[3:0],out_stream_TVALID" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  input [3:0]s_axi_control_ARADDR;
  output s_axi_control_ARREADY;
  input s_axi_control_ARVALID;
  input [3:0]s_axi_control_AWADDR;
  output s_axi_control_AWREADY;
  input s_axi_control_AWVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  output [31:0]s_axi_control_RDATA;
  input s_axi_control_RREADY;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input [31:0]s_axi_control_WDATA;
  output s_axi_control_WREADY;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
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
