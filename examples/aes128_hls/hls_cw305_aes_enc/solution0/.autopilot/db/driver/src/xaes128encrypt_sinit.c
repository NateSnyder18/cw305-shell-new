// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xaes128encrypt.h"

extern XAes128encrypt_Config XAes128encrypt_ConfigTable[];

XAes128encrypt_Config *XAes128encrypt_LookupConfig(u16 DeviceId) {
	XAes128encrypt_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XAES128ENCRYPT_NUM_INSTANCES; Index++) {
		if (XAes128encrypt_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAes128encrypt_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAes128encrypt_Initialize(XAes128encrypt *InstancePtr, u16 DeviceId) {
	XAes128encrypt_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAes128encrypt_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAes128encrypt_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

