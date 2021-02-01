#user LED
set_property -dict {PACKAGE_PIN U13 IOSTANDARD LVCMOS33} [get_ports led_0]
#Pmod
set_property -dict {PACKAGE_PIN W10 IOSTANDARD LVCMOS33} [get_ports FCLK_CLK0_0]
set_property -dict {PACKAGE_PIN Y12 IOSTANDARD LVCMOS33} [get_ports FCLK_CLK1_0]
set_property -dict {PACKAGE_PIN W9 IOSTANDARD LVCMOS33} [get_ports FCLK_CLK2_0]
set_property -dict {PACKAGE_PIN Y13 IOSTANDARD LVCMOS33} [get_ports FCLK_CLK3_0]
set_property -dict {PACKAGE_PIN V11 IOSTANDARD LVCMOS33} [get_ports clkout_0]
set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { Pmod1[5] }];
set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { Pmod1[6] }];
set_property -dict { PACKAGE_PIN U10   IOSTANDARD LVCMOS33 } [get_ports { Pmod1[7] }];


#FMC_UMFT601X
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports {DATA[0]}]
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports {DATA[2]}]
set_property -dict {PACKAGE_PIN Y17 IOSTANDARD LVCMOS33} [get_ports {DATA[4]}]
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports {DATA[6]}]
set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports {DATA[8]}]
set_property -dict {PACKAGE_PIN T12 IOSTANDARD LVCMOS33} [get_ports {DATA[10]}]
set_property -dict {PACKAGE_PIN W20 IOSTANDARD LVCMOS33} [get_ports {DATA[12]}]
set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS33} [get_ports {DATA[14]}]
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports {DATA[20]}]
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS33} [get_ports {DATA[22]}]
set_property -dict {PACKAGE_PIN L15 IOSTANDARD LVCMOS33} [get_ports {DATA[26]}]
set_property -dict {PACKAGE_PIN L14 IOSTANDARD LVCMOS33} [get_ports {DATA[27]}]
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports TXE_N]
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports RXF_N]

set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports {DATA[1]}]
set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports {DATA[3]}]
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports {DATA[5]}]
set_property -dict {PACKAGE_PIN T11 IOSTANDARD LVCMOS33} [get_ports {DATA[7]}]
set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports {DATA[9]}]
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports {DATA[11]}]
set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS33} [get_ports {DATA[13]}]
set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS33} [get_ports {DATA[15]}]
set_property -dict {PACKAGE_PIN L20 IOSTANDARD LVCMOS33} [get_ports {DATA[21]}]
set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVCMOS33} [get_ports {DATA[23]}]
set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVCMOS33} [get_ports {DATA[28]}]
set_property -dict {PACKAGE_PIN K14 IOSTANDARD LVCMOS33} [get_ports {DATA[29]}]
set_property -dict { PACKAGE_PIN B20   IOSTANDARD LVCMOS33 } [get_ports { SIWU_N }];#G13 IO_B35_LN1 B20
set_property -dict {PACKAGE_PIN C20 IOSTANDARD LVCMOS33} [get_ports WR_N]
set_property -dict {PACKAGE_PIN H18 IOSTANDARD LVCMOS33} [get_ports RD_N]
set_property -dict {PACKAGE_PIN J18 IOSTANDARD LVCMOS33} [get_ports OE_N]

set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports {DATA[17]}]
set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports {DATA[19]}]
set_property -dict {PACKAGE_PIN G20 IOSTANDARD LVCMOS33} [get_ports {DATA[24]}]
set_property -dict {PACKAGE_PIN G19 IOSTANDARD LVCMOS33} [get_ports {DATA[25]}]
set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS33} [get_ports {DATA[30]}]
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports {DATA[31]}]
set_property -dict { PACKAGE_PIN F20   IOSTANDARD LVCMOS33 } [get_ports { BE_N2 }];#D15 IO_B35_LN15 F20
set_property -dict { PACKAGE_PIN F19   IOSTANDARD LVCMOS33 } [get_ports { BE_N3 }];#D14 IO_B35_LP15 F19

set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS33} [get_ports {DATA[16]}]
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports {DATA[18]}]
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports D_CLK]

#set_property -dict { PACKAGE_PIN U10   IOSTANDARD LVCMOS33 } [get_ports { GPIO_1 }];#C19
#set_property -dict { PACKAGE_PIN U10   IOSTANDARD LVCMOS33 } [get_ports { GPIO_0 }];#C18
#set_property -dict { PACKAGE_PIN U10   IOSTANDARD LVCMOS33 } [get_ports { RESET }];#C15
#set_property -dict { PACKAGE_PIN U10   IOSTANDARD LVCMOS33 } [get_ports { WAKEUP }];#C14




create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 8192 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list design_ps_i/processing_system7_0/inst/FCLK_CLK1]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 32 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {DATA_OBUF[0]} {DATA_OBUF[1]} {DATA_OBUF[2]} {DATA_OBUF[3]} {DATA_OBUF[4]} {DATA_OBUF[5]} {DATA_OBUF[6]} {DATA_OBUF[7]} {DATA_OBUF[8]} {DATA_OBUF[9]} {DATA_OBUF[10]} {DATA_OBUF[11]} {DATA_OBUF[12]} {DATA_OBUF[13]} {DATA_OBUF[14]} {DATA_OBUF[15]} {DATA_OBUF[16]} {DATA_OBUF[17]} {DATA_OBUF[18]} {DATA_OBUF[19]} {DATA_OBUF[20]} {DATA_OBUF[21]} {DATA_OBUF[22]} {DATA_OBUF[23]} {DATA_OBUF[24]} {DATA_OBUF[25]} {DATA_OBUF[26]} {DATA_OBUF[27]} {DATA_OBUF[28]} {DATA_OBUF[29]} {DATA_OBUF[30]} {DATA_OBUF[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 1 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list clkout_0_OBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list D_CLK_IBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list OE_N_OBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list RD_N_OBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list RXF_N_IBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list TXE_N_IBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list WR_N_OBUF]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets FCLK_CLK1_0_OBUF]
