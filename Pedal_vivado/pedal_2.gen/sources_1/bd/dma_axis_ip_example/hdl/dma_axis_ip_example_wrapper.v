//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Wed Apr  8 15:32:32 2026
//Host        : WFXB07B250A3A85 running 64-bit major release  (build 9200)
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
    sdata_0_out_0,
    switches_tri_io);
  output [0:0]AIC_nRST;
  output clk_out1_0;
  output irq_0;
  output locked_0;
  output lrclk_out_0;
  output sclk_out_0;
  output sdata_0_out_0;
  inout [7:0]switches_tri_io;

  wire [0:0]AIC_nRST;
  wire clk_out1_0;
  wire irq_0;
  wire locked_0;
  wire lrclk_out_0;
  wire sclk_out_0;
  wire sdata_0_out_0;
  wire [0:0]switches_tri_i_0;
  wire [1:1]switches_tri_i_1;
  wire [2:2]switches_tri_i_2;
  wire [3:3]switches_tri_i_3;
  wire [4:4]switches_tri_i_4;
  wire [5:5]switches_tri_i_5;
  wire [6:6]switches_tri_i_6;
  wire [7:7]switches_tri_i_7;
  wire [0:0]switches_tri_io_0;
  wire [1:1]switches_tri_io_1;
  wire [2:2]switches_tri_io_2;
  wire [3:3]switches_tri_io_3;
  wire [4:4]switches_tri_io_4;
  wire [5:5]switches_tri_io_5;
  wire [6:6]switches_tri_io_6;
  wire [7:7]switches_tri_io_7;
  wire [0:0]switches_tri_o_0;
  wire [1:1]switches_tri_o_1;
  wire [2:2]switches_tri_o_2;
  wire [3:3]switches_tri_o_3;
  wire [4:4]switches_tri_o_4;
  wire [5:5]switches_tri_o_5;
  wire [6:6]switches_tri_o_6;
  wire [7:7]switches_tri_o_7;
  wire [0:0]switches_tri_t_0;
  wire [1:1]switches_tri_t_1;
  wire [2:2]switches_tri_t_2;
  wire [3:3]switches_tri_t_3;
  wire [4:4]switches_tri_t_4;
  wire [5:5]switches_tri_t_5;
  wire [6:6]switches_tri_t_6;
  wire [7:7]switches_tri_t_7;

  dma_axis_ip_example dma_axis_ip_example_i
       (.AIC_nRST(AIC_nRST),
        .clk_out1_0(clk_out1_0),
        .irq_0(irq_0),
        .locked_0(locked_0),
        .lrclk_out_0(lrclk_out_0),
        .sclk_out_0(sclk_out_0),
        .sdata_0_out_0(sdata_0_out_0),
        .switches_tri_i({switches_tri_i_7,switches_tri_i_6,switches_tri_i_5,switches_tri_i_4,switches_tri_i_3,switches_tri_i_2,switches_tri_i_1,switches_tri_i_0}),
        .switches_tri_o({switches_tri_o_7,switches_tri_o_6,switches_tri_o_5,switches_tri_o_4,switches_tri_o_3,switches_tri_o_2,switches_tri_o_1,switches_tri_o_0}),
        .switches_tri_t({switches_tri_t_7,switches_tri_t_6,switches_tri_t_5,switches_tri_t_4,switches_tri_t_3,switches_tri_t_2,switches_tri_t_1,switches_tri_t_0}));
  IOBUF switches_tri_iobuf_0
       (.I(switches_tri_o_0),
        .IO(switches_tri_io[0]),
        .O(switches_tri_i_0),
        .T(switches_tri_t_0));
  IOBUF switches_tri_iobuf_1
       (.I(switches_tri_o_1),
        .IO(switches_tri_io[1]),
        .O(switches_tri_i_1),
        .T(switches_tri_t_1));
  IOBUF switches_tri_iobuf_2
       (.I(switches_tri_o_2),
        .IO(switches_tri_io[2]),
        .O(switches_tri_i_2),
        .T(switches_tri_t_2));
  IOBUF switches_tri_iobuf_3
       (.I(switches_tri_o_3),
        .IO(switches_tri_io[3]),
        .O(switches_tri_i_3),
        .T(switches_tri_t_3));
  IOBUF switches_tri_iobuf_4
       (.I(switches_tri_o_4),
        .IO(switches_tri_io[4]),
        .O(switches_tri_i_4),
        .T(switches_tri_t_4));
  IOBUF switches_tri_iobuf_5
       (.I(switches_tri_o_5),
        .IO(switches_tri_io[5]),
        .O(switches_tri_i_5),
        .T(switches_tri_t_5));
  IOBUF switches_tri_iobuf_6
       (.I(switches_tri_o_6),
        .IO(switches_tri_io[6]),
        .O(switches_tri_i_6),
        .T(switches_tri_t_6));
  IOBUF switches_tri_iobuf_7
       (.I(switches_tri_o_7),
        .IO(switches_tri_io[7]),
        .O(switches_tri_i_7),
        .T(switches_tri_t_7));
endmodule
