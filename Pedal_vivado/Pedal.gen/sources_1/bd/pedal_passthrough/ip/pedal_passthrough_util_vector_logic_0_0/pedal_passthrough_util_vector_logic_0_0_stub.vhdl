-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Mar 12 11:40:12 2026
-- Host        : Theodore running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FPGA-Guitar-Pedal/Pedal_vivado/Pedal.gen/sources_1/bd/pedal_passthrough/ip/pedal_passthrough_util_vector_logic_0_0/pedal_passthrough_util_vector_logic_0_0_stub.vhdl
-- Design      : pedal_passthrough_util_vector_logic_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sfvc784-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pedal_passthrough_util_vector_logic_0_0 is
  Port ( 
    Op1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Res : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end pedal_passthrough_util_vector_logic_0_0;

architecture stub of pedal_passthrough_util_vector_logic_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Op1[7:0],Res[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_vector_logic_v2_0_4_util_vector_logic,Vivado 2024.1";
begin
end;
