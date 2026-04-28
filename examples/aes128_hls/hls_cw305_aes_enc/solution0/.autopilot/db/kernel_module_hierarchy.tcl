set ModuleHierarchy {[{
"Name" : "AES128Encrypt","ID" : "0","Type" : "sequential",
"SubLoops" : [
	{"Name" : "LOOP_ROUND","ID" : "1","Type" : "pipeline",
	"SubInsts" : [
	{"Name" : "grp_Sbox_fu_424","ID" : "2","Type" : "pipeline"},
	{"Name" : "grp_Sbox_fu_429","ID" : "3","Type" : "pipeline"},
	{"Name" : "grp_Sbox_fu_434","ID" : "4","Type" : "pipeline"},
	{"Name" : "grp_Sbox_fu_439","ID" : "5","Type" : "pipeline"},
	{"Name" : "state_117_Sbox_fu_444","ID" : "6","Type" : "pipeline"},
	{"Name" : "state_118_Sbox_fu_449","ID" : "7","Type" : "pipeline"},
	{"Name" : "state_119_Sbox_fu_454","ID" : "8","Type" : "pipeline"},
	{"Name" : "state_120_Sbox_fu_459","ID" : "9","Type" : "pipeline"},
	{"Name" : "state_121_Sbox_fu_464","ID" : "10","Type" : "pipeline"},
	{"Name" : "state_122_Sbox_fu_469","ID" : "11","Type" : "pipeline"},
	{"Name" : "state_123_Sbox_fu_474","ID" : "12","Type" : "pipeline"},
	{"Name" : "state_124_Sbox_fu_479","ID" : "13","Type" : "pipeline"},
	{"Name" : "state_125_Sbox_fu_484","ID" : "14","Type" : "pipeline"},
	{"Name" : "state_126_Sbox_fu_489","ID" : "15","Type" : "pipeline"},
	{"Name" : "state_127_Sbox_fu_494","ID" : "16","Type" : "pipeline"},
	{"Name" : "state_128_Sbox_fu_499","ID" : "17","Type" : "pipeline"},
	{"Name" : "call_ret_MixColumns_fu_504","ID" : "18","Type" : "pipeline"},]},]
}]}