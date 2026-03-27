// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xaudio_passthrough.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAudio_passthrough_CfgInitialize(XAudio_passthrough *InstancePtr, XAudio_passthrough_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAudio_passthrough_Start(XAudio_passthrough *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAudio_passthrough_ReadReg(InstancePtr->Control_BaseAddress, XAUDIO_PASSTHROUGH_CONTROL_ADDR_AP_CTRL) & 0x80;
    XAudio_passthrough_WriteReg(InstancePtr->Control_BaseAddress, XAUDIO_PASSTHROUGH_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAudio_passthrough_IsDone(XAudio_passthrough *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAudio_passthrough_ReadReg(InstancePtr->Control_BaseAddress, XAUDIO_PASSTHROUGH_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAudio_passthrough_IsIdle(XAudio_passthrough *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAudio_passthrough_ReadReg(InstancePtr->Control_BaseAddress, XAUDIO_PASSTHROUGH_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAudio_passthrough_IsReady(XAudio_passthrough *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAudio_passthrough_ReadReg(InstancePtr->Control_BaseAddress, XAUDIO_PASSTHROUGH_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAudio_passthrough_EnableAutoRestart(XAudio_passthrough *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAudio_passthrough_WriteReg(InstancePtr->Control_BaseAddress, XAUDIO_PASSTHROUGH_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XAudio_passthrough_DisableAutoRestart(XAudio_passthrough *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAudio_passthrough_WriteReg(InstancePtr->Control_BaseAddress, XAUDIO_PASSTHROUGH_CONTROL_ADDR_AP_CTRL, 0);
}

void XAudio_passthrough_InterruptGlobalEnable(XAudio_passthrough *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAudio_passthrough_WriteReg(InstancePtr->Control_BaseAddress, XAUDIO_PASSTHROUGH_CONTROL_ADDR_GIE, 1);
}

void XAudio_passthrough_InterruptGlobalDisable(XAudio_passthrough *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAudio_passthrough_WriteReg(InstancePtr->Control_BaseAddress, XAUDIO_PASSTHROUGH_CONTROL_ADDR_GIE, 0);
}

void XAudio_passthrough_InterruptEnable(XAudio_passthrough *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAudio_passthrough_ReadReg(InstancePtr->Control_BaseAddress, XAUDIO_PASSTHROUGH_CONTROL_ADDR_IER);
    XAudio_passthrough_WriteReg(InstancePtr->Control_BaseAddress, XAUDIO_PASSTHROUGH_CONTROL_ADDR_IER, Register | Mask);
}

void XAudio_passthrough_InterruptDisable(XAudio_passthrough *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAudio_passthrough_ReadReg(InstancePtr->Control_BaseAddress, XAUDIO_PASSTHROUGH_CONTROL_ADDR_IER);
    XAudio_passthrough_WriteReg(InstancePtr->Control_BaseAddress, XAUDIO_PASSTHROUGH_CONTROL_ADDR_IER, Register & (~Mask));
}

void XAudio_passthrough_InterruptClear(XAudio_passthrough *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAudio_passthrough_WriteReg(InstancePtr->Control_BaseAddress, XAUDIO_PASSTHROUGH_CONTROL_ADDR_ISR, Mask);
}

u32 XAudio_passthrough_InterruptGetEnabled(XAudio_passthrough *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAudio_passthrough_ReadReg(InstancePtr->Control_BaseAddress, XAUDIO_PASSTHROUGH_CONTROL_ADDR_IER);
}

u32 XAudio_passthrough_InterruptGetStatus(XAudio_passthrough *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAudio_passthrough_ReadReg(InstancePtr->Control_BaseAddress, XAUDIO_PASSTHROUGH_CONTROL_ADDR_ISR);
}

