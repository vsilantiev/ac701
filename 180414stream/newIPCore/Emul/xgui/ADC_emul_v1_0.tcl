#Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
	set Page0 [ ipgui::add_page $IPINST  -name "Page 0" -layout vertical]
	set Component_Name [ ipgui::add_param  $IPINST  -parent  $Page0  -name Component_Name ]
	set accPP [ipgui::add_param $IPINST -parent $Page0 -name accPP]
	set WIDTH [ipgui::add_param $IPINST -parent $Page0 -name WIDTH]
}

proc update_PARAM_VALUE.accPP { PARAM_VALUE.accPP } {
	# Procedure called to update accPP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.accPP { PARAM_VALUE.accPP } {
	# Procedure called to validate accPP
	return true
}

proc update_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to update WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to validate WIDTH
	return true
}


proc update_MODELPARAM_VALUE.WIDTH { MODELPARAM_VALUE.WIDTH PARAM_VALUE.WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WIDTH}] ${MODELPARAM_VALUE.WIDTH}
}

proc update_MODELPARAM_VALUE.accPP { MODELPARAM_VALUE.accPP PARAM_VALUE.accPP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.accPP}] ${MODELPARAM_VALUE.accPP}
}

