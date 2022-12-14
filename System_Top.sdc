###################################################################

# Created by write_sdc on Mon Oct 31 03:20:35 2022

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set_wire_load_model -name tsmc13_wl30 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports CLKDIV_EN]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {ALU_FUN[3]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {ALU_FUN[2]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {ALU_FUN[1]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {ALU_FUN[0]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports ALU_Enable]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports WrEn]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports RdEn]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {Address[3]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {Address[2]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {Address[1]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {Address[0]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {WrData[7]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {WrData[6]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {WrData[5]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {WrData[4]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {WrData[3]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {WrData[2]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {WrData[1]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {WrData[0]}]
set_load -pin_load 75 [get_ports {RdData[7]}]
set_load -pin_load 75 [get_ports {RdData[6]}]
set_load -pin_load 75 [get_ports {RdData[5]}]
set_load -pin_load 75 [get_ports {RdData[4]}]
set_load -pin_load 75 [get_ports {RdData[3]}]
set_load -pin_load 75 [get_ports {RdData[2]}]
set_load -pin_load 75 [get_ports {RdData[1]}]
set_load -pin_load 75 [get_ports {RdData[0]}]
set_load -pin_load 75 [get_ports ALU_VLD]
set_load -pin_load 75 [get_ports {ALU_OUT[7]}]
set_load -pin_load 75 [get_ports {ALU_OUT[6]}]
set_load -pin_load 75 [get_ports {ALU_OUT[5]}]
set_load -pin_load 75 [get_ports {ALU_OUT[4]}]
set_load -pin_load 75 [get_ports {ALU_OUT[3]}]
set_load -pin_load 75 [get_ports {ALU_OUT[2]}]
set_load -pin_load 75 [get_ports {ALU_OUT[1]}]
set_load -pin_load 75 [get_ports {ALU_OUT[0]}]
create_clock [get_ports CLK]  -name MASTER_CLK  -period 100  -waveform {0 50}
create_generated_clock [get_pins U0_ClkDiv/o_div_clk]  -name CLK_DIV  -source [get_ports CLK]  -master_clock MASTER_CLK  -divide_by 2  -add
set_clock_uncertainty -setup 0.2  [get_clocks CLK_DIV]
set_clock_uncertainty -hold 0.1  [get_clocks CLK_DIV]
set_clock_transition -max -rise 0.05 [get_clocks CLK_DIV]
set_clock_transition -min -rise 0.05 [get_clocks CLK_DIV]
set_clock_transition -max -fall 0.05 [get_clocks CLK_DIV]
set_clock_transition -min -fall 0.05 [get_clocks CLK_DIV]
create_generated_clock [get_pins U0_CLK_GATE/GATED_CLK]  -name CLK_GATED  -source [get_ports CLK]  -master_clock MASTER_CLK  -divide_by 1  -add
set_clock_uncertainty -setup 0.2  [get_clocks CLK_GATED]
set_clock_uncertainty -hold 0.1  [get_clocks CLK_GATED]
set_clock_transition -max -rise 0.05 [get_clocks CLK_GATED]
set_clock_transition -min -rise 0.05 [get_clocks CLK_GATED]
set_clock_transition -max -fall 0.05 [get_clocks CLK_GATED]
set_clock_transition -min -fall 0.05 [get_clocks CLK_GATED]
group_path -name INOUT  -from [list [get_ports CLKDIV_EN] [get_ports CLKG_EN] [get_ports CLK] [get_ports RST] [get_ports {ALU_FUN[3]}] [get_ports {ALU_FUN[2]}] [get_ports {ALU_FUN[1]}] [get_ports {ALU_FUN[0]}] [get_ports ALU_Enable] [get_ports WrEn] [get_ports RdEn] [get_ports {Address[3]}] [get_ports {Address[2]}] [get_ports {Address[1]}] [get_ports {Address[0]}] [get_ports {WrData[7]}] [get_ports {WrData[6]}] [get_ports {WrData[5]}] [get_ports {WrData[4]}] [get_ports {WrData[3]}] [get_ports {WrData[2]}] [get_ports {WrData[1]}] [get_ports {WrData[0]}]]  -to [list [get_ports {RdData[7]}] [get_ports {RdData[6]}] [get_ports {RdData[5]}] [get_ports {RdData[4]}] [get_ports {RdData[3]}] [get_ports {RdData[2]}] [get_ports {RdData[1]}] [get_ports {RdData[0]}] [get_ports ALU_VLD] [get_ports {ALU_OUT[7]}] [get_ports {ALU_OUT[6]}] [get_ports {ALU_OUT[5]}] [get_ports {ALU_OUT[4]}] [get_ports {ALU_OUT[3]}] [get_ports {ALU_OUT[2]}] [get_ports {ALU_OUT[1]}] [get_ports {ALU_OUT[0]}]]
group_path -name INREG  -from [list [get_ports CLKDIV_EN] [get_ports CLKG_EN] [get_ports CLK] [get_ports RST] [get_ports {ALU_FUN[3]}] [get_ports {ALU_FUN[2]}] [get_ports {ALU_FUN[1]}] [get_ports {ALU_FUN[0]}] [get_ports ALU_Enable] [get_ports WrEn] [get_ports RdEn] [get_ports {Address[3]}] [get_ports {Address[2]}] [get_ports {Address[1]}] [get_ports {Address[0]}] [get_ports {WrData[7]}] [get_ports {WrData[6]}] [get_ports {WrData[5]}] [get_ports {WrData[4]}] [get_ports {WrData[3]}] [get_ports {WrData[2]}] [get_ports {WrData[1]}] [get_ports {WrData[0]}]]
group_path -name REGOUT  -to [list [get_ports {RdData[7]}] [get_ports {RdData[6]}] [get_ports {RdData[5]}] [get_ports {RdData[4]}] [get_ports {RdData[3]}] [get_ports {RdData[2]}] [get_ports {RdData[1]}] [get_ports {RdData[0]}] [get_ports ALU_VLD] [get_ports {ALU_OUT[7]}] [get_ports {ALU_OUT[6]}] [get_ports {ALU_OUT[5]}] [get_ports {ALU_OUT[4]}] [get_ports {ALU_OUT[3]}] [get_ports {ALU_OUT[2]}] [get_ports {ALU_OUT[1]}] [get_ports {ALU_OUT[0]}]]
set_input_delay -clock MASTER_CLK  20  [get_ports CLK]
set_input_delay -clock MASTER_CLK  20  [get_ports CLKDIV_EN]
set_input_delay -clock MASTER_CLK  20  [get_ports CLKG_EN]
set_input_delay -clock CLK_GATED  20  [get_ports {ALU_FUN[3]}]
set_input_delay -clock CLK_GATED  20  [get_ports {ALU_FUN[2]}]
set_input_delay -clock CLK_GATED  20  [get_ports {ALU_FUN[1]}]
set_input_delay -clock CLK_GATED  20  [get_ports {ALU_FUN[0]}]
set_input_delay -clock CLK_GATED  20  [get_ports ALU_Enable]
set_input_delay -clock CLK_DIV  40  [get_ports WrEn]
set_input_delay -clock CLK_DIV  40  [get_ports RdEn]
set_input_delay -clock CLK_DIV  40  [get_ports {Address[3]}]
set_input_delay -clock CLK_DIV  40  [get_ports {Address[2]}]
set_input_delay -clock CLK_DIV  40  [get_ports {Address[1]}]
set_input_delay -clock CLK_DIV  40  [get_ports {Address[0]}]
set_input_delay -clock CLK_DIV  40  [get_ports {WrData[7]}]
set_input_delay -clock CLK_DIV  40  [get_ports {WrData[6]}]
set_input_delay -clock CLK_DIV  40  [get_ports {WrData[5]}]
set_input_delay -clock CLK_DIV  40  [get_ports {WrData[4]}]
set_input_delay -clock CLK_DIV  40  [get_ports {WrData[3]}]
set_input_delay -clock CLK_DIV  40  [get_ports {WrData[2]}]
set_input_delay -clock CLK_DIV  40  [get_ports {WrData[1]}]
set_input_delay -clock CLK_DIV  40  [get_ports {WrData[0]}]
set_output_delay -clock CLK_DIV  40  [get_ports {RdData[7]}]
set_output_delay -clock CLK_DIV  40  [get_ports {RdData[6]}]
set_output_delay -clock CLK_DIV  40  [get_ports {RdData[5]}]
set_output_delay -clock CLK_DIV  40  [get_ports {RdData[4]}]
set_output_delay -clock CLK_DIV  40  [get_ports {RdData[3]}]
set_output_delay -clock CLK_DIV  40  [get_ports {RdData[2]}]
set_output_delay -clock CLK_DIV  40  [get_ports {RdData[1]}]
set_output_delay -clock CLK_DIV  40  [get_ports {RdData[0]}]
set_output_delay -clock CLK_GATED  20  [get_ports ALU_VLD]
set_output_delay -clock CLK_GATED  20  [get_ports {ALU_OUT[7]}]
set_output_delay -clock CLK_GATED  20  [get_ports {ALU_OUT[6]}]
set_output_delay -clock CLK_GATED  20  [get_ports {ALU_OUT[5]}]
set_output_delay -clock CLK_GATED  20  [get_ports {ALU_OUT[4]}]
set_output_delay -clock CLK_GATED  20  [get_ports {ALU_OUT[3]}]
set_output_delay -clock CLK_GATED  20  [get_ports {ALU_OUT[2]}]
set_output_delay -clock CLK_GATED  20  [get_ports {ALU_OUT[1]}]
set_output_delay -clock CLK_GATED  20  [get_ports {ALU_OUT[0]}]
