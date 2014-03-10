#Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
	set Page0 [ ipgui::add_page $IPINST  -name "Page 0" -layout vertical]
	set Component_Name [ ipgui::add_param  $IPINST  -parent  $Page0  -name Component_Name ]
	set AXI4_MM_DATA_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name AXI4_MM_DATA_WIDTH]
	set AXI4_LITE_DATA_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name AXI4_LITE_DATA_WIDTH]
}

proc update_PARAM_VALUE.AXI4_MM_DATA_WIDTH { PARAM_VALUE.AXI4_MM_DATA_WIDTH } {
	# Procedure called to update AXI4_MM_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI4_MM_DATA_WIDTH { PARAM_VALUE.AXI4_MM_DATA_WIDTH } {
	# Procedure called to validate AXI4_MM_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI4_LITE_DATA_WIDTH { PARAM_VALUE.AXI4_LITE_DATA_WIDTH } {
	# Procedure called to update AXI4_LITE_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI4_LITE_DATA_WIDTH { PARAM_VALUE.AXI4_LITE_DATA_WIDTH } {
	# Procedure called to validate AXI4_LITE_DATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.AXI4_LITE_DATA_WIDTH { MODELPARAM_VALUE.AXI4_LITE_DATA_WIDTH PARAM_VALUE.AXI4_LITE_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI4_LITE_DATA_WIDTH}] ${MODELPARAM_VALUE.AXI4_LITE_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI4_MM_DATA_WIDTH { MODELPARAM_VALUE.AXI4_MM_DATA_WIDTH PARAM_VALUE.AXI4_MM_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI4_MM_DATA_WIDTH}] ${MODELPARAM_VALUE.AXI4_MM_DATA_WIDTH}
}

