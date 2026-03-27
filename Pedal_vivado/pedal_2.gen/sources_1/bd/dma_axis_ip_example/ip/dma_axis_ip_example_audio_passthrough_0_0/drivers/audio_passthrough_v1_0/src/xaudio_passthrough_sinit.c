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
#include "xaudio_passthrough.h"

extern XAudio_passthrough_Config XAudio_passthrough_ConfigTable[];

#ifdef SDT
XAudio_passthrough_Config *XAudio_passthrough_LookupConfig(UINTPTR BaseAddress) {
	XAudio_passthrough_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XAudio_passthrough_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XAudio_passthrough_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XAudio_passthrough_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAudio_passthrough_Initialize(XAudio_passthrough *InstancePtr, UINTPTR BaseAddress) {
	XAudio_passthrough_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAudio_passthrough_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAudio_passthrough_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XAudio_passthrough_Config *XAudio_passthrough_LookupConfig(u16 DeviceId) {
	XAudio_passthrough_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XAUDIO_PASSTHROUGH_NUM_INSTANCES; Index++) {
		if (XAudio_passthrough_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAudio_passthrough_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAudio_passthrough_Initialize(XAudio_passthrough *InstancePtr, u16 DeviceId) {
	XAudio_passthrough_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAudio_passthrough_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAudio_passthrough_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

