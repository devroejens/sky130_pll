v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 160 -450 200 -450 { lab=in0}
N 400 -430 440 -430 { lab=in0}
N 240 -500 240 -480 { lab=out1}
N 240 -500 480 -500 { lab=out1}
N 480 -500 480 -480 { lab=out1}
N 400 -450 440 -450 { lab=in1}
N 160 -430 200 -430 { lab=in1}
N 240 -420 240 -380 { lab=clk_f1}
N 480 -420 480 -380 { lab=clk_f2}
N 240 -320 240 -260 { lab=out0}
N 240 -260 570 -260 { lab=out0}
N 480 -320 480 -260 { lab=out0}
N 360 -580 570 -580 { lab=out1}
N 360 -580 360 -500 { lab=out1}
N 80 -580 120 -580 { lab=in1}
N 80 -260 120 -260 { lab=in0}
C {devices/vsource.sym} 480 -350 0 0 {name=Vref_f2 value="dc 0 pulse vlow vhigh \{1/f2/2\} 0.1n 0.1n \{1/f2/2\} \{1/f2\}"}
C {devices/vsource.sym} 240 -350 0 0 {name=Vref_f1 value="dc 0 pulse vlow vhigh \{1/f1/2\} 0.1n 0.1n \{1/f1/2\} \{1/f1\}"}
C {devices/switch_ngspice.sym} 240 -450 0 0 {name=S1 model=switch_clk_b}
C {devices/switch_ngspice.sym} 480 -450 0 0 {name=S2 model=switch_clk}
C {lab_wire.sym} 200 -430 0 0 {name=l6 sig_type=std_logic lab=in1}
C {lab_wire.sym} 240 -420 3 0 {name=l18 sig_type=std_logic lab=clk_f1}
C {lab_wire.sym} 480 -420 3 0 {name=l19 sig_type=std_logic lab=clk_f2}
C {devices/netlist.sym} 140 -190 0 0 {name=s1 value="
.model switch_clk sw vt=0.9 vh=0.2 ron=1m roff=1g
.model switch_clk_b sw vt=-0.9 vh=0.2 ron=1m roff=1g
"}
C {devices/iopin.sym} 570 -580 0 0 {name=p1 lab=out1}
C {devices/iopin.sym} 570 -260 0 0 {name=p2 lab=out0}
C {devices/ipin.sym} 90 -580 0 0 {name=p3 lab=in1}
C {devices/ipin.sym} 90 -260 0 0 {name=p4 lab=in0}
C {lab_wire.sym} 200 -450 0 0 {name=l1 sig_type=std_logic lab=in0}
C {lab_wire.sym} 440 -450 0 0 {name=l2 sig_type=std_logic lab=in1}
C {lab_wire.sym} 440 -430 0 0 {name=l3 sig_type=std_logic lab=in0}
C {lab_wire.sym} 120 -260 0 0 {name=l4 sig_type=std_logic lab=in0}
C {lab_wire.sym} 120 -580 0 0 {name=l5 sig_type=std_logic lab=in1}
