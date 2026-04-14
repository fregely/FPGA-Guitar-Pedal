// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xpedal_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XPedal_top_CfgInitialize(XPedal_top *InstancePtr, XPedal_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XPedal_top_Start(XPedal_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPedal_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XPEDAL_TOP_CTRL_ADDR_AP_CTRL) & 0x80;
    XPedal_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XPEDAL_TOP_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XPedal_top_IsDone(XPedal_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPedal_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XPEDAL_TOP_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XPedal_top_IsIdle(XPedal_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPedal_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XPEDAL_TOP_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XPedal_top_IsReady(XPedal_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPedal_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XPEDAL_TOP_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XPedal_top_EnableAutoRestart(XPedal_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPedal_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XPEDAL_TOP_CTRL_ADDR_AP_CTRL, 0x80);
}

void XPedal_top_DisableAutoRestart(XPedal_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPedal_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XPEDAL_TOP_CTRL_ADDR_AP_CTRL, 0);
}

void XPedal_top_Set_switches(XPedal_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPedal_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XPEDAL_TOP_CTRL_ADDR_SWITCHES_DATA, Data);
}

u32 XPedal_top_Get_switches(XPedal_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPedal_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XPEDAL_TOP_CTRL_ADDR_SWITCHES_DATA);
    return Data;
}

void XPedal_top_InterruptGlobalEnable(XPedal_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPedal_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XPEDAL_TOP_CTRL_ADDR_GIE, 1);
}

void XPedal_top_InterruptGlobalDisable(XPedal_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPedal_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XPEDAL_TOP_CTRL_ADDR_GIE, 0);
}

void XPedal_top_InterruptEnable(XPedal_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPedal_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XPEDAL_TOP_CTRL_ADDR_IER);
    XPedal_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XPEDAL_TOP_CTRL_ADDR_IER, Register | Mask);
}

void XPedal_top_InterruptDisable(XPedal_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPedal_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XPEDAL_TOP_CTRL_ADDR_IER);
    XPedal_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XPEDAL_TOP_CTRL_ADDR_IER, Register & (~Mask));
}

void XPedal_top_InterruptClear(XPedal_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPedal_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XPEDAL_TOP_CTRL_ADDR_ISR, Mask);
}

u32 XPedal_top_InterruptGetEnabled(XPedal_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPedal_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XPEDAL_TOP_CTRL_ADDR_IER);
}

u32 XPedal_top_InterruptGetStatus(XPedal_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPedal_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XPEDAL_TOP_CTRL_ADDR_ISR);
}

