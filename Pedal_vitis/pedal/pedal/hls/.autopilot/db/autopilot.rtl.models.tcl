set SynModuleInfo {
  {SRCNAME audio_passthrough MODELNAME audio_passthrough RTLNAME audio_passthrough IS_TOP 1
    SUBMODULES {
      {MODELNAME audio_passthrough_control_s_axi RTLNAME audio_passthrough_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME audio_passthrough_regslice_both RTLNAME audio_passthrough_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
      {MODELNAME audio_passthrough_flow_control_loop_pipe RTLNAME audio_passthrough_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME audio_passthrough_flow_control_loop_pipe_U}
    }
  }
}
