####### Set Global Libraries #########
####### Set Directary #########
set LIB typical
set SYNDIR /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/PartiallyParallelFIR
set SRCDIR /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/PartiallyParallelFIR/SOURCE
set SCRDIR /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/PartiallyParallelFIR/SCRIPTS
set RPTDIR /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/PartiallyParallelFIR/REPORTS
set SYNDB  /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/PartiallyParallelFIR/db
source /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/PartiallyParallelFIR/synopsys_dc.setup
######Enviroment############
define_design_lib WORK -path /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/PartiallyParallelFIR/WORK
######Read Design###########
analyze -library WORK -format vhdl {/afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/PartiallyParallelFIR/SOURCE/misc.vhd}
analyze -library WORK -format vhdl {/afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/PartiallyParallelFIR/SOURCE/myPackage.vhd}
analyze -library WORK -format vhdl {/afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/PartiallyParallelFIR/SOURCE/FSM.vhd}
analyze -library WORK -format vhdl {/afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/PartiallyParallelFIR/SOURCE/DelayLine.vhd}
analyze -library WORK -format vhdl {/afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/PartiallyParallelFIR/SOURCE/coefRom.vhd}
analyze -library WORK -format vhdl {/afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/PartiallyParallelFIR/SOURCE/MAC.vhd}
analyze -library WORK -format vhdl {/afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/PartiallyParallelFIR/SOURCE/ArithUnit.vhd}
analyze -library WORK -format vhdl {/afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/PartiallyParallelFIR/SOURCE/TopFIR.vhd}
######Elaborate Design###########
elaborate Top_PartiallyParallel_FIR -lib WORK
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
report_timing > /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/PartiallyParallelFIR/REPORTS/report_timing.rpt
report_area > /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/PartiallyParallelFIR/REPORTS/report_area.rpt
#######Save Design####################
write -hierarchy -format ddc -output /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/PartiallyParallelFIR/db/main.ddc
write -format verilog -hier -o /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/PartiallyParallelFIR/db/main.v
write_sdf -version 2.1 /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB1/PartiallyParallelFIR/db/main.sdf
