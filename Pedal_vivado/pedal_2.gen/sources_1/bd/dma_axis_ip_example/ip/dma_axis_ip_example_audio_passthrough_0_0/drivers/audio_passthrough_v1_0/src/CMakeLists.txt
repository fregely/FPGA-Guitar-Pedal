# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
# Tool Version Limit: 2024.05
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
cmake_minimum_required(VERSION 3.15)
project(audio_passthrough)
find_package(common)
collector_create (PROJECT_LIB_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}")
collect (PROJECT_LIB_SOURCES xaudio_passthrough.c)
collect (PROJECT_LIB_SOURCES xaudio_passthrough_sinit.c)
collect (PROJECT_LIB_SOURCES xaudio_passthrough_linux.c)
collect (PROJECT_LIB_SOURCES xaudio_passthrough_g.c)
collector_list (_sources PROJECT_LIB_SOURCES)
collector_create (PROJECT_LIB_HEADERS "${CMAKE_CURRENT_SOURCE_DIR}")
collect (PROJECT_LIB_HEADERS xaudio_passthrough.h)
collect (PROJECT_LIB_HEADERS xaudio_passthrough_hw.h)
collector_list (_headers PROJECT_LIB_HEADERS)
file(COPY ${_headers} DESTINATION ${CMAKE_BINARY_DIR}/include)
include_directories(${CMAKE_BINARY_DIR}/include)
add_library(audio_passthrough STATIC ${_sources})
set_target_properties(audio_passthrough PROPERTIES LINKER_LANGUAGE C)

