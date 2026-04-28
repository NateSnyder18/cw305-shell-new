// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xaes128encrypt.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAes128encrypt_CfgInitialize(XAes128encrypt *InstancePtr, XAes128encrypt_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAes128encrypt_Start(XAes128encrypt *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes128encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XAes128encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAes128encrypt_IsDone(XAes128encrypt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes128encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAes128encrypt_IsIdle(XAes128encrypt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes128encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAes128encrypt_IsReady(XAes128encrypt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes128encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAes128encrypt_Continue(XAes128encrypt *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes128encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XAes128encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XAes128encrypt_EnableAutoRestart(XAes128encrypt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes128encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XAes128encrypt_DisableAutoRestart(XAes128encrypt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes128encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_AP_CTRL, 0);
}

void XAes128encrypt_Set_key(XAes128encrypt *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes128encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_KEY_DATA, Data);
}

u32 XAes128encrypt_Get_key(XAes128encrypt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes128encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_KEY_DATA);
    return Data;
}

void XAes128encrypt_Set_plaintext(XAes128encrypt *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes128encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_PLAINTEXT_DATA, Data);
}

u32 XAes128encrypt_Get_plaintext(XAes128encrypt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes128encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_PLAINTEXT_DATA);
    return Data;
}

void XAes128encrypt_Set_ciphertext(XAes128encrypt *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes128encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_CIPHERTEXT_DATA, Data);
}

u32 XAes128encrypt_Get_ciphertext(XAes128encrypt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes128encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_CIPHERTEXT_DATA);
    return Data;
}

void XAes128encrypt_InterruptGlobalEnable(XAes128encrypt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes128encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_GIE, 1);
}

void XAes128encrypt_InterruptGlobalDisable(XAes128encrypt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes128encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_GIE, 0);
}

void XAes128encrypt_InterruptEnable(XAes128encrypt *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAes128encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_IER);
    XAes128encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_IER, Register | Mask);
}

void XAes128encrypt_InterruptDisable(XAes128encrypt *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAes128encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_IER);
    XAes128encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XAes128encrypt_InterruptClear(XAes128encrypt *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes128encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_ISR, Mask);
}

u32 XAes128encrypt_InterruptGetEnabled(XAes128encrypt *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAes128encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_IER);
}

u32 XAes128encrypt_InterruptGetStatus(XAes128encrypt *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAes128encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAES128ENCRYPT_CONTROL_ADDR_ISR);
}

