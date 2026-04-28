
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set key__plaintext__ciphertext_group [add_wave_group key__plaintext__ciphertext(axi_master) -into $cinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $key__plaintext__ciphertext_group]
set wdata_group [add_wave_group "Write Channel" -into $key__plaintext__ciphertext_group]
set ctrl_group [add_wave_group "Handshakes" -into $key__plaintext__ciphertext_group]
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_BUSER -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_BID -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_BRESP -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_RRESP -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_RUSER -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_RID -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_RDATA -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_ARUSER -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_ARREGION -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_ARQOS -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_ARPROT -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_ARBURST -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_ARLEN -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_ARID -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_ARADDR -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_WUSER -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_WID -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_WSTRB -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_WDATA -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_AWUSER -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_AWREGION -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_AWQOS -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_AWPROT -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_AWBURST -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_AWLEN -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_AWID -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_AWADDR -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/m_axi_data_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set key__plaintext__ciphertext__return_group [add_wave_group key__plaintext__ciphertext__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/interrupt -into $key__plaintext__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/s_axi_control_BRESP -into $key__plaintext__ciphertext__return_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/s_axi_control_BREADY -into $key__plaintext__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/s_axi_control_BVALID -into $key__plaintext__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/s_axi_control_RRESP -into $key__plaintext__ciphertext__return_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/s_axi_control_RDATA -into $key__plaintext__ciphertext__return_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/s_axi_control_RREADY -into $key__plaintext__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/s_axi_control_RVALID -into $key__plaintext__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/s_axi_control_ARREADY -into $key__plaintext__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/s_axi_control_ARVALID -into $key__plaintext__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/s_axi_control_ARADDR -into $key__plaintext__ciphertext__return_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/s_axi_control_WSTRB -into $key__plaintext__ciphertext__return_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/s_axi_control_WDATA -into $key__plaintext__ciphertext__return_group -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/s_axi_control_WREADY -into $key__plaintext__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/s_axi_control_WVALID -into $key__plaintext__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/s_axi_control_AWREADY -into $key__plaintext__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/s_axi_control_AWVALID -into $key__plaintext__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/s_axi_control_AWADDR -into $key__plaintext__ciphertext__return_group -radix hex
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_AES128Encrypt_top/AESL_inst_AES128Encrypt/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_AES128Encrypt_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_AES128Encrypt_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_AES128Encrypt_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_AES128Encrypt_top/LENGTH_ciphertext -into $tb_portdepth_group -radix hex
add_wave /apatb_AES128Encrypt_top/LENGTH_data -into $tb_portdepth_group -radix hex
add_wave /apatb_AES128Encrypt_top/LENGTH_key -into $tb_portdepth_group -radix hex
add_wave /apatb_AES128Encrypt_top/LENGTH_plaintext -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_key__plaintext__ciphertext_group [add_wave_group key__plaintext__ciphertext(axi_master) -into $tbcinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_key__plaintext__ciphertext_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_key__plaintext__ciphertext_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_key__plaintext__ciphertext_group]
add_wave /apatb_AES128Encrypt_top/data_BUSER -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_BID -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_BRESP -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/data_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/data_RRESP -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_RUSER -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_RID -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/data_RDATA -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/data_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/data_ARUSER -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_ARREGION -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_ARQOS -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_ARPROT -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_ARBURST -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_ARLEN -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_ARID -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_ARADDR -into $rdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/data_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/data_WUSER -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_WID -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/data_WSTRB -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_WDATA -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/data_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/data_AWUSER -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_AWREGION -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_AWQOS -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_AWPROT -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_AWBURST -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_AWLEN -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_AWID -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_AWADDR -into $wdata_group -radix hex
add_wave /apatb_AES128Encrypt_top/data_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/data_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tb_key__plaintext__ciphertext__return_group [add_wave_group key__plaintext__ciphertext__return(axi_slave) -into $tbcinoutgroup]
add_wave /apatb_AES128Encrypt_top/control_INTERRUPT -into $tb_key__plaintext__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/control_BRESP -into $tb_key__plaintext__ciphertext__return_group -radix hex
add_wave /apatb_AES128Encrypt_top/control_BREADY -into $tb_key__plaintext__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/control_BVALID -into $tb_key__plaintext__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/control_RRESP -into $tb_key__plaintext__ciphertext__return_group -radix hex
add_wave /apatb_AES128Encrypt_top/control_RDATA -into $tb_key__plaintext__ciphertext__return_group -radix hex
add_wave /apatb_AES128Encrypt_top/control_RREADY -into $tb_key__plaintext__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/control_RVALID -into $tb_key__plaintext__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/control_ARREADY -into $tb_key__plaintext__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/control_ARVALID -into $tb_key__plaintext__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/control_ARADDR -into $tb_key__plaintext__ciphertext__return_group -radix hex
add_wave /apatb_AES128Encrypt_top/control_WSTRB -into $tb_key__plaintext__ciphertext__return_group -radix hex
add_wave /apatb_AES128Encrypt_top/control_WDATA -into $tb_key__plaintext__ciphertext__return_group -radix hex
add_wave /apatb_AES128Encrypt_top/control_WREADY -into $tb_key__plaintext__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/control_WVALID -into $tb_key__plaintext__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/control_AWREADY -into $tb_key__plaintext__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/control_AWVALID -into $tb_key__plaintext__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES128Encrypt_top/control_AWADDR -into $tb_key__plaintext__ciphertext__return_group -radix hex
save_wave_config AES128Encrypt.wcfg
run all
quit

