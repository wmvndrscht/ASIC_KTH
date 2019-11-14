####### Set Global Libraries #########
source /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB2/synopsys_dc.setup
####### Set Directary #########
set LIB typical
set SYNDIR /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB2
set SRCDIR /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB2/SOURCE
set SCRDIR /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB2/SCRIPTS
set RPTDIR /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB2/REPORTS
set SYNDB  /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB2/db
######Enviroment############
define_design_lib WORK -path /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB2/WORK
######Read Design###########
analyze -library WORK -format vhdl {/afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB2/SOURCE/misc.vhd}
analyze -library WORK -format vhdl {/afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB2/SOURCE/DelayLine_CB.vhd}
analyze -library WORK -format vhdl {/afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB2/SOURCE/FIR_Processor.vhd}
analyze -library WORK -format vhdl {/afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB2/SOURCE/ROM_Process.vhd}
analyze -library WORK -format vhdl {/afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB2/SOURCE/SRAM.vhd}
analyze -library WORK -format vhdl {/afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB2/SOURCE/FIR_Toplevel.vhd}
######Elaborate Design###########
elaborate FIR_Toplevel -lib WORK -param "width = 4, filter_taps = 5"
########Set Constraints#############

# Wire load
set_wire_load_mode top
set_wire_load_selection_group WireAreaLowkCon

# Operating conditions
set_operating_conditions -library tcbn90gtc NCCOM

# Define clock
create_clock -name "clk" -period 5 -waveform { 0 2.5 } { clk }

# set reset paths to false
set_false_path -setup -reset_path -from { rst_n }
set_false_path -hold -reset_path -from { rst_n }

# operand isolation
set do_operand_isolation true

#######Compile Option############
compile -map_effort medium

#######Save Design####################
write_sdc /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB2/MAPPED/constraints.sdc
write_sdf /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB2/MAPPED/delays.sdf
write -format verilog -hier -o /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB2/MAPPED/main.v


#######Report####################
report_timing > /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB2/REPORTS/report_timing.rpt
report_area > /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB2/REPORTS/report_area.rpt
report_cell > /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB2/REPORTS/report_cell.rpt
report_power > /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB2/REPORTS/report_power.rpt
