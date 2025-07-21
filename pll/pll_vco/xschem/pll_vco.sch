v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1160 -500 1270 -500 { lab=phi[2]}
N 1160 -460 1260 -460 { lab=phi[6]}
N 920 -500 1020 -500 { lab=phi[1]}
N 920 -460 1020 -460 { lab=phi[5]}
N 680 -460 780 -460 { lab=phi[4]}
N 680 -500 780 -500 { lab=phi[0]}
N 1320 -580 1320 -560 { lab=vtune}
N 600 -580 600 -560 { lab=vtune}
N 840 -580 840 -560 { lab=vtune}
N 1080 -580 1080 -560 { lab=vtune}
N 620 -600 620 -560 { lab=vdd}
N 1340 -600 1340 -560 { lab=vdd}
N 1100 -600 1100 -560 { lab=vdd}
N 860 -600 860 -560 { lab=vdd}
N 1320 -400 1320 -360 { lab=Ibias}
N 600 -400 600 -360 { lab=Ibias}
N 840 -400 840 -360 { lab=Ibias}
N 1080 -400 1080 -360 { lab=Ibias}
N 460 -500 540 -460 { lab=phi[3]}
N 460 -460 540 -500 { lab=phi[7]}
N 1500 -680 1500 -500 { lab=phi[3]}
N 460 -680 460 -500 { lab=phi[3]}
N 460 -460 460 -280 { lab=phi[7]}
N 1500 -460 1500 -280 { lab=phi[7]}
N 1400 -500 1500 -500 { lab=phi[3]}
N 1400 -460 1500 -460 { lab=phi[7]}
N 460 -680 1500 -680 { lab=phi[3]}
N 460 -280 1500 -280 { lab=phi[7]}
N 520 -340 1340 -340 { lab=vss}
N 520 -600 1340 -600 { lab=vdd}
N 520 -580 1320 -580 { lab=vtune}
N 340 -330 340 -300 { lab=vss}
N 320 -360 340 -360 { lab=vss}
N 320 -360 320 -300 { lab=vss}
N 320 -300 340 -300 { lab=vss}
N 340 -300 340 -280 { lab=vss}
N 380 -360 1320 -360 { lab=Ibias}
N 340 -460 340 -390 { lab=Ibias}
N 400 -420 400 -360 { lab=Ibias}
N 340 -420 400 -420 { lab=Ibias}
N 750 -180 810 -180 { lab=#net1}
N 890 -180 950 -180 { lab=#net2}
N 1030 -180 1090 -180 { lab=vco_out[0:7]}
N 610 -180 670 -180 { lab=phi[0:7]}
N 1090 -180 1150 -180 { lab=vco_out[0:7]}
N 520 -380 1300 -380 { lab=sdn}
N 1300 -400 1300 -380 { lab=sdn}
N 1060 -400 1060 -380 { lab=sdn}
N 820 -400 820 -380 { lab=sdn}
N 580 -400 580 -380 { lab=sdn}
N 620 -400 620 -340 { lab=vss}
N 860 -400 860 -340 { lab=vss}
N 1100 -400 1100 -340 { lab=vss}
N 1340 -400 1340 -340 { lab=vss}
C {devices/code.sym} 140 -690 0 0 {name=SIM only_toplevel=false value="
.control
save i(@m."$\{path\}"xm1.msky130_fd_pr__nfet_01v8[id])
save @m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[gm]
save v(@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[vds])
save v(@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[vgs])
save v(@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[vth])
save v(@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[vdsat])

save i(@m.$\{path\}xm2.msky130_fd_pr__nfet_01v8[id])
save @m.$\{path\}xm2.msky130_fd_pr__nfet_01v8[gm]
save v(@m.$\{path\}xm2.msky130_fd_pr__nfet_01v8[vds])
save v(@m.$\{path\}xm2.msky130_fd_pr__nfet_01v8[vgs])
save v(@m.$\{path\}xm2.msky130_fd_pr__nfet_01v8[vth])
save v(@m.$\{path\}xm2.msky130_fd_pr__nfet_01v8[vdsat])
.endc
"}
C {devices/launcher.sym} 210 -550 0 0 {name=h1
descr=Annotate
tclcommand="ngspice::annotate"}
C {devices/iopin.sym} 530 -340 0 1 {name=p1 lab=vss}
C {devices/iopin.sym} 530 -600 0 1 {name=p2 lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 360 -360 0 1 {name=M0
L=0.3
W=10
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
C {lab_wire.sym} 740 -500 0 0 {name=l2 sig_type=std_logic lab=phi[0]}
C {lab_wire.sym} 980 -500 0 0 {name=l1 sig_type=std_logic lab=phi[1]}
C {lab_wire.sym} 1220 -500 0 0 {name=l3 sig_type=std_logic lab=phi[2]}
C {lab_wire.sym} 1460 -500 0 0 {name=l4 sig_type=std_logic lab=phi[3]}
C {lab_wire.sym} 740 -460 0 0 {name=l5 sig_type=std_logic lab=phi[4]}
C {lab_wire.sym} 980 -460 0 0 {name=l6 sig_type=std_logic lab=phi[5]}
C {lab_wire.sym} 1220 -460 0 0 {name=l7 sig_type=std_logic lab=phi[6]}
C {lab_wire.sym} 1460 -460 0 0 {name=l8 sig_type=std_logic lab=phi[7]}
C {devices/iopin.sym} 530 -580 0 1 {name=p3 lab=vtune}
C {devices/iopin.sym} 340 -450 1 1 {name=p4 lab=Ibias}
C {lab_wire.sym} 340 -280 1 0 {name=l9 sig_type=std_logic lab=vss}
C {devices/opin.sym} 1140 -180 0 0 {name=p5 lab=vco_out[0:7]}
C {devices/ngspice_probe.sym} 410 -360 0 0 {name=r1}
C {devices/ngspice_probe.sym} 460 -500 0 0 {name=r2}
C {devices/ngspice_probe.sym} 460 -460 0 0 {name=r3}
C {devices/ngspice_probe.sym} 740 -500 0 0 {name=r4}
C {devices/ngspice_probe.sym} 740 -460 0 0 {name=r5}
C {devices/ngspice_probe.sym} 980 -500 0 0 {name=r6}
C {devices/ngspice_probe.sym} 980 -460 0 0 {name=r7}
C {devices/ngspice_probe.sym} 1220 -500 0 0 {name=r8}
C {devices/ngspice_probe.sym} 1220 -460 0 0 {name=r9}
C {devices/ngspice_probe.sym} 1460 -500 0 0 {name=r10}
C {devices/ngspice_probe.sym} 1460 -460 0 0 {name=r11}
C {sky130_stdcells/inv_1.sym} 710 -180 0 0 {name=x5[0:7] VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hs__}
C {sky130_stdcells/inv_2.sym} 850 -180 0 0 {name=x6[0:7] VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hs__}
C {sky130_stdcells/inv_4.sym} 990 -180 0 0 {name=x7[0:7] VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hs__}
C {lab_wire.sym} 1030 -180 0 1 {name=l11 sig_type=std_logic lab=vco_out[0:7]}
C {lab_wire.sym} 670 -180 0 0 {name=l12 sig_type=std_logic lab=phi[0:7]}
C {devices/iopin.sym} 530 -380 0 1 {name=p6 lab=sdn}
C {pll_vco_cell/xschem/pll_vco_cell.sym} 600 -480 0 0 {name=x1}
C {pll_vco_cell/xschem/pll_vco_cell.sym} 840 -480 0 0 {name=x2}
C {pll_vco_cell/xschem/pll_vco_cell.sym} 1080 -480 0 0 {name=x3}
C {pll_vco_cell/xschem/pll_vco_cell.sym} 1320 -480 0 0 {name=x4}
