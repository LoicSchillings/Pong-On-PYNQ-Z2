# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
# Tool Version Limit: 2024.05
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
source -notrace "C:/Xilinx/Vitis_HLS/2024.1/common/scripts/ipxhls.tcl"
set ip_dir "C:/ProjectenVivado/Academiejaar_25-26/EOS-Project/EOS-Project.runs/design_1_v_tpg_0_0_synth_1/prj/sol/impl/ip"
set data_file "C:/ProjectenVivado/Academiejaar_25-26/EOS-Project/EOS-Project.runs/design_1_v_tpg_0_0_synth_1/prj/sol/sol_data.json"
set ip_types "vitis sysgen"
if { [catch {::ipx::utils::package_hls_ip $ip_dir $data_file $ip_types } res] } {
  puts "Caught error:\n$::errorInfo"
  error $res
}
