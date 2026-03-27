// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XAUDIO_PASSTHROUGH_H
#define XAUDIO_PASSTHROUGH_H

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
#include "xaudio_passthrough_hw.h"

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
    u64 Control_BaseAddress;
} XAudio_passthrough_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XAudio_passthrough;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAudio_passthrough_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAudio_passthrough_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAudio_passthrough_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAudio_passthrough_ReadReg(BaseAddress, RegOffset) \
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
int XAudio_passthrough_Initialize(XAudio_passthrough *InstancePtr, UINTPTR BaseAddress);
XAudio_passthrough_Config* XAudio_passthrough_LookupConfig(UINTPTR BaseAddress);
#else
int XAudio_passthrough_Initialize(XAudio_passthrough *InstancePtr, u16 DeviceId);
XAudio_passthrough_Config* XAudio_passthrough_LookupConfig(u16 DeviceId);
#endif
int XAudio_passthrough_CfgInitialize(XAudio_passthrough *InstancePtr, XAudio_passthrough_Config *ConfigPtr);
#else
int XAudio_passthrough_Initialize(XAudio_passthrough *InstancePtr, const char* InstanceName);
int XAudio_passthrough_Release(XAudio_passthrough *InstancePtr);
#endif

void XAudio_passthrough_Start(XAudio_passthrough *InstancePtr);
u32 XAudio_passthrough_IsDone(XAudio_passthrough *InstancePtr);
u32 XAudio_passthrough_IsIdle(XAudio_passthrough *InstancePtr);
u32 XAudio_passthrough_IsReady(XAudio_passthrough *InstancePtr);
void XAudio_passthrough_EnableAutoRestart(XAudio_passthrough *InstancePtr);
void XAudio_passthrough_DisableAutoRestart(XAudio_passthrough *InstancePtr);


void XAudio_passthrough_InterruptGlobalEnable(XAudio_passthrough *InstancePtr);
void XAudio_passthrough_InterruptGlobalDisable(XAudio_passthrough *InstancePtr);
void XAudio_passthrough_InterruptEnable(XAudio_passthrough *InstancePtr, u32 Mask);
void XAudio_passthrough_InterruptDisable(XAudio_passthrough *InstancePtr, u32 Mask);
void XAudio_passthrough_InterruptClear(XAudio_passthrough *InstancePtr, u32 Mask);
u32 XAudio_passthrough_InterruptGetEnabled(XAudio_passthrough *InstancePtr);
u32 XAudio_passthrough_InterruptGetStatus(XAudio_passthrough *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
