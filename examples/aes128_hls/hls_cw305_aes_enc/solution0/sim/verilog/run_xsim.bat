
set PATH=
call C:/Xilinx/Vivado/2023.1/bin/xelab xil_defaultlib.apatb_AES128Encrypt_top glbl -Oenable_linking_all_libraries  -prj AES128Encrypt.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_1_15 -L floating_point_v7_0_20 --lib "ieee_proposed=./ieee_proposed" -s AES128Encrypt -debug all
call C:/Xilinx/Vivado/2023.1/bin/xsim --noieeewarnings AES128Encrypt -tclbatch AES128Encrypt.tcl -view AES128Encrypt_dataflow_ana.wcfg -protoinst AES128Encrypt.protoinst

