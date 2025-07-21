v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 40 -80 40 -40 { lab=gnd}
N 40 -300 40 -240 { lab=vdd}
N 560 -530 560 -470 { lab=vdd}
N 560 -410 560 -370 { lab=ibias}
N 340 -300 480 -300 { lab=vtune}
N 340 -200 340 -160 { lab=gnd}
N 340 -300 340 -260 { lab=vtune}
N 640 -430 640 -370 { lab=vdd}
N 640 -230 640 -190 { lab=gnd}
N 890 -380 890 -340 { lab=gnd}
N 40 -180 40 -140 { lab=_vdd}
N 970 -380 970 -340 { lab=gnd}
N 1050 -380 1050 -340 { lab=gnd}
N 1130 -380 1130 -340 { lab=gnd}
N 720 -300 830 -300 { lab=vco_out[7:0]}
N 890 -80 890 -40 { lab=gnd}
N 970 -80 970 -40 { lab=gnd}
N 1050 -80 1050 -40 { lab=gnd}
N 1130 -80 1130 -40 { lab=gnd}
N 890 -200 890 -140 { lab=vco_out4}
N 970 -200 970 -140 { lab=vco_out5}
N 1050 -200 1050 -140 { lab=vco_out6}
N 1130 -200 1130 -140 { lab=vco_out7}
N 890 -500 890 -440 { lab=vco_out0}
N 970 -500 970 -440 { lab=vco_out1}
N 1050 -500 1050 -440 { lab=vco_out2}
N 1130 -500 1130 -440 { lab=vco_out3}
N 890 -620 890 -560 { lab=vco_out[0]}
N 970 -620 970 -560 { lab=vco_out[1]}
N 1050 -620 1050 -560 { lab=vco_out[2]}
N 1130 -620 1130 -560 { lab=vco_out[3]}
N 890 -320 890 -260 { lab=vco_out[4]}
N 970 -320 970 -260 { lab=vco_out[5]}
N 1050 -320 1050 -260 { lab=vco_out[6]}
N 1130 -320 1130 -260 { lab=vco_out[7]}
N 160 -80 160 -40 { lab=gnd}
N 160 -200 160 -140 { lab=vco_out0}
N 560 -230 560 -190 { lab=gnd}
C {devices/code.sym} 10 -560 0 0 {name=SIM only_toplevel=false value="

.option savecurrents
.option rshunt = 1e12
.option gmin = 1e-24
*.option method=Gear
*.option chgtol=1e-12

.option method=gear
*.option abstol=1e-12
.option vntol=1e-6
*.option chgtol=1e-16
.option reltol=1e-6
*.option trtol=10


*.model switch1 aswitch(cntl_off=0.0 cntl_on=0.1 r_off=1e12 r_on=1.0 log=TRUE)
.model sw SW (ron=0.1 roff=1e12 vt=0.5 vh=0)

.control
* Main Amplifier
** Main Core OP params
save i(@m.x1.xm1.msky130_fd_pr__nfet_01v8[id])
save @m.x1.xm1.msky130_fd_pr__nfet_01v8[gm]
save v(@m.x1.xm1.msky130_fd_pr__nfet_01v8[vds])
save v(@m.x1.xm1.msky130_fd_pr__nfet_01v8[vgs])
save v(@m.x1.xm1.msky130_fd_pr__nfet_01v8[vth])
save v(@m.x1.xm1.msky130_fd_pr__nfet_01v8[vdsat])


* #################################################################
* #
* #                         OPERATING POINT
* #
* #################################################################
save all
save v(vin_p)
save v(vin_n)
save v(vg_p)
save v(vg_n)
save v(vout_p)
save v(vout_n)

op
set filetype=binary
write pll_vco_tb.raw all

* #################################################################
* #
* #                 TRANSIENT OSCILATION REGIME
* #
* #################################################################
reset
save all
save v(vco_out)
save v(vco_out<0>) v(vco_out<1>) v(vco_out<2>) v(vco_out<3>) v(vco_out<4>) v(vco_out<5>) v(vco_out<6>) v(vco_out<7>)
save v(vtune)

*.ic v(vco_out<0>)=1.8 v(vco_out<4>)=0
*.ic v(vco_out0)=1.8 v(vco_out4)=0
tran 1n 10n 0
set filetype=ascii
write pll_vco_tb_tran.raw all

plot v(vco_out0) v(vco_out1) v(vco_out2) v(vco_out3) v(vco_out4) v(vco_out5) v(vco_out6) v(vco_out7)
plot v(vtune)
plot v(vco_out0)

.endc
"}
C {devices/code.sym} 150 -560 0 0 {name=TT_MODELS
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
C {devices/launcher.sym} 80 -380 0 0 {name=h1
descr=Annotate
tclcommand="ngspice::annotate"}
C {devices/launcher.sym} 80 -340 0 0 {name=h2
descr="View Raw" 
tclcommand="textwindow $netlist_dir/test_nmos.raw"}
C {devices/vsource.sym} 40 -110 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 40 -40 0 0 {name=l1 lab=gnd}
C {lab_wire.sym} 40 -290 3 0 {name=l2 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 40 -80 3 0 {name=l3 sig_type=std_logic lab=gnd
}
C {devices/isource.sym} 560 -440 0 0 {name=I0 value=100u}
C {lab_wire.sym} 560 -520 3 0 {name=l23 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 560 -410 3 0 {name=l24 sig_type=std_logic lab=ibias}
C {devices/ammeter.sym} 40 -210 0 0 {name=Vmeas1 current=-0.00185}
C {devices/ngspice_probe.sym} 560 -370 0 0 {name=r7}
C {devices/vsource.sym} 340 -230 0 0 {name=Vtune value=0.9}
C {lab_wire.sym} 340 -200 3 0 {name=l4 sig_type=std_logic lab=gnd
}
C {devices/ngspice_probe.sym} 440 -300 0 0 {name=r1}
C {lab_wire.sym} 420 -300 0 0 {name=l5 sig_type=std_logic lab=vtune}
C {lab_wire.sym} 640 -420 3 0 {name=l6 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 640 -230 3 0 {name=l7 sig_type=std_logic lab=gnd
}
C {devices/res.sym} 890 -410 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 890 -380 3 0 {name=l8 sig_type=std_logic lab=gnd
}
C {lab_wire.sym} 830 -300 0 0 {name=l9 sig_type=std_logic lab=vco_out[7:0]}
C {lab_wire.sym} 40 -170 3 0 {name=l10 sig_type=std_logic lab=_vdd
}
C {devices/res.sym} 970 -410 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 970 -380 3 0 {name=l11 sig_type=std_logic lab=gnd
}
C {devices/res.sym} 1050 -410 0 0 {name=R3
value=100k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1050 -380 3 0 {name=l12 sig_type=std_logic lab=gnd
}
C {devices/res.sym} 1130 -410 0 0 {name=R4
value=100k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1130 -380 3 0 {name=l13 sig_type=std_logic lab=gnd
}
C {devices/res.sym} 890 -110 0 0 {name=R5
value=100k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 890 -80 3 0 {name=l14 sig_type=std_logic lab=gnd
}
C {devices/res.sym} 970 -110 0 0 {name=R6
value=100k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 970 -80 3 0 {name=l15 sig_type=std_logic lab=gnd
}
C {devices/res.sym} 1050 -110 0 0 {name=R7
value=100k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1050 -80 3 0 {name=l16 sig_type=std_logic lab=gnd
}
C {devices/res.sym} 1130 -110 0 0 {name=R8
value=100k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1130 -80 3 0 {name=l17 sig_type=std_logic lab=gnd
}
C {devices/ammeter.sym} 890 -530 0 0 {name=Imeas0 current=-0.04679}
C {devices/ammeter.sym} 970 -530 0 0 {name=Imeas1 current=-0.04679}
C {devices/ammeter.sym} 1050 -530 0 0 {name=Imeas2 current=-0.04679}
C {devices/ammeter.sym} 1130 -530 0 0 {name=Imeas3 current=-0.04679}
C {devices/ammeter.sym} 890 -230 0 0 {name=Imeas4 current=-0.04679}
C {devices/ammeter.sym} 970 -230 0 0 {name=Imeas5 current=-0.04679}
C {devices/ammeter.sym} 1050 -230 0 0 {name=Imeas6 current=-0.04679}
C {devices/ammeter.sym} 1130 -230 0 0 {name=Imeas7 current=-0.04679}
C {lab_wire.sym} 890 -620 3 0 {name=l20 sig_type=std_logic lab=vco_out[0]}
C {lab_wire.sym} 970 -620 3 0 {name=l21 sig_type=std_logic lab=vco_out[1]}
C {lab_wire.sym} 1050 -620 3 0 {name=l22 sig_type=std_logic lab=vco_out[2]}
C {lab_wire.sym} 1130 -620 3 0 {name=l25 sig_type=std_logic lab=vco_out[3]}
C {lab_wire.sym} 890 -320 3 0 {name=l18 sig_type=std_logic lab=vco_out[4]}
C {lab_wire.sym} 970 -320 3 0 {name=l19 sig_type=std_logic lab=vco_out[5]}
C {lab_wire.sym} 1050 -320 3 0 {name=l26 sig_type=std_logic lab=vco_out[6]}
C {lab_wire.sym} 1130 -320 3 0 {name=l27 sig_type=std_logic lab=vco_out[7]}
C {lab_wire.sym} 890 -200 3 0 {name=l28 sig_type=std_logic lab=vco_out4}
C {lab_wire.sym} 970 -200 3 0 {name=l29 sig_type=std_logic lab=vco_out5}
C {lab_wire.sym} 1050 -200 3 0 {name=l30 sig_type=std_logic lab=vco_out6}
C {lab_wire.sym} 1130 -200 3 0 {name=l31 sig_type=std_logic lab=vco_out7}
C {lab_wire.sym} 890 -500 3 0 {name=l32 sig_type=std_logic lab=vco_out0}
C {lab_wire.sym} 970 -500 3 0 {name=l33 sig_type=std_logic lab=vco_out1}
C {lab_wire.sym} 1050 -500 3 0 {name=l34 sig_type=std_logic lab=vco_out2}
C {lab_wire.sym} 1130 -500 3 0 {name=l35 sig_type=std_logic lab=vco_out3}
C {devices/ngspice_probe.sym} 640 -370 0 0 {name=r2}
C {devices/vsource.sym} 160 -110 0 0 {name=V2 value="dc 0 pulse 0 1.8 0.1n 0.1n 0.1n 0.1n 3600"}
C {lab_wire.sym} 160 -80 3 0 {name=l36 sig_type=std_logic lab=gnd
}
C {lab_wire.sym} 160 -200 3 0 {name=l38 sig_type=std_logic lab=vco_out0}
C {../xschem/pll_vco.sym} 600 -300 0 0 {name=x1}
C {lab_wire.sym} 560 -230 3 0 {name=l37 sig_type=std_logic lab=gnd
}
