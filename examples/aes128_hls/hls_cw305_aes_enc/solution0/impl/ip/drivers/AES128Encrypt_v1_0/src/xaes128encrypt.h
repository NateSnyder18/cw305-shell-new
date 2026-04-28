// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XAES128ENCRYPT_H
#define XAES128ENCRYPT_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xaes128encrypt_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XAes128encrypt_Config;
#endif

typedef struct {
    u32 Control_BaseAddress;
    u32 IsReady;
} XAes128encrypt;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAes128encrypt_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAes128encrypt_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAes128encrypt_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAes128encrypt_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XAes128encrypt_Initialize(XAes128encrypt *InstancePtr, u16 DeviceId);
XAes128encrypt_Config* XAes128encrypt_LookupConfig(u16 DeviceId);
int XAes128encrypt_CfgInitialize(XAes128encrypt *InstancePtr, XAes128encrypt_Config *ConfigPtr);
#else
int XAes128encrypt_Initialize(XAes128encrypt *InstancePtr, const char* InstanceName);
int XAes128encrypt_Release(XAes128encrypt *InstancePtr);
#endif

void XAes128encrypt_Start(XAes128encrypt *InstancePtr);
u32 XAes128encrypt_IsDone(XAes128encrypt *InstancePtr);
u32 XAes128encrypt_IsIdle(XAes128encrypt *InstancePtr);
u32 XAes128encrypt_IsReady(XAes128encrypt *InstancePtr);
void XAes128encrypt_Continue(XAes128encrypt *InstancePtr);
void XAes128encrypt_EnableAutoRestart(XAes128encrypt *InstancePtr);
void XAes128encrypt_DisableAutoRestart(XAes128encrypt *InstancePtr);

void XAes128encrypt_Set_key(XAes128encrypt *InstancePtr, u32 Data);
u32 XAes128encrypt_Get_key(XAes128encrypt *InstancePtr);
void XAes128encrypt_Set_plaintext(XAes128encrypt *InstancePtr, u32 Data);
u32 XAes128encrypt_Get_plaintext(XAes128encrypt *InstancePtr);
void XAes128encrypt_Set_ciphertext(XAes128encrypt *InstancePtr, u32 Data);
u32 XAes128encrypt_Get_ciphertext(XAes128encrypt *InstancePtr);

void XAes128encrypt_InterruptGlobalEnable(XAes128encrypt *InstancePtr);
void XAes128encrypt_InterruptGlobalDisable(XAes128encrypt *InstancePtr);
void XAes128encrypt_InterruptEnable(XAes128encrypt *InstancePtr, u32 Mask);
void XAes128encrypt_InterruptDisable(XAes128encrypt *InstancePtr, u32 Mask);
void XAes128encrypt_InterruptClear(XAes128encrypt *InstancePtr, u32 Mask);
u32 XAes128encrypt_InterruptGetEnabled(XAes128encrypt *InstancePtr);
u32 XAes128encrypt_InterruptGetStatus(XAes128encrypt *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
