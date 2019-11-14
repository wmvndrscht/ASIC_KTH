###################################################################

# Created by write_sdc on Thu Nov 14 16:12:44 2019

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions NCCOM -library tcbn90gtc
set_wire_load_mode top
set_wire_load_model -name ZeroWireload -library tcbn90gtc
create_clock [get_ports clk]  -period 5  -waveform {0 2.5}
set_false_path   -from [get_ports rst_n]
