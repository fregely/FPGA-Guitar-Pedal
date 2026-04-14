// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xpedal_top.h"

extern XPedal_top_Config XPedal_top_ConfigTable[];

#ifdef SDT
XPedal_top_Config *XPedal_top_LookupConfig(UINTPTR BaseAddress) {
	XPedal_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XPedal_top_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XPedal_top_ConfigTable[Index].Ctrl_BaseAddress == BaseAddress) {
			ConfigPtr = &XPedal_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XPedal_top_Initialize(XPedal_top *InstancePtr, UINTPTR BaseAddress) {
	XPedal_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XPedal_top_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XPedal_top_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XPedal_top_Config *XPedal_top_LookupConfig(u16 DeviceId) {
	XPedal_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XPEDAL_TOP_NUM_INSTANCES; Index++) {
		if (XPedal_top_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XPedal_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XPedal_top_Initialize(XPedal_top *InstancePtr, u16 DeviceId) {
	XPedal_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XPedal_top_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XPedal_top_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

