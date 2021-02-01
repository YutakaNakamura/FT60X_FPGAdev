#user LED
set_property -dict {PACKAGE_PIN U13 IOSTANDARD LVCMOS33} [get_ports led_0]
#Pmod


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
set_property -dict {PACKAGE_PIN C20 IOSTANDARD LVCMOS33} [get_ports WR_N]
set_property -dict {PACKAGE_PIN H18 IOSTANDARD LVCMOS33} [get_ports RD_N]
set_property -dict {PACKAGE_PIN J18 IOSTANDARD LVCMOS33} [get_ports OE_N]

set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports {DATA[17]}]
set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports {DATA[19]}]
set_property -dict {PACKAGE_PIN G20 IOSTANDARD LVCMOS33} [get_ports {DATA[24]}]
set_property -dict {PACKAGE_PIN G19 IOSTANDARD LVCMOS33} [get_ports {DATA[25]}]
set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS33} [get_ports {DATA[30]}]
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports {DATA[31]}]


set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS33} [get_ports {DATA[16]}]
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports {DATA[18]}]
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports D_CLK]
create_clock -period 10.000 [get_ports D_CLK]

#set_property -dict { PACKAGE_PIN U10   IOSTANDARD LVCMOS33 } [get_ports { GPIO_1 }];#C19
#set_property -dict { PACKAGE_PIN U10   IOSTANDARD LVCMOS33 } [get_ports { GPIO_0 }];#C18
#set_property -dict { PACKAGE_PIN U10   IOSTANDARD LVCMOS33 } [get_ports { RESET }];#C15
#set_property -dict { PACKAGE_PIN U10   IOSTANDARD LVCMOS33 } [get_ports { WAKEUP }];#C14

#test
#set_property -dict { PACKAGE_PIN J16   IOSTANDARD LVCMOS33 } [get_ports { BE_N[0] }]#H20 IO_B35_LN24 J16
#set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { BE_N[1] }]#H19 IO_B35_LP24 K16
#set_property -dict { PACKAGE_PIN F20   IOSTANDARD LVCMOS33 } [get_ports { BE_N[2] }]#D15 IO_B35_LN15 F20
#set_property -dict { PACKAGE_PIN F19   IOSTANDARD LVCMOS33 } [get_ports { BE_N[3] }]#D14 IO_B35_LP15 F19

set_property IOSTANDARD LVCMOS33 [get_ports {BE_N[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {BE_N[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {BE_N[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {BE_N[0]}]
set_property PACKAGE_PIN J16 [get_ports {BE_N[3]}]
set_property PACKAGE_PIN K16 [get_ports {BE_N[2]}]
set_property PACKAGE_PIN F20 [get_ports {BE_N[1]}]
set_property PACKAGE_PIN F19 [get_ports {BE_N[0]}]



