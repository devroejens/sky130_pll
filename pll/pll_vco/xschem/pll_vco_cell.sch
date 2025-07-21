v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 620 -320 620 -280 { lab=#net1}
N 1180 -320 1180 -280 { lab=#net1}
N 880 -190 900 -190 { lab=vss}
N 800 -650 820 -650 { lab=vdd}
N 980 -650 1000 -650 { lab=vdd}
N 800 -760 800 -680 { lab=vdd}
N 1000 -760 1000 -680 { lab=vdd}
N 820 -760 820 -650 { lab=vdd}
N 980 -760 980 -650 { lab=vdd}
N 880 -160 880 -80 { lab=vss}
N 900 -190 900 -80 { lab=vss}
N 540 -350 580 -350 { lab=in_p}
N 1220 -350 1260 -350 { lab=in_n}
N 900 -350 900 -190 { lab=vss}
N 620 -650 640 -650 { lab=vdd}
N 640 -760 640 -650 { lab=vdd}
N 620 -760 620 -680 { lab=vdd}
N 1180 -760 1180 -680 { lab=vdd}
N 1160 -650 1180 -650 { lab=vdd}
N 1160 -760 1160 -650 { lab=vdd}
N 560 -650 580 -650 { lab=out_p}
N 1180 -620 1180 -540 { lab=out_p}
N 620 -620 620 -540 { lab=out_n}
N 1220 -650 1240 -650 { lab=out_n}
N 740 -650 760 -650 { lab=out_n}
N 740 -650 740 -600 { lab=out_n}
N 740 -600 800 -600 { lab=out_n}
N 1000 -600 1060 -600 { lab=out_p}
N 1060 -650 1060 -600 { lab=out_p}
N 1040 -650 1060 -650 { lab=out_p}
N 750 -190 840 -190 { lab=vbias}
N 540 -480 620 -480 { lab=out_n}
N 1180 -480 1260 -480 { lab=out_p}
N 820 -440 980 -440 { lab=vtune}
N 900 -440 900 -420 { lab=vtune}
N 120 -80 900 -80 { lab=vss}
N 440 -650 460 -650 { lab=vdd}
N 440 -760 440 -680 { lab=vdd}
N 460 -760 460 -650 { lab=vdd}
N 1340 -650 1360 -650 { lab=vdd}
N 1360 -760 1360 -680 { lab=vdd}
N 1340 -760 1340 -650 { lab=vdd}
N 440 -620 440 -540 { lab=out_n}
N 440 -540 620 -540 { lab=out_n}
N 1360 -620 1360 -540 { lab=out_p}
N 780 -190 780 -160 { lab=vbias}
N 780 -100 780 -80 { lab=vss}
N 780 -130 800 -130 { lab=vss}
N 800 -130 800 -80 { lab=vss}
N 700 -130 740 -130 { lab=sdn}
N 380 -650 400 -650 { lab=#net2}
N 1400 -650 1420 -650 { lab=#net3}
N 260 -650 300 -650 { lab=sdn}
N 1500 -650 1540 -650 { lab=sdn}
N 810 -400 810 -350 { lab=vss}
N 1030 -400 1030 -350 { lab=vss}
N 880 -280 880 -220 { lab=#net1}
N 770 -400 770 -350 { lab=vss}
N 990 -400 990 -350 { lab=vss}
N 620 -540 800 -540 { lab=out_n}
N 120 -760 1360 -760 { lab=vdd}
N 1180 -540 1360 -540 { lab=out_p}
N 1000 -540 1180 -540 { lab=out_p}
N 1040 -440 1180 -440 { lab=out_p}
N 620 -440 760 -440 { lab=out_n}
N 620 -350 1180 -350 { lab=vss}
N 1000 -620 1000 -540 { lab=out_p}
N 800 -620 800 -540 { lab=out_n}
N 620 -540 620 -380 { lab=out_n}
N 1180 -540 1180 -380 { lab=out_p}
N 620 -280 1180 -280 { lab=#net1}
N 560 -650 560 -560 { lab=out_p}
N 560 -560 840 -560 { lab=out_p}
N 840 -560 1000 -540 { lab=out_p}
N 1240 -650 1240 -560 { lab=out_n}
N 960 -560 1240 -560 { lab=out_n}
N 800 -540 960 -560 { lab=out_n}
C {devices/code.sym} 110 -530 0 0 {name=SIM only_toplevel=false value="
*.control
*save i(@m."$\{path\}"xm1.msky130_fd_pr__nfet_01v8[id])
*save @m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[gm]
*save v(@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[vds])
*save v(@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[vgs])
*save v(@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[vth])
*save v(@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[vdsat])

*save i(@m.$\{path\}xm2.msky130_fd_pr__nfet_01v8[id])
*save @m.$\{path\}xm2.msky130_fd_pr__nfet_01v8[gm]
*save v(@m.$\{path\}xm2.msky130_fd_pr__nfet_01v8[vds])
*save v(@m.$\{path\}xm2.msky130_fd_pr__nfet_01v8[vgs])
*save v(@m.$\{path\}xm2.msky130_fd_pr__nfet_01v8[vth])
*save v(@m.$\{path\}xm2.msky130_fd_pr__nfet_01v8[vdsat])
*.endc
"}
C {devices/launcher.sym} 180 -390 0 0 {name=h1
descr=Annotate
tclcommand="ngspice::annotate"}
C {test_jens/ngspice_get_value_inline2.sym} 630 -410 0 0 {name=r1 descr="Id" node=i(@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[id])
}
C {test_jens/ngspice_get_value_inline2.sym} 630 -400 0 0 {name=r8 descr="vds" node=v(@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[vds])}
C {test_jens/ngspice_get_value_inline2.sym} 630 -390 0 0 {name=r9 descr="Vgs" node=v(@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[vgs])
}
C {test_jens/ngspice_get_value_inline2.sym} 630 -380 0 0 {name=r10 descr="vth" node=v(@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[vth])
}
C {test_jens/ngspice_get_value_inline2.sym} 630 -370 0 0 {name=r11 descr="vdsat" node=v(@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[vdsat])
}
C {test_jens/ngspice_get_value_inline2.sym} 1170 -410 0 1 {name=r12 descr="Id" node=i(@m.$\{path\}xm2.msky130_fd_pr__nfet_01v8[id])
}
C {test_jens/ngspice_get_value_inline2.sym} 1170 -400 0 1 {name=r13 descr="vds" node=v(@m.$\{path\}xm2.msky130_fd_pr__nfet_01v8[vds])}
C {test_jens/ngspice_get_value_inline2.sym} 1170 -390 0 1 {name=r14 descr="Vgs" node=v(@m.$\{path\}xm2.msky130_fd_pr__nfet_01v8[vgs])
}
C {test_jens/ngspice_get_value_inline2.sym} 1170 -380 0 1 {name=r15 descr="vth" node=v(@m.$\{path\}xm2.msky130_fd_pr__nfet_01v8[vth])
}
C {test_jens/ngspice_get_value_inline2.sym} 1170 -370 0 1 {name=r16 descr="vdsat" node=v(@m.$\{path\}xm2.msky130_fd_pr__nfet_01v8[vdsat])
}
C {test_jens/ngspice_get_value_inline2.sym} 910 -250 0 0 {name=r17 descr="Id" node=i(@m.$\{path\}xm3.msky130_fd_pr__nfet_01v8[id])
}
C {test_jens/ngspice_get_value_inline2.sym} 910 -240 0 0 {name=r18 descr="vds" node=v(@m.$\{path\}xm3.msky130_fd_pr__nfet_01v8[vds])}
C {test_jens/ngspice_get_value_inline2.sym} 910 -230 0 0 {name=r19 descr="Vgs" node=v(@m.$\{path\}xm3.msky130_fd_pr__nfet_01v8[vgs])
}
C {test_jens/ngspice_get_value_inline2.sym} 910 -220 0 0 {name=r20 descr="vth" node=v(@m.$\{path\}xm3.msky130_fd_pr__nfet_01v8[vth])
}
C {test_jens/ngspice_get_value_inline2.sym} 910 -210 0 0 {name=r21 descr="vdsat" node=v(@m.$\{path\}xm3.msky130_fd_pr__nfet_01v8[vdsat])
}
C {devices/iopin.sym} 130 -80 0 1 {name=p1 lab=vss}
C {devices/iopin.sym} 130 -760 0 1 {name=p2 lab=vdd}
C {devices/ipin.sym} 540 -350 0 0 {name=p3 lab=in_p}
C {devices/ipin.sym} 1260 -350 0 1 {name=p4 lab=in_n}
C {devices/iopin.sym} 760 -190 0 1 {name=p5 lab=vbias}
C {devices/ngspice_probe.sym} 820 -190 2 0 {name=r29}
C {test_jens/ngspice_get_value_inline2.sym} 990 -610 0 1 {name=r56 descr="Id" node=i(@m.$\{path\}xm5.msky130_fd_pr__pfet_01v8[id])
}
C {test_jens/ngspice_get_value_inline2.sym} 990 -600 0 1 {name=r57 descr="vds" node=v(@m.$\{path\}xm5.msky130_fd_pr__pfet_01v8[vds])}
C {test_jens/ngspice_get_value_inline2.sym} 990 -590 0 1 {name=r58 descr="Vgs" node=v(@m.$\{path\}xm5.msky130_fd_pr__pfet_01v8[vgs])
}
C {test_jens/ngspice_get_value_inline2.sym} 990 -580 0 1 {name=r59 descr="vth" node=v(@m.$\{path\}xm5.msky130_fd_pr__pfet_01v8[vth])
}
C {test_jens/ngspice_get_value_inline2.sym} 990 -570 0 1 {name=r60 descr="vdsat" node=v(@m.$\{path\}xm5.msky130_fd_pr__pfet_01v8[vdsat])
}
C {test_jens/ngspice_get_value_inline2.sym} 810 -610 0 0 {name=r61 descr="Id" node=i(@m.$\{path\}xm4.msky130_fd_pr__pfet_01v8[id])
}
C {test_jens/ngspice_get_value_inline2.sym} 810 -600 0 0 {name=r62 descr="vds" node=v(@m.$\{path\}xm4.msky130_fd_pr__pfet_01v8[vds])}
C {test_jens/ngspice_get_value_inline2.sym} 810 -590 0 0 {name=r63 descr="Vgs" node=v(@m.$\{path\}xm4.msky130_fd_pr__pfet_01v8[vgs])
}
C {test_jens/ngspice_get_value_inline2.sym} 810 -570 0 0 {name=r65 descr="vdsat" node=v(@m.$\{path\}xm4.msky130_fd_pr__pfet_01v8[vdsat])
}
C {sky130_fd_pr/nfet_01v8.sym} 860 -190 0 0 {name=M3
L=0.3
W=60
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/opin.sym} 540 -480 0 1 {name=p6 lab=out_n}
C {devices/opin.sym} 1260 -480 0 0 {name=p7 lab=out_p}
C {devices/ipin.sym} 900 -430 3 0 {name=p8 lab=vtune}
C {devices/ngspice_probe.sym} 620 -480 2 1 {name=r2}
C {devices/ngspice_probe.sym} 1180 -480 2 0 {name=r3}
C {test_jens/ngspice_get_value_inline2.sym} 810 -580 0 0 {name=r4 descr="Vth" node=v(@m.$\{path\}xm4.msky130_fd_pr__pfet_01v8[vth])
}
C {sky130_fd_pr/nfet_01v8.sym} 760 -130 0 0 {name=M10
L=0.15
W=0.5
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
C {sky130_stdcells/inv_1.sym} 340 -650 0 0 {name=x1 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 1460 -650 0 1 {name=x2 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 290 -650 0 0 {name=l1 sig_type=std_logic lab=sdn}
C {lab_wire.sym} 1510 -650 0 1 {name=l2 sig_type=std_logic lab=sdn}
C {devices/ipin.sym} 710 -130 0 0 {name=p9 lab=sdn}
C {test_jens/ngspice_get_value_inline2.sym} 630 -610 0 0 {name=r5 descr="Id" node=i(@m.$\{path\}xm6.msky130_fd_pr__pfet_01v8[id])
}
C {test_jens/ngspice_get_value_inline2.sym} 630 -600 0 0 {name=r6 descr="vds" node=v(@m.$\{path\}xm6.msky130_fd_pr__pfet_01v8[vds])}
C {test_jens/ngspice_get_value_inline2.sym} 630 -590 0 0 {name=r7 descr="Vgs" node=v(@m.$\{path\}xm6.msky130_fd_pr__pfet_01v8[vgs])
}
C {test_jens/ngspice_get_value_inline2.sym} 630 -570 0 0 {name=r22 descr="vdsat" node=v(@m.$\{path\}xm6.msky130_fd_pr__pfet_01v8[vdsat])
}
C {test_jens/ngspice_get_value_inline2.sym} 630 -580 0 0 {name=r23 descr="Vth" node=v(@m.$\{path\}xm6.msky130_fd_pr__pfet_01v8[vth])
}
C {test_jens/ngspice_get_value_inline2.sym} 1170 -610 0 1 {name=r24 descr="Id" node=i(@m.$\{path\}xm7.msky130_fd_pr__pfet_01v8[id])
}
C {test_jens/ngspice_get_value_inline2.sym} 1170 -600 0 1 {name=r25 descr="vds" node=v(@m.$\{path\}xm7.msky130_fd_pr__pfet_01v8[vds])}
C {test_jens/ngspice_get_value_inline2.sym} 1170 -590 0 1 {name=r26 descr="Vgs" node=v(@m.$\{path\}xm7.msky130_fd_pr__pfet_01v8[vgs])
}
C {test_jens/ngspice_get_value_inline2.sym} 1170 -580 0 1 {name=r27 descr="vth" node=v(@m.$\{path\}xm7.msky130_fd_pr__pfet_01v8[vth])
}
C {test_jens/ngspice_get_value_inline2.sym} 1170 -570 0 1 {name=r28 descr="vdsat" node=v(@m.$\{path\}xm7.msky130_fd_pr__pfet_01v8[vdsat])
}
C {sky130_fd_pr/pfet_01v8.sym} 780 -650 0 0 {name=M4
L=0.15
W=8
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
C {sky130_fd_pr/pfet_01v8.sym} 1020 -650 0 1 {name=M5
L=0.15
W=8
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
C {sky130_fd_pr/pfet_01v8.sym} 1200 -650 0 1 {name=M7
L=0.15
W=16
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
C {sky130_fd_pr/pfet_01v8.sym} 600 -650 0 0 {name=M6
L=0.15
W=16
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
C {sky130_fd_pr/pfet_01v8.sym} 420 -650 0 0 {name=M8
L=0.15
W=0.5
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
C {sky130_fd_pr/pfet_01v8.sym} 1380 -650 0 1 {name=M9
L=0.15
W=0.5
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
C {sky130_fd_pr/nfet_01v8.sym} 600 -350 0 0 {name=M1
L=0.15
W=16
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
C {sky130_fd_pr/nfet_01v8.sym} 1200 -350 0 1 {name=M2
L=0.15
W=16
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
C {sky130_fd_pr/cap_var_lvt.sym} 790 -440 3 0 {name=C1 model=cap_var_lvt W=7 L=4 VM=3 spiceprefix=X}
C {sky130_fd_pr/cap_var_lvt.sym} 1010 -440 1 1 {name=C2 model=cap_var_lvt W=7 L=4 VM=3 spiceprefix=X}
