# Set DCI_CASCADE          
set_property slave_banks {32 34} [get_iobanks 33]

create_clock -period 5.000 -name SYS_CLK -waveform {0.000 2.500} [get_ports CLK_P]

set_property PACKAGE_PIN AD11 [get_ports CLK_N]
set_property PACKAGE_PIN AD12 [get_ports CLK_P]

set_property IOSTANDARD LVDS [get_ports CLK_P]
set_property IOSTANDARD LVDS [get_ports CLK_N]

# Vivado Generated IO constraints 

set_property IOSTANDARD LVCMOS15 [get_ports RESET]

# Vivado Generated physical constraints 

set_property PACKAGE_PIN AB12 [get_ports RESET]
set_property PACKAGE_PIN L26 [get_ports FAN_PWM]
set_property IOSTANDARD LVCMOS25 [get_ports FAN_PWM]

set_property IOSTANDARD LVCMOS15 [get_ports KC705_LEDS[*]]
set_property PACKAGE_PIN AB8  [get_ports KC705_LEDS[0]]
set_property PACKAGE_PIN AA8  [get_ports KC705_LEDS[1]]
set_property PACKAGE_PIN AC9  [get_ports KC705_LEDS[2]]
set_property PACKAGE_PIN AB9  [get_ports KC705_LEDS[3]]
set_property PACKAGE_PIN AE26 [get_ports KC705_LEDS[4]]
set_property PACKAGE_PIN G19  [get_ports KC705_LEDS[5]]
set_property PACKAGE_PIN E18  [get_ports KC705_LEDS[6]]
set_property PACKAGE_PIN F16  [get_ports KC705_LEDS[7]]
