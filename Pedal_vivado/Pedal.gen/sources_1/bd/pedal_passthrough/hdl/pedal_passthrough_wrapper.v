//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Thu Mar 12 11:37:41 2026
//Host        : Theodore running 64-bit major release  (build 9200)
//Command     : generate_target pedal_passthrough_wrapper.bd
//Design      : pedal_passthrough_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module pedal_passthrough_wrapper
   (clk_out1_0,
    irq_0,
    locked_0,
    lrclk_out_0,
    sclk_out_0,
    sdata_0_out_0);
  output clk_out1_0;
  output irq_0;
  output locked_0;
  output lrclk_out_0;
  output sclk_out_0;
  output sdata_0_out_0;

  wire clk_out1_0;
  wire irq_0;
  wire locked_0;
  wire lrclk_out_0;
  wire sclk_out_0;
  wire sdata_0_out_0;

  pedal_passthrough pedal_passthrough_i
       (.clk_out1_0(clk_out1_0),
        .irq_0(irq_0),
        .locked_0(locked_0),
        .lrclk_out_0(lrclk_out_0),
        .sclk_out_0(sclk_out_0),
        .sdata_0_out_0(sdata_0_out_0));
endmodule
