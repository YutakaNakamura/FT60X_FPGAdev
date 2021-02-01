// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Nov 23 23:16:59 2020
// Host        : DESKTOP-AO3CL7T running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/develop/Data/Xilinx/Workspace/MYC-C7020-4E1D-766-C/project_FT60X_noPS/project_FT60X_noPS.srcs/sources_1/ip/conv_s1n14/conv_s1n14_stub.v
// Design      : conv_s1n14
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "floating_point_v7_1_7,Vivado 2018.3" *)
module conv_s1n14(aclk, s_axis_a_tvalid, s_axis_a_tdata, 
  m_axis_result_tvalid, m_axis_result_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,s_axis_a_tvalid,s_axis_a_tdata[15:0],m_axis_result_tvalid,m_axis_result_tdata[15:0]" */;
  input aclk;
  input s_axis_a_tvalid;
  input [15:0]s_axis_a_tdata;
  output m_axis_result_tvalid;
  output [15:0]m_axis_result_tdata;
endmodule
