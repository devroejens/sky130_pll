v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 400 -620 440 -620 { lab=vss}
N 520 -620 560 -620 { lab=vdd}
N 880 -620 920 -620 { lab=vss}
N 1000 -620 1040 -620 { lab=vdd}
N 320 -620 360 -620 { lab=phase1}
N 600 -620 640 -620 { lab=phase1b}
N 800 -620 840 -620 { lab=phase2}
N 1080 -620 1120 -620 { lab=#net1}
N 400 -700 400 -650 { lab=cm}
N 400 -700 560 -700 { lab=cm}
N 560 -700 560 -650 { lab=cm}
N 880 -700 880 -650 { lab=cm}
N 880 -700 1040 -700 { lab=cm}
N 1040 -700 1040 -650 { lab=cm}
N 480 -760 480 -700 { lab=cm}
N 960 -760 960 -700 { lab=cm}
N 720 -800 720 -760 { lab=cm}
N 480 -760 960 -760 { lab=cm}
N 400 -590 400 -540 { lab=out1}
N 400 -540 560 -540 { lab=out1}
N 560 -590 560 -540 { lab=out1}
N 880 -590 880 -540 { lab=out2}
N 880 -540 1040 -540 { lab=out2}
N 1040 -590 1040 -540 { lab=out2}
N 480 -540 480 -480 { lab=out1}
N 960 -540 960 -480 { lab=out2}
C {devices/code.sym} 20 -810 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.options wnflag=1
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_01v8/sky130_fd_pr__esd_nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_pfet_g5v0d10v5/sky130_fd_pr__esd_pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d16v0/sky130_fd_pr__pfet_g5v0d16v0__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d16v0/sky130_fd_pr__nfet_g5v0d16v0__tt_discrete.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_g5v0d10v5/sky130_fd_pr__esd_nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/nonfet.spice

.include \\\\$::SKYWATER_MODELS\\\\/cells/cap_var_hvt/sky130_fd_pr__cap_var_hvt.model.spice

* Mismatch parameters
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__mismatch.corner.spice

* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice

* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice

* All models
.include \\\\$::SKYWATER_MODELS\\\\/models/all.spice

* Corner
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/rf.spice
"}
C {devices/launcher.sym} 100 -640 0 0 {name=h1
descr=Annotate
tclcommand="ngspice::annotate"}
C {devices/launcher.sym} 100 -600 0 0 {name=h2
descr="View Raw" 
tclcommand="textwindow $netlist_dir/test_nmos.raw"}
C {devices/ipin.sym} 330 -500 0 0 {name=p7 lab=vdd}
C {devices/ipin.sym} 330 -460 0 0 {name=p8 lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 380 -620 0 0 {name=M1
L=0.15
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 580 -620 2 0 {name=M2
L=0.15
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_wire.sym} 400 -620 0 1 {name=l1 sig_type=std_logic lab=vss}
C {lab_wire.sym} 560 -620 0 0 {name=l2 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 860 -620 0 0 {name=M3
L=0.15
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1060 -620 2 0 {name=M4
L=0.15
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_wire.sym} 880 -620 0 1 {name=l3 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1040 -620 0 0 {name=l4 sig_type=std_logic lab=vdd}
C {devices/ipin.sym} 330 -620 0 0 {name=p1 lab=phase1}
C {devices/ipin.sym} 630 -620 0 1 {name=p2 lab=phase1b}
C {devices/ipin.sym} 810 -620 0 0 {name=p3 lab=phase2}
C {devices/ipin.sym} 1110 -620 0 1 {name=p4 lab=phase2b}
C {devices/ipin.sym} 720 -790 3 1 {name=p5 lab=cm}
C {devices/opin.sym} 960 -490 1 0 {name=p6 lab=out2}
C {devices/opin.sym} 480 -490 1 0 {name=p9 lab=out1}
