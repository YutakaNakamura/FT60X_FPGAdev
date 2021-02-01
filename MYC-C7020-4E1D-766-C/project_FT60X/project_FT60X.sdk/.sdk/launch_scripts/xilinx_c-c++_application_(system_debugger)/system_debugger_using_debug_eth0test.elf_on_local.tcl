connect -url tcp:127.0.0.1:3121
source F:/develop/Data/Xilinx/Workspace/MYC-C7020-4E1D-766-C/project_PS_Check/project_PS_Check.sdk/design_ps_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS3 210299A1F3E8"} -index 0
loadhw -hw F:/develop/Data/Xilinx/Workspace/MYC-C7020-4E1D-766-C/project_PS_Check/project_PS_Check.sdk/design_ps_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS3 210299A1F3E8"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS3 210299A1F3E8"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS3 210299A1F3E8"} -index 0
dow F:/develop/Data/Xilinx/Workspace/MYC-C7020-4E1D-766-C/project_PS_Check/project_PS_Check.sdk/eth0test/Debug/eth0test.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS3 210299A1F3E8"} -index 0
con
