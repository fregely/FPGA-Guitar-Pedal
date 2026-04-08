set ModuleHierarchy {[{
"Name" : "pedal_top","ID" : "0","Type" : "sequential",
"SubLoops" : [
	{"Name" : "VITIS_LOOP_32_1","ID" : "1","Type" : "pipeline",
	"SubInsts" : [
	{"Name" : "grp_soft_clipping_distortion_fu_800","ID" : "2","Type" : "pipeline",
			"SubInsts" : [
			{"Name" : "grp_generic_tanh_float_s_fu_228","ID" : "3","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "grp_exp_generic_double_s_fu_89","ID" : "4","Type" : "pipeline"},]},]},
	{"Name" : "grp_generic_fmod_mult_float_s_fu_811","ID" : "5","Type" : "pipeline",
			"SubInsts" : [
			{"Name" : "grp_mod_rcp_mult_24_36_8_s_fu_97","ID" : "6","Type" : "pipeline"},]},
	{"Name" : "grp_tremolo_fu_816","ID" : "7","Type" : "pipeline"},]},]
}]}