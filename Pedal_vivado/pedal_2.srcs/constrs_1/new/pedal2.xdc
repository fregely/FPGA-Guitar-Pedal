# Audio Codec - LVCMOS18
set_property PACKAGE_PIN G3 [get_ports sdata_0_out_0]
set_property IOSTANDARD LVCMOS18 [get_ports sdata_0_out_0]

set_property PACKAGE_PIN F2 [get_ports lrclk_out_0]
set_property IOSTANDARD LVCMOS18 [get_ports lrclk_out_0]

set_property PACKAGE_PIN G1 [get_ports sclk_out_0]
set_property IOSTANDARD LVCMOS18 [get_ports sclk_out_0]

set_property PACKAGE_PIN F3 [get_ports clk_out1_0]
set_property IOSTANDARD LVCMOS18 [get_ports clk_out1_0]

# locked_0 - connect to a user LED so you can see when clock is stable
set_property PACKAGE_PIN AH2 [get_ports locked_0]
set_property IOSTANDARD LVCMOS12 [get_ports locked_0]

# irq_0 - connect to another LED or just tie off
set_property PACKAGE_PIN AE7 [get_ports irq_0]
set_property IOSTANDARD LVCMOS12 [get_ports irq_0]

# This MUST be driven HIGH for the codec to operate
set_property PACKAGE_PIN E2 [get_ports AIC_nRST]
set_property IOSTANDARD LVCMOS18 [get_ports AIC_nRST]