# This script segment is generated automatically by AutoPilot

set name design_1_v_tpg_0_0_urem_11ns_3ns_2_15_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto} LATENCY 14 ALLOW_PRAGMA 1
}


set name design_1_v_tpg_0_0_mul_11ns_13ns_23_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_sparsemux_7_2_9_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


set name design_1_v_tpg_0_0_mul_20s_9ns_28_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_sparsemux_7_16_8_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_sparsemux_7_2_8_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_am_addmul_16ns_1s_16ns_17_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_mac_muladd_16s_16s_16ns_16_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_mac_muladd_8ns_7ns_13ns_15_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_mac_muladd_8ns_7s_16s_16_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_mac_muladd_8ns_8s_16s_16_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_mac_muladd_8ns_6s_15ns_16_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_mac_muladd_8ns_8ns_15ns_16_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_mac_muladd_8ns_5ns_16ns_17_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_redYuv_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_grnYuv_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_bluYuv_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_blkYuv_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_whiYuv_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelRgb_r_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelYuv_y_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelRgb_g_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelYuv_u_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelYuv_v_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelRgb_b_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgTartanBarArray_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_0_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_1_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_2_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgCheckerBoardArray_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarArray_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelRgb_CEA_r_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelRgb_CEA_g_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelRgb_CEA_b_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_601_y_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_601_v_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_601_u_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_709_y_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_709_v_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_709_u_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name rampVal_3_flag_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rampVal_3_flag_0 \
    op interface \
    ports { rampVal_3_flag_0 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name hdata_flag_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hdata_flag_0 \
    op interface \
    ports { hdata_flag_0 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name rampVal_2_flag_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rampVal_2_flag_0 \
    op interface \
    ports { rampVal_2_flag_0 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name width_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_width_val \
    op interface \
    ports { width_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name conv2_i_i_i282 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_i_i_i282 \
    op interface \
    ports { conv2_i_i_i282 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name conv2_i_i_i268 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_i_i_i268 \
    op interface \
    ports { conv2_i_i_i268 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name conv2_i_i_i255 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_i_i_i255 \
    op interface \
    ports { conv2_i_i_i255 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name conv2_i_i_i240_cast_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_i_i_i240_cast_cast \
    op interface \
    ports { conv2_i_i_i240_cast_cast { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name conv2_i_i_i_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_i_i_i_cast \
    op interface \
    ports { conv2_i_i_i_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name cond_i235 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_i235 \
    op interface \
    ports { cond_i235 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name conv2_i_i10_i254_cast_cast_cast_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_i_i10_i254_cast_cast_cast_cast \
    op interface \
    ports { conv2_i_i10_i254_cast_cast_cast_cast { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name conv2_i_i10_i239 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_i_i10_i239 \
    op interface \
    ports { conv2_i_i10_i239 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name conv2_i_i10_i236 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_i_i10_i236 \
    op interface \
    ports { conv2_i_i10_i236 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name rampStart_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rampStart_1 \
    op interface \
    ports { rampStart_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name bckgndYUV \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bckgndYUV \
    op interface \
    ports { bckgndYUV_din { O 24 vector } bckgndYUV_num_data_valid { I 5 vector } bckgndYUV_fifo_cap { I 5 vector } bckgndYUV_full_n { I 1 bit } bckgndYUV_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name ZplateHorContStart_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ZplateHorContStart_val \
    op interface \
    ports { ZplateHorContStart_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name patternId_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_patternId_val \
    op interface \
    ports { patternId_val { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name cmp2_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp2_i \
    op interface \
    ports { cmp2_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name conv2_i_i10_i233_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_i_i10_i233_cast \
    op interface \
    ports { conv2_i_i10_i233_cast { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name y \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_y \
    op interface \
    ports { y { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name colorFormat_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_colorFormat_val \
    op interface \
    ports { colorFormat_val { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name barWidth_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_barWidth_cast \
    op interface \
    ports { barWidth_cast { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name barWidth \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_barWidth \
    op interface \
    ports { barWidth { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name shl_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_i \
    op interface \
    ports { shl_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name ZplateHorContDelta_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ZplateHorContDelta_val \
    op interface \
    ports { ZplateHorContDelta_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name ZplateVerContStart_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ZplateVerContStart_val \
    op interface \
    ports { ZplateVerContStart_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name cmp12_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp12_i \
    op interface \
    ports { cmp12_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name ZplateVerContDelta_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ZplateVerContDelta_val \
    op interface \
    ports { ZplateVerContDelta_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name sub_i_i_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sub_i_i_i \
    op interface \
    ports { sub_i_i_i { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name barWidthMinSamples \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_barWidthMinSamples \
    op interface \
    ports { barWidthMinSamples { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name cmp11_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp11_i \
    op interface \
    ports { cmp11_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name cmp_i34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i34 \
    op interface \
    ports { cmp_i34 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name sub35_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sub35_i \
    op interface \
    ports { sub35_i { I 17 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name add_i349 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_i349 \
    op interface \
    ports { add_i349 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name icmp \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp \
    op interface \
    ports { icmp { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name Sel_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Sel_cast \
    op interface \
    ports { Sel_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name cmp54_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp54_i \
    op interface \
    ports { cmp54_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name cmp136_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp136_i \
    op interface \
    ports { cmp136_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name cmp121_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp121_i \
    op interface \
    ports { cmp121_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name rampVal_3_flag_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rampVal_3_flag_1_out \
    op interface \
    ports { rampVal_3_flag_1_out { O 1 vector } rampVal_3_flag_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name rampVal_3_new_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rampVal_3_new_1_out \
    op interface \
    ports { rampVal_3_new_1_out { O 16 vector } rampVal_3_new_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name rampVal_3_loc_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_rampVal_3_loc_1_out \
    op interface \
    ports { rampVal_3_loc_1_out_i { I 16 vector } rampVal_3_loc_1_out_o { O 16 vector } rampVal_3_loc_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name rampVal_loc_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_rampVal_loc_1_out \
    op interface \
    ports { rampVal_loc_1_out_i { I 16 vector } rampVal_loc_1_out_o { O 16 vector } rampVal_loc_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name hBarSel_4_0_loc_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_hBarSel_4_0_loc_1_out \
    op interface \
    ports { hBarSel_4_0_loc_1_out_i { I 8 vector } hBarSel_4_0_loc_1_out_o { O 8 vector } hBarSel_4_0_loc_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name zonePlateVAddr_loc_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_zonePlateVAddr_loc_1_out \
    op interface \
    ports { zonePlateVAddr_loc_1_out_i { I 16 vector } zonePlateVAddr_loc_1_out_o { O 16 vector } zonePlateVAddr_loc_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name vBarSel_loc_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_vBarSel_loc_1_out \
    op interface \
    ports { vBarSel_loc_1_out_i { I 8 vector } vBarSel_loc_1_out_o { O 8 vector } vBarSel_loc_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name hBarSel_0_loc_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_hBarSel_0_loc_1_out \
    op interface \
    ports { hBarSel_0_loc_1_out_i { I 8 vector } hBarSel_0_loc_1_out_o { O 8 vector } hBarSel_0_loc_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name hdata_flag_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_hdata_flag_1_out \
    op interface \
    ports { hdata_flag_1_out { O 1 vector } hdata_flag_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name hdata_new_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_hdata_new_1_out \
    op interface \
    ports { hdata_new_1_out { O 16 vector } hdata_new_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name hdata_loc_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_hdata_loc_1_out \
    op interface \
    ports { hdata_loc_1_out_i { I 16 vector } hdata_loc_1_out_o { O 16 vector } hdata_loc_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name vBarSel_2_loc_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_vBarSel_2_loc_1_out \
    op interface \
    ports { vBarSel_2_loc_1_out_i { I 8 vector } vBarSel_2_loc_1_out_o { O 8 vector } vBarSel_2_loc_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name hBarSel_3_0_loc_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_hBarSel_3_0_loc_1_out \
    op interface \
    ports { hBarSel_3_0_loc_1_out_i { I 8 vector } hBarSel_3_0_loc_1_out_o { O 8 vector } hBarSel_3_0_loc_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name rampVal_2_flag_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rampVal_2_flag_1_out \
    op interface \
    ports { rampVal_2_flag_1_out { O 1 vector } rampVal_2_flag_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name rampVal_2_new_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rampVal_2_new_1_out \
    op interface \
    ports { rampVal_2_new_1_out { O 16 vector } rampVal_2_new_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name rampVal_2_loc_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_rampVal_2_loc_1_out \
    op interface \
    ports { rampVal_2_loc_1_out_i { I 16 vector } rampVal_2_loc_1_out_o { O 16 vector } rampVal_2_loc_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name vBarSel_3_loc_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_vBarSel_3_loc_1_out \
    op interface \
    ports { vBarSel_3_loc_1_out_i { I 8 vector } vBarSel_3_loc_1_out_o { O 8 vector } vBarSel_3_loc_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name hBarSel_5_0_loc_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_hBarSel_5_0_loc_1_out \
    op interface \
    ports { hBarSel_5_0_loc_1_out_i { I 8 vector } hBarSel_5_0_loc_1_out_o { O 8 vector } hBarSel_5_0_loc_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name outpix_0_2_0_0_0_load216_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_outpix_0_2_0_0_0_load216_out \
    op interface \
    ports { outpix_0_2_0_0_0_load216_out_i { I 8 vector } outpix_0_2_0_0_0_load216_out_o { O 8 vector } outpix_0_2_0_0_0_load216_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name outpix_0_1_0_0_0_load214_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_outpix_0_1_0_0_0_load214_out \
    op interface \
    ports { outpix_0_1_0_0_0_load214_out_i { I 8 vector } outpix_0_1_0_0_0_load214_out_o { O 8 vector } outpix_0_1_0_0_0_load214_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name outpix_0_0_0_0_0_load212_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_outpix_0_0_0_0_0_load212_out \
    op interface \
    ports { outpix_0_0_0_0_0_load212_out_i { I 8 vector } outpix_0_0_0_0_0_load212_out_o { O 8 vector } outpix_0_0_0_0_0_load212_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name rampVal \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rampVal \
    op interface \
    ports { rampVal { O 8 vector } rampVal_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name hBarSel_4_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_hBarSel_4_0 \
    op interface \
    ports { hBarSel_4_0 { O 8 vector } hBarSel_4_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name zonePlateVAddr \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_zonePlateVAddr \
    op interface \
    ports { zonePlateVAddr { O 16 vector } zonePlateVAddr_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name hBarSel_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_hBarSel_0 \
    op interface \
    ports { hBarSel_0 { O 3 vector } hBarSel_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name vBarSel \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vBarSel \
    op interface \
    ports { vBarSel { O 3 vector } vBarSel_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name hBarSel_3_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_hBarSel_3_0 \
    op interface \
    ports { hBarSel_3_0 { O 3 vector } hBarSel_3_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name vBarSel_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vBarSel_2 \
    op interface \
    ports { vBarSel_2 { O 8 vector } vBarSel_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name hBarSel_5_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_hBarSel_5_0 \
    op interface \
    ports { hBarSel_5_0 { O 3 vector } hBarSel_5_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name vBarSel_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vBarSel_1 \
    op interface \
    ports { vBarSel_1 { O 1 vector } vBarSel_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName design_1_v_tpg_0_0_flow_control_loop_pipe_sequential_init_U
set CompName design_1_v_tpg_0_0_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix design_1_v_tpg_0_0_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


