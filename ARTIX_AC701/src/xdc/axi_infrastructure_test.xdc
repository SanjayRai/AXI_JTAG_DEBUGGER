create_clock -period 5.000 -name SYS_CLK -waveform {0.000 2.500} [get_ports CLK_P]

set_property PACKAGE_PIN R3 [get_ports CLK_P]
set_property IOSTANDARD DIFF_SSTL15 [get_ports CLK_P]

# Vivado Generated IO constraints 

set_property IOSTANDARD LVCMOS15 [get_ports RESET]
set_property PACKAGE_PIN U4 [get_ports RESET]

# Vivado Generated physical constraints 


set_property IOSTANDARD LVCMOS33 [get_ports AC701_LEDS[*]]
set_property PACKAGE_PIN M26  [get_ports AC701_LEDS[0]]
set_property PACKAGE_PIN T24  [get_ports AC701_LEDS[1]]
set_property PACKAGE_PIN T25  [get_ports AC701_LEDS[2]]
set_property PACKAGE_PIN R26  [get_ports AC701_LEDS[3]]

