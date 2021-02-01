-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Nov 23 23:16:59 2020
-- Host        : DESKTOP-AO3CL7T running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/develop/Data/Xilinx/Workspace/MYC-C7020-4E1D-766-C/project_FT60X_noPS/project_FT60X_noPS.srcs/sources_1/ip/conv_s1n14/conv_s1n14_stub.vhdl
-- Design      : conv_s1n14
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity conv_s1n14 is
  Port ( 
    aclk : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_result_tvalid : out STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end conv_s1n14;

architecture stub of conv_s1n14 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,s_axis_a_tvalid,s_axis_a_tdata[15:0],m_axis_result_tvalid,m_axis_result_tdata[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "floating_point_v7_1_7,Vivado 2018.3";
begin
end;
