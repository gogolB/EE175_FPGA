set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

#####################################################################
#                          Clock 100 MHz                            #
#####################################################################

set_property PACKAGE_PIN F4 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
create_clock -period 10.000 -name sys_clk -waveform {0.000 5.000} [get_ports sys_clk]

#####################################################################
#                         FTDI 232H CHIP                            #
#####################################################################

#set_property SLEW FAST [get_ports  {Header_P4[*]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {Header_P4[*]}]
#set_property SLEW FAST [get_ports {ftdi_d[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ftdi_d[*]}]

#set_property PACKAGE_PIN A14 [get_ports {Header_P4[0]}]
set_property PACKAGE_PIN B16 [get_ports {ftdi_d[0]}]
#set_property PACKAGE_PIN A13 [get_ports {Header_P4[1]}]
set_property PACKAGE_PIN B17 [get_ports {ftdi_d[1]}]
#set_property PACKAGE_PIN D13 [get_ports {Header_P4[2]}]
set_property PACKAGE_PIN D14 [get_ports {ftdi_d[2]}]
#set_property PACKAGE_PIN D12 [get_ports {Header_P4[3]}]
set_property PACKAGE_PIN C14 [get_ports {ftdi_d[3]}]
#set_property PACKAGE_PIN A11 [get_ports {Header_P4[4]}]
set_property PACKAGE_PIN C16 [get_ports {ftdi_d[4]}]
#set_property PACKAGE_PIN B11 [get_ports {Header_P4[5]}]
set_property PACKAGE_PIN C17 [get_ports {ftdi_d[5]}]
#set_property PACKAGE_PIN F14 [get_ports {Header_P4[6]}]
set_property PACKAGE_PIN H14 [get_ports {ftdi_d[6]}]
#set_property PACKAGE_PIN F13 [get_ports {Header_P4[7]}]
set_property PACKAGE_PIN G14 [get_ports {ftdi_d[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports ftdi_rxf]
#set_property PACKAGE_PIN B14 [get_ports {Header_P4[8]}]
set_property PACKAGE_PIN D15 [get_ports ftdi_rxf]

set_property IOSTANDARD LVCMOS33 [get_ports ftdi_txe]
#set_property PACKAGE_PIN B13 [get_ports {Header_P4[9]}]
set_property PACKAGE_PIN C15 [get_ports ftdi_txe]

#set_property SLEW FAST [get_ports ftdi_wr]
set_property IOSTANDARD LVCMOS33 [get_ports ftdi_wr]
#set_property PACKAGE_PIN A16 [get_ports {Header_P4[10]}]
set_property PACKAGE_PIN E15 [get_ports ftdi_wr]

#set_property SLEW FAST [get_ports ftdi_rd]
set_property IOSTANDARD LVCMOS33 [get_ports ftdi_rd]
#set_property PACKAGE_PIN A15 [get_ports {Header_P4[11]}]
set_property PACKAGE_PIN E16 [get_ports ftdi_rd]

#set_property SLEW FAST [get_ports ftdi_oe]
set_property IOSTANDARD LVCMOS33 [get_ports ftdi_oe]
#set_property PACKAGE_PIN A9  [get_ports {Header_P4[12]}]
set_property PACKAGE_PIN E17 [get_ports ftdi_oe]

set_property IOSTANDARD LVCMOS33 [get_ports ftdi_clk]
#set_property PACKAGE_PIN A10 [get_ports {Header_P4[13]}]
set_property PACKAGE_PIN A10 [get_ports ftdi_clk]

set_property IOSTANDARD LVCMOS33 [get_ports ftdi_siwu]
#set_property PACKAGE_PIN A10 [get_ports {Header_P4[13]}]
set_property PACKAGE_PIN D17 [get_ports ftdi_siwu]
#

set_property IOSTANDARD LVCMOS33 [get_ports {STATE[*]}]
set_property PACKAGE_PIN A14 [get_ports {STATE[0]}]
set_property PACKAGE_PIN A13 [get_ports {STATE[1]}]
set_property PACKAGE_PIN D13 [get_ports {STATE[2]}]
set_property PACKAGE_PIN D12 [get_ports {STATE[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {NHD}]
set_property PACKAGE_PIN A11 [get_ports {NHD}]
set_property IOSTANDARD LVCMOS33 [get_ports {RHD}]
set_property PACKAGE_PIN B11 [get_ports {RHD}]
#set_property PACKAGE_PIN B12 [get_ports {Header_P4[14]}]
#set_property PACKAGE_PIN C12 [get_ports {Header_P4[15]}]
#set_property PACKAGE_PIN A8  [get_ports {Header_P4[16]}]
#set_property PACKAGE_PIN B8  [get_ports {Header_P4[17]}]
#set_property PACKAGE_PIN C10 [get_ports {Header_P4[18]}]
#set_property PACKAGE_PIN C11 [get_ports {Header_P4[19]}]
#set_property PACKAGE_PIN B9 [get_ports {Header_P4[20]}]
#set_property PACKAGE_PIN C9 [get_ports {Header_P4[21]}]
#set_property PACKAGE_PIN B6 [get_ports {Header_P4[22]}]
#set_property PACKAGE_PIN B7 [get_ports {Header_P4[23]}]
#set_property PACKAGE_PIN C5 [get_ports {Header_P4[24]}]
#set_property PACKAGE_PIN C6 [get_ports {Header_P4[25]}]
#set_property PACKAGE_PIN A5 [get_ports {Header_P4[26]}]
#set_property PACKAGE_PIN A6 [get_ports {Header_P4[27]}]
#set_property PACKAGE_PIN C7 [get_ports {Header_P4[28]}]
#set_property PACKAGE_PIN D8 [get_ports {Header_P4[29]}]
#set_property PACKAGE_PIN D7 [get_ports {Header_P4[30]}]
#set_property PACKAGE_PIN E7 [get_ports {Header_P4[31]}]
#set_property PACKAGE_PIN D4 [get_ports {Header_P4[32]}]
#set_property PACKAGE_PIN D5 [get_ports {Header_P4[33]}]



create_clock -period 16.667 -name ftdi_clk -waveform {0.000 8.333} [get_ports ftdi_clk]



set_clock_groups -asynchronous -group [get_clocks sys_clk] -group [get_clocks ftdi_clk]
set_clock_groups -asynchronous -group [get_clocks ftdi_clk] -group [get_clocks sys_clk]
