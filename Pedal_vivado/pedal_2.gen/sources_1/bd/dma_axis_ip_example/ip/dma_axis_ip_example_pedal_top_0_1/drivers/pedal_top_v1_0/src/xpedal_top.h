// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XPEDAL_TOP_H
#define XPEDAL_TOP_H

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
#include "xpedal_top_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Ctrl_BaseAddress;
} XPedal_top_Config;
#endif

typedef struct {
    u64 Ctrl_BaseAddress;
    u32 IsReady;
} XPedal_top;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XPedal_top_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XPedal_top_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XPedal_top_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XPedal_top_ReadReg(BaseAddress, RegOffset) \
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
#ifdef SDT
int XPedal_top_Initialize(XPedal_top *InstancePtr, UINTPTR BaseAddress);
XPedal_top_Config* XPedal_top_LookupConfig(UINTPTR BaseAddress);
#else
int XPedal_top_Initialize(XPedal_top *InstancePtr, u16 DeviceId);
XPedal_top_Config* XPedal_top_LookupConfig(u16 DeviceId);
#endif
int XPedal_top_CfgInitialize(XPedal_top *InstancePtr, XPedal_top_Config *ConfigPtr);
#else
int XPedal_top_Initialize(XPedal_top *InstancePtr, const char* InstanceName);
int XPedal_top_Release(XPedal_top *InstancePtr);
#endif

void XPedal_top_Start(XPedal_top *InstancePtr);
u32 XPedal_top_IsDone(XPedal_top *InstancePtr);
u32 XPedal_top_IsIdle(XPedal_top *InstancePtr);
u32 XPedal_top_IsReady(XPedal_top *InstancePtr);
void XPedal_top_EnableAutoRestart(XPedal_top *InstancePtr);
void XPedal_top_DisableAutoRestart(XPedal_top *InstancePtr);

void XPedal_top_Set_switches(XPedal_top *InstancePtr, u32 Data);
u32 XPedal_top_Get_switches(XPedal_top *InstancePtr);

void XPedal_top_InterruptGlobalEnable(XPedal_top *InstancePtr);
void XPedal_top_InterruptGlobalDisable(XPedal_top *InstancePtr);
void XPedal_top_InterruptEnable(XPedal_top *InstancePtr, u32 Mask);
void XPedal_top_InterruptDisable(XPedal_top *InstancePtr, u32 Mask);
void XPedal_top_InterruptClear(XPedal_top *InstancePtr, u32 Mask);
u32 XPedal_top_InterruptGetEnabled(XPedal_top *InstancePtr);
u32 XPedal_top_InterruptGetStatus(XPedal_top *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
