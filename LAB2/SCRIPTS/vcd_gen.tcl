run 18 ns
vcd file /afs/kth.se/home/w/v/wvds/IL2225_LAB/LAB2/POWER/power_1.vcd
vcd add -r tb_fir/*
# 1 sample every 20ns
run 200 ns
quit -sim

