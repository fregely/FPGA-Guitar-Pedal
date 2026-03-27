//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Wed Mar 25 22:24:55 2026
//Host        : Theodore running 64-bit major release  (build 9200)
//Command     : generate_target dma_axis_ip_example_wrapper.bd
//Design      : dma_axis_ip_example_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dma_axis_ip_example_wrapper
   (AIC_nRST,
    clk_out1_0,
    irq_0,
    locked_0,
    lrclk_out_0,
    sclk_out_0,
    sdata_0_out_0);                                        
  output [0:0]AIC_nRST;
  output clk_out1_0;
  output irq_0;
  output locked_0;
  output lrclk_out_0;
  output sclk_out_0;
  output sdata_0_out_0;

  wire [0:0]AIC_nRST;
  wire clk_out1_0;
  wire irq_0;
  wire locked_0;
  wire lrclk_out_0;
  wire sclk_out_0;
  wire sdata_0_out_0;

  dma_axis_ip_example dma_axis_ip_example_i
       (.AIC_nRST(AIC_nRST),
        .clk_out1_0(clk_out1_0),
        .irq_0(irq_0),
        .locked_0(locked_0),
        .lrclk_out_0(lrclk_out_0),
        .sclk_out_0(sclk_out_0),
        .sdata_0_out_0(sdata_0_out_0));
endmodule
