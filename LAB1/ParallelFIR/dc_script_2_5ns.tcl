####### Set Global Libraries #########
####### Set Directary #########
set LIB typical
set SYNDIR /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/ParallelFIR
set SRCDIR /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/ParallelFIR/SOURCE
set SCRDIR /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/ParallelFIR/SCRIPTS
set RPTDIR /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/ParallelFIR/REPORTS
set SYNDB  /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/ParallelFIR/db
source /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/ParallelFIR/synopsys_dc.setup
######Enviroment############
define_design_lib WORK -path /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/ParallelFIR/WORK
######Read Design###########
analyze -library WORK -format vhdl {/afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/ParallelFIR/SOURCE/misc.vhd}
analyze -library WORK -format vhdl {/afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/ParallelFIR/SOURCE/myPackage.vhd}
analyze -library WORK -format vhdl {/afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/ParallelFIR/SOURCE/FSM.vhd}
analyze -library WORK -format vhdl {/afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/ParallelFIR/SOURCE/ShiftRegister.vhd}
analyze -library WORK -format vhdl {/afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/ParallelFIR/SOURCE/coefRom.vhd}
analyze -library WORK -format vhdl {/afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/ParallelFIR/SOURCE/MAC.vhd}
analyze -library WORK -format vhdl {/afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/ParallelFIR/SOURCE/ArithUnit.vhd}
analyze -library WORK -format vhdl {/afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/ParallelFIR/SOURCE/TopFIR.vhd}
######Elaborate Design###########
elaborate Top_Parallel_FIR -lib WORK
########Set Constraints#############
set_wire_load_mode top
set_wire_load_selection_group WireAreaLowkCon
set_operating_conditions -library tcbn90gtc NCCOM
create_clock -name "clk" -period 2.5 -waveform { 0 1.25 } { clk }
set_false_path -setup -reset_path -from { rst_n }
set_false_path -hold -reset_path -from { rst_n }
#######Compile Option############
compile -map_effort medium
#######Report####################
report_timing > /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/ParallelFIR/REPORTS/report_timing.rpt
report_area > /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/ParallelFIR/REPORTS/report_area.rpt
#######Save Design####################
write -hierarchy -format ddc -output /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/ParallelFIR/db/main.ddc
write -format verilog -hier -o /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/ParallelFIR/db/main.v
write_sdf -version 2.1 /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/ParallelFIR/db/main.sdf
