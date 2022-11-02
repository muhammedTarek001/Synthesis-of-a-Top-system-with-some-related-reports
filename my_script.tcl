
########################### Define Top Module ############################
                                                   
set top_module System_Top

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries           #"
puts "###########################################"

#Add the path of the libraries to the search_path variable
lappend search_path /home/IC/Labs/Lab_Syn_3.0/std_cells
lappend search_path /home/IC/Labs/Lab_Syn_3.0/rtl

set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

set file_format verilog

read_file -format $file_format System_Top.v
read_file -format $file_format ALU.v
read_file -format $file_format ClkDiv.v
read_file -format $file_format CLK_GATE.v
read_file -format $file_format RegFile.v

###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design

############################### Path groups ################################
puts "###############################################"
puts "################ Path groups ##################"
puts "###############################################"

group_path -name INREG -from [all_inputs]
group_path -name REGOUT -to [all_outputs]
group_path -name INOUT -from [all_inputs] -to [all_outputs]

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"


# Constraints
# ----------------------------------------------------------------------------
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

set CLK_NAME MASTER_CLK
set CLK_PERIOD 100
set CLK_SETUP_SKEW 0.2
set CLK_HOLD_SKEW 0.1
set CLK_LAT 0
set CLK_RISE 0.05
set CLK_FALL 0.05

create_clock -name $CLK_NAME -period $CLK_PERIOD -waveform {0 50} [get_ports CLK]  

create_generated_clock -master_clock $CLK_NAME -source [get_ports CLK] \
 -name "CLK_DIV" -divide_by 2 [get_ports U0_ClkDiv/o_div_clk]  
    

set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks CLK_DIV]
set_clock_uncertainty -hold $CLK_HOLD_SKEW [get_clocks CLK_DIV]
set_clock_transition -rise $CLK_RISE [get_clocks CLK_DIV]
set_clock_transition -fall $CLK_RISE [get_clocks CLK_DIV]



create_generated_clock -master_clock $CLK_NAME -source [get_ports CLK] \
 -name "CLK_GATED" -divide_by 1 [get_ports U0_CLK_GATE/GATED_CLK]     
#if another signal which is not a clk syn tool will give error

set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks CLK_GATED]
set_clock_uncertainty -hold $CLK_HOLD_SKEW [get_clocks CLK_GATED]
set_clock_transition -rise $CLK_RISE [get_clocks CLK_GATED]
set_clock_transition -fall $CLK_RISE [get_clocks CLK_GATED]







####################################################################################
           #########################################################
                  #### Section 2 : Clocks Relationships ####
           #########################################################
####################################################################################



####################################################################################
           #########################################################
             #### Section 3 : #set input/output delay on ports ####
           #########################################################
####################################################################################
set CLK_DIVIDED_PERIOD 2*$CLK_PERIOD

set input1_delay [expr 0.2*$CLK_PERIOD]
set output1_delay [expr 0.2*$CLK_PERIOD]

set input2_delay [expr 0.2*$CLK_DIVIDED_PERIOD]
set output2_delay [expr 0.2*$CLK_DIVIDED_PERIOD]

#I/P CONSTRAINS
set_input_delay $input1_delay -clock $CLK_NAME [get_ports CLKDIV_EN]
set_input_delay $input1_delay -clock $CLK_NAME [get_ports CLKG_EN]
set_input_delay $input1_delay -clock $CLK_NAME [get_ports CLK] 

set_input_delay $input2_delay -clock CLK_DIV [get_ports  WrData]
set_input_delay $input2_delay -clock CLK_DIV [get_ports  Address]
set_input_delay $input2_delay -clock CLK_DIV [get_ports  WrEn]
set_input_delay $input2_delay -clock CLK_DIV [get_ports  RdEn]

set_input_delay $input1_delay -clock CLK_GATED [get_ports ALU_FUN]
set_input_delay $input1_delay -clock CLK_GATED [get_ports ALU_Enable]



#O/P CONSTRAINS

set_output_delay $output1_delay -clock CLK_GATED [get_ports ALU_VLD]
set_output_delay $output1_delay -clock CLK_GATED [get_ports ALU_OUT]
set_output_delay $output2_delay -clock CLK_DIV [get_ports RdData]




####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

 

set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c  -lib_cell BUFX2M -pin Y [get_port CLKDIV_EN]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port WrEn]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port RdEn]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port Address]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port WrData]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port ALU_FUN]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port ALU_Enable]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

set_load 75 [get_port RdData]
set_load 75 [get_port ALU_VLD]
set_load 75 [get_port ALU_OUT]

####################################################################################
           #########################################################
                 #### Section 5 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis


##min is operating condition (can be found in tech_library) which is not neccesarily like library name

set_operating_conditions                                                                          \
-min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c"  \
-max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 6 : wireload Model ####
           #########################################################
####################################################################################

#(can be found in tech_library)
set_wire_load_model -name tsmc13_wl30 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c


####################################################################################
           #########################################################
                  #### Section 7 : MultiCycle Paths ####
           #########################################################
####################################################################################


###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile

#############################################################################
# Write out Design after initial compile
#############################################################################

# Verilog Gate Level Netlist
write_file -format verilog -hierarchy -output System_Top.v  
# DDC Gate Level Netlist
write_file -format ddc -hierarchy -output System_Top.ddc   ## netlist + sdc file
# SDC(Synopsys Design Constraints) File
write_sdc -nosplit System_Top.sdc     
# SDF(Standard Delay Format) File
write_sdf System_Top.sdf  

################# reporting #######################

report_area -hierarchy > area.rpt 
report_power -hierarchy
report_timing -max_paths 100 -delay_type min > hold.rpt
report_timing -max_paths 100 -delay_type max > setup.rpt
report_clock -attributes > clocks.rpt
report_constraint -all_violators > constraints.rpt

set_dont_touch_network CLK

################# starting graphical user interface #######################

#gui_start

#exit
