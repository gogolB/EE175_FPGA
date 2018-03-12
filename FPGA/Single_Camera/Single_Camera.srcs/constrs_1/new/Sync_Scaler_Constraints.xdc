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


set_property IOSTANDARD LVCMOS33 [get_ports {vsync}]
set_property IOSTANDARD LVCMOS33 [get_ports {href}]
set_property IOSTANDARD LVCMOS33 [get_ports {pclk}]

set_property PACKAGE_PIN G1 [get_ports {vsync}]
set_property PACKAGE_PIN H1 [get_ports {href}]
set_property PACKAGE_PIN D5 [get_ports {pclk}]

set_property IOSTANDARD LVCMOS33 [get_ports {scl}]
set_property IOSTANDARD LVCMOS33 [get_ports {sda}]
set_property IOSTANDARD LVCMOS33 [get_ports {xclk}]

set_property PACKAGE_PIN D3 [get_ports {scl}]
set_property PACKAGE_PIN E3 [get_ports {sda}]
#set_property PIO_DIRECTION "BIDIR" [get_ports {sda1}]
set_property PACKAGE_PIN P17 [get_ports {xclk}]

set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_byte[7]}]

set_property PACKAGE_PIN H6 [get_ports {cam_byte[0]}]
set_property PACKAGE_PIN G6 [get_ports {cam_byte[1]}]
set_property PACKAGE_PIN H5 [get_ports {cam_byte[2]}]
set_property PACKAGE_PIN F6 [get_ports {cam_byte[3]}]
set_property PACKAGE_PIN G4 [get_ports {cam_byte[4]}]
set_property PACKAGE_PIN J4 [get_ports {cam_byte[5]}]
set_property PACKAGE_PIN G3 [get_ports {cam_byte[6]}]
set_property PACKAGE_PIN H4 [get_ports {cam_byte[7]}]

#####################################################################
#                          DDR3       : MT41J128M16XX-125           #
#                          Frequency  : 400 MHz                     #
#                          Data Width : 16                          #
#####################################################################

# PadFunction: IO_L23P_T3_34 
set_property SLEW FAST [get_ports {ddr3_dq[0]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[0]}]
set_property PACKAGE_PIN R7 [get_ports {ddr3_dq[0]}]

# PadFunction: IO_L20N_T3_34 
set_property SLEW FAST [get_ports {ddr3_dq[1]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[1]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[1]}]
set_property PACKAGE_PIN V6 [get_ports {ddr3_dq[1]}]

# PadFunction: IO_L24P_T3_34 
set_property SLEW FAST [get_ports {ddr3_dq[2]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[2]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[2]}]
set_property PACKAGE_PIN R8 [get_ports {ddr3_dq[2]}]

# PadFunction: IO_L22P_T3_34 
set_property SLEW FAST [get_ports {ddr3_dq[3]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[3]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[3]}]
set_property PACKAGE_PIN U7 [get_ports {ddr3_dq[3]}]

# PadFunction: IO_L20P_T3_34 
set_property SLEW FAST [get_ports {ddr3_dq[4]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[4]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[4]}]
set_property PACKAGE_PIN V7 [get_ports {ddr3_dq[4]}]

# PadFunction: IO_L19P_T3_34 
set_property SLEW FAST [get_ports {ddr3_dq[5]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[5]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[5]}]
set_property PACKAGE_PIN R6 [get_ports {ddr3_dq[5]}]

# PadFunction: IO_L22N_T3_34 
set_property SLEW FAST [get_ports {ddr3_dq[6]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[6]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[6]}]
set_property PACKAGE_PIN U6 [get_ports {ddr3_dq[6]}]

# PadFunction: IO_L19N_T3_VREF_34 
set_property SLEW FAST [get_ports {ddr3_dq[7]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[7]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[7]}]
set_property PACKAGE_PIN R5 [get_ports {ddr3_dq[7]}]

# PadFunction: IO_L12P_T1_MRCC_34 
set_property SLEW FAST [get_ports {ddr3_dq[8]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[8]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[8]}]
set_property PACKAGE_PIN T5 [get_ports {ddr3_dq[8]}]

# PadFunction: IO_L8N_T1_34 
set_property SLEW FAST [get_ports {ddr3_dq[9]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[9]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[9]}]
set_property PACKAGE_PIN U3 [get_ports {ddr3_dq[9]}]

# PadFunction: IO_L10P_T1_34 
set_property SLEW FAST [get_ports {ddr3_dq[10]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[10]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[10]}]
set_property PACKAGE_PIN V5 [get_ports {ddr3_dq[10]}]

# PadFunction: IO_L8P_T1_34 
set_property SLEW FAST [get_ports {ddr3_dq[11]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[11]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[11]}]
set_property PACKAGE_PIN U4 [get_ports {ddr3_dq[11]}]

# PadFunction: IO_L10N_T1_34 
set_property SLEW FAST [get_ports {ddr3_dq[12]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[12]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[12]}]
set_property PACKAGE_PIN V4 [get_ports {ddr3_dq[12]}]

# PadFunction: IO_L12N_T1_MRCC_34 
set_property SLEW FAST [get_ports {ddr3_dq[13]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[13]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[13]}]
set_property PACKAGE_PIN T4 [get_ports {ddr3_dq[13]}]

# PadFunction: IO_L7N_T1_34 
set_property SLEW FAST [get_ports {ddr3_dq[14]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[14]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[14]}]
set_property PACKAGE_PIN V1 [get_ports {ddr3_dq[14]}]

# PadFunction: IO_L11N_T1_SRCC_34 
set_property SLEW FAST [get_ports {ddr3_dq[15]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[15]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[15]}]
set_property PACKAGE_PIN T3 [get_ports {ddr3_dq[15]}]

# PadFunction: IO_L2P_T0_34 
set_property SLEW FAST [get_ports {ddr3_addr[13]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[13]}]
set_property PACKAGE_PIN K3 [get_ports {ddr3_addr[13]}]

# PadFunction: IO_L18N_T2_34 
set_property SLEW FAST [get_ports {ddr3_addr[12]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[12]}]
set_property PACKAGE_PIN N6 [get_ports {ddr3_addr[12]}]

# PadFunction: IO_L5P_T0_34 
set_property SLEW FAST [get_ports {ddr3_addr[11]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[11]}]
set_property PACKAGE_PIN K5 [get_ports {ddr3_addr[11]}]

# PadFunction: IO_L15N_T2_DQS_34 
set_property SLEW FAST [get_ports {ddr3_addr[10]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[10]}]
set_property PACKAGE_PIN R2 [get_ports {ddr3_addr[10]}]

# PadFunction: IO_L13P_T2_MRCC_34 
set_property SLEW FAST [get_ports {ddr3_addr[9]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[9]}]
set_property PACKAGE_PIN N5 [get_ports {ddr3_addr[9]}]

# PadFunction: IO_L5N_T0_34 
set_property SLEW FAST [get_ports {ddr3_addr[8]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[8]}]
set_property PACKAGE_PIN L4 [get_ports {ddr3_addr[8]}]

# PadFunction: IO_L3N_T0_DQS_34 
set_property SLEW FAST [get_ports {ddr3_addr[7]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[7]}]
set_property PACKAGE_PIN N1 [get_ports {ddr3_addr[7]}]

# PadFunction: IO_L4N_T0_34 
set_property SLEW FAST [get_ports {ddr3_addr[6]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[6]}]
set_property PACKAGE_PIN M2 [get_ports {ddr3_addr[6]}]

# PadFunction: IO_L13N_T2_MRCC_34 
set_property SLEW FAST [get_ports {ddr3_addr[5]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[5]}]
set_property PACKAGE_PIN P5 [get_ports {ddr3_addr[5]}]

# PadFunction: IO_L2N_T0_34 
set_property SLEW FAST [get_ports {ddr3_addr[4]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[4]}]
set_property PACKAGE_PIN L3 [get_ports {ddr3_addr[4]}]

# PadFunction: IO_L17N_T2_34 
set_property SLEW FAST [get_ports {ddr3_addr[3]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[3]}]
set_property PACKAGE_PIN T1 [get_ports {ddr3_addr[3]}]

# PadFunction: IO_L18P_T2_34 
set_property SLEW FAST [get_ports {ddr3_addr[2]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[2]}]
set_property PACKAGE_PIN M6 [get_ports {ddr3_addr[2]}]

# PadFunction: IO_L14P_T2_SRCC_34 
set_property SLEW FAST [get_ports {ddr3_addr[1]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[1]}]
set_property PACKAGE_PIN P4 [get_ports {ddr3_addr[1]}]

# PadFunction: IO_L16P_T2_34 
set_property SLEW FAST [get_ports {ddr3_addr[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[0]}]
set_property PACKAGE_PIN M4 [get_ports {ddr3_addr[0]}]

# PadFunction: IO_L17P_T2_34 
set_property SLEW FAST [get_ports {ddr3_ba[2]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ba[2]}]
set_property PACKAGE_PIN R1 [get_ports {ddr3_ba[2]}]

# PadFunction: IO_L14N_T2_SRCC_34 
set_property SLEW FAST [get_ports {ddr3_ba[1]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ba[1]}]
set_property PACKAGE_PIN P3 [get_ports {ddr3_ba[1]}]

# PadFunction: IO_L15P_T2_DQS_34 
set_property SLEW FAST [get_ports {ddr3_ba[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ba[0]}]
set_property PACKAGE_PIN P2 [get_ports {ddr3_ba[0]}]

# PadFunction: IO_L16N_T2_34 
set_property SLEW FAST [get_ports {ddr3_ras_n}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ras_n}]
set_property PACKAGE_PIN N4 [get_ports {ddr3_ras_n}]

# PadFunction: IO_L1P_T0_34 
set_property SLEW FAST [get_ports {ddr3_cas_n}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_cas_n}]
set_property PACKAGE_PIN L1 [get_ports {ddr3_cas_n}]

# PadFunction: IO_L3P_T0_DQS_34 
set_property SLEW FAST [get_ports {ddr3_we_n}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_we_n}]
set_property PACKAGE_PIN N2 [get_ports {ddr3_we_n}]

# PadFunction: IO_25_34 
set_property SLEW FAST [get_ports {ddr3_reset_n}]
set_property IOSTANDARD LVCMOS15 [get_ports {ddr3_reset_n}]
set_property PACKAGE_PIN U8 [get_ports {ddr3_reset_n}]

# PadFunction: IO_L1N_T0_34 
set_property SLEW FAST [get_ports {ddr3_cke[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_cke[0]}]
set_property PACKAGE_PIN M1 [get_ports {ddr3_cke[0]}]

# PadFunction: IO_L4P_T0_34 
set_property SLEW FAST [get_ports {ddr3_odt[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_odt[0]}]
set_property PACKAGE_PIN M3 [get_ports {ddr3_odt[0]}]

# PadFunction: IO_0_34 
set_property SLEW FAST [get_ports {ddr3_cs_n[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_cs_n[0]}]
set_property PACKAGE_PIN K6 [get_ports {ddr3_cs_n[0]}]

# PadFunction: IO_L23N_T3_34 
set_property SLEW FAST [get_ports {ddr3_dm[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[0]}]
set_property PACKAGE_PIN T6 [get_ports {ddr3_dm[0]}]

# PadFunction: IO_L7P_T1_34 
set_property SLEW FAST [get_ports {ddr3_dm[1]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[1]}]
set_property PACKAGE_PIN U1 [get_ports {ddr3_dm[1]}]

# PadFunction: IO_L21P_T3_DQS_34 
set_property SLEW FAST [get_ports {ddr3_dqs_p[0]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dqs_p[0]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_dqs_p[0]}]
set_property PACKAGE_PIN U9 [get_ports {ddr3_dqs_p[0]}]

# PadFunction: IO_L21N_T3_DQS_34 
set_property SLEW FAST [get_ports {ddr3_dqs_n[0]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dqs_n[0]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_dqs_n[0]}]
set_property PACKAGE_PIN V9 [get_ports {ddr3_dqs_n[0]}]

# PadFunction: IO_L9P_T1_DQS_34 
set_property SLEW FAST [get_ports {ddr3_dqs_p[1]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dqs_p[1]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_dqs_p[1]}]
set_property PACKAGE_PIN U2 [get_ports {ddr3_dqs_p[1]}]

# PadFunction: IO_L9N_T1_DQS_34 
set_property SLEW FAST [get_ports {ddr3_dqs_n[1]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dqs_n[1]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_dqs_n[1]}]
set_property PACKAGE_PIN V2 [get_ports {ddr3_dqs_n[1]}]

# PadFunction: IO_L6P_T0_34 
set_property SLEW FAST [get_ports {ddr3_ck_p[0]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_ck_p[0]}]
set_property PACKAGE_PIN L6 [get_ports {ddr3_ck_p[0]}]

# PadFunction: IO_L6N_T0_VREF_34 
set_property SLEW FAST [get_ports {ddr3_ck_n[0]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_ck_n[0]}]
set_property PACKAGE_PIN L5 [get_ports {ddr3_ck_n[0]}]



create_clock -period 16.667 -name ftdi_clk -waveform {0.000 8.333} [get_ports ftdi_clk]



set_clock_groups -asynchronous -group [get_clocks sys_clk] -group [get_clocks ftdi_clk]
set_clock_groups -asynchronous -group [get_clocks ftdi_clk] -group [get_clocks sys_clk]