// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Mar 12 10:43:42 2026
// Host        : Theodore running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA-Guitar-Pedal/Pedal_vivado/Pedal.gen/sources_1/bd/pedal_passthrough/ip/pedal_passthrough_clk_wiz_0_0/pedal_passthrough_clk_wiz_0_0_stub.v
// Design      : pedal_passthrough_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module pedal_passthrough_clk_wiz_0_0(clk_out1, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="reset,locked,clk_in1" */
/* synthesis syn_force_seq_prim="clk_out1" */;
  output clk_out1 /* synthesis syn_isclock = 1 */;
  input reset;
  output locked;
  input clk_in1;
endmodule
