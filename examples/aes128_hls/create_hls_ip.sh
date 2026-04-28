#!/bin/sh

vitis_hls -f ../ip_repo/aes128_hls/create_ip.tcl 
#vitis_hls -f ../ip_repo/aes128_hls/create_ip.tcl -- target-board=cw305
#vitis_hls -f ../ip_repo/aes128_hls/create_ip.tcl -tclargs "target-board=cw305"