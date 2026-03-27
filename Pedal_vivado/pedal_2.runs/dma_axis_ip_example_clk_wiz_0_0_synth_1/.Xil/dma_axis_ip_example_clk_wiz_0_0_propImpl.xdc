set_property SRC_FILE_INFO {cfile:e:/FPGA-Guitar-Pedal/pedal_2/pedal_2.gen/sources_1/bd/dma_axis_ip_example/ip/dma_axis_ip_example_clk_wiz_0_0/dma_axis_ip_example_clk_wiz_0_0.xdc rfile:../../../pedal_2.gen/sources_1/bd/dma_axis_ip_example/ip/dma_axis_ip_example_clk_wiz_0_0/dma_axis_ip_example_clk_wiz_0_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
