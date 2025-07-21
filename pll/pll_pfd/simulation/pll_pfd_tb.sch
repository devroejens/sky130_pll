v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 40 -80 40 -40 { lab=gnd}
N 40 -400 40 -340 { lab=vdd}
N 40 -180 40 -140 { lab=vdd_0}
N 340 -80 340 -40 { lab=vss}
N 460 -80 460 -40 { lab=vss}
N 580 -80 580 -40 { lab=vss}
N 580 -180 580 -140 { lab=sdn}
N 160 -400 160 -340 { lab=vss}
N 160 -180 160 -40 { lab=gnd}
N 40 -280 40 -240 { lab=vdd_1}
N 160 -280 160 -240 { lab=vss_1}
N 460 -380 460 -350 { lab=vss}
N 460 -550 460 -520 { lab=vdd}
N 320 -490 360 -490 { lab=sdn}
N 340 -180 340 -140 { lab=ref}
N 460 -180 460 -140 { lab=fb}
N 320 -470 360 -470 { lab=ref}
N 320 -450 360 -450 { lab=fb}
N 830 -370 830 -330 { lab=vss}
N 730 -370 730 -330 { lab=vss}
N 560 -470 730 -470 { lab=down}
N 730 -470 730 -430 { lab=down}
N 560 -490 830 -490 { lab=up}
N 830 -490 830 -430 { lab=up}
N 1050 -650 1050 -620 { lab=vdd}
N 1050 -220 1050 -190 { lab=vss}
N 1050 -460 1050 -430 { lab=vss}
N 1050 -410 1050 -380 { lab=vdd}
N 900 -540 960 -540 { lab=up}
N 900 -300 960 -300 { lab=down}
N 1320 -200 1320 -160 { lab=vss}
N 1220 -200 1220 -160 { lab=vss}
N 1320 -440 1320 -400 { lab=vss}
N 1220 -440 1220 -400 { lab=vss}
N 1140 -280 1220 -280 { lab=down2}
N 1220 -280 1220 -260 { lab=down2}
N 1140 -320 1320 -320 { lab=down1}
N 1320 -320 1320 -260 { lab=down1}
N 1140 -520 1220 -520 { lab=up2}
N 1140 -560 1320 -560 { lab=up1}
N 1320 -560 1320 -500 { lab=up1}
N 1220 -520 1220 -500 { lab=up2}
N 1530 -650 1530 -620 { lab=vdd}
N 1530 -460 1530 -430 { lab=vss}
N 1530 -410 1530 -380 { lab=vdd}
N 1530 -220 1530 -190 { lab=vss}
N 1800 -440 1800 -400 { lab=vss}
N 1700 -440 1700 -400 { lab=vss}
N 1620 -520 1700 -520 { lab=up1_out_b}
N 1620 -560 1800 -560 { lab=up1_out}
N 1800 -560 1800 -500 { lab=up1_out}
N 1700 -520 1700 -500 { lab=up1_out_b}
N 1800 -200 1800 -160 { lab=vss}
N 1700 -200 1700 -160 { lab=vss}
N 1620 -280 1700 -280 { lab=up2_out_b}
N 1620 -320 1800 -320 { lab=up2_out}
N 1800 -320 1800 -260 { lab=up2_out}
N 1700 -280 1700 -260 { lab=up2_out_b}
N 1380 -540 1440 -540 { lab=up1}
N 1380 -300 1440 -300 { lab=up2}
C {devices/code.sym} 10 -810 0 0 {name=SIM only_toplevel=false value="

*.option savecurrents
*.option rshunt = 1e12
*.option gmin = 1e-24

** Settings for PSS osciallator
*.option reltol=1e-5
*.option vntol=3e-8
*.option abstol=1e-13
**.option chgtol=1e-12
*.option trtol=10
*.option method=gear

.control

* #################################################################
* #
* #                         OPERATING POINT
* #
* #################################################################
reset
save all

op
set filetype=binary
write pll_pfd_tb.raw all

* #################################################################
* #
* #                 TRANSIENT OSCILATION REGIME
* #
* #################################################################
reset
setplot const
save all
save v(ref)
save v(fb)
save v(sdn)
save v(up) v(up1) v(up1_out) v(up1_out_b) v(up2) v(up2_out) v(up2_out_b) 
save v(down) v(down1) v(down2)
save v(x2.clkb) v(x2.clk1b) v(x2.clk1fb) v(x2.clk2b) v(x2.clk2fb)
save v(x4.stor_node) v(x4.stor_node_b)

tran 0.05n 1u
set filetype=ascii
write pll_pfd_tb_tran.raw v(ref) v(fb) v(sdn) v(up) v(up1) v(up2) v(down) v(down1) v(down2)

* Plot outputs
plot v(sdn)+16 v(ref)+14 v(fb)+12 v(up)+10 v(up1)+8 v(up2)+6 v(down)+4 v(down1)+2 v(down2)+0
plot v(up1)+10 v(up1_out)+8 v(up1_out_b)+6 v(up2)+4 v(up2_out)+2 v(up2_out_b)+0
plot v(x4.stor_node) v(x4.stor_node_b)

*rusage
.endc
"}
C {devices/code.sym} 150 -810 0 0 {name=TT_MODELS
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
C {devices/launcher.sym} 80 -520 0 0 {name=h1
descr=Annotate
tclcommand="ngspice::annotate"}
C {devices/launcher.sym} 80 -480 0 0 {name=h2
descr="View Raw" 
tclcommand="textwindow $netlist_dir/test_nmos.raw"}
C {devices/vsource.sym} 40 -110 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 160 -40 0 0 {name=l1 lab=gnd}
C {lab_wire.sym} 40 -390 3 0 {name=l2 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 40 -80 3 0 {name=l3 sig_type=std_logic lab=gnd}
C {devices/ammeter.sym} 40 -210 0 0 {name=Vmeas_vdd current=-0.008833}
C {lab_wire.sym} 40 -180 3 0 {name=l10 sig_type=std_logic lab=vdd_0
}
C {devices/vsource.sym} 340 -110 0 0 {name=Vref value="dc 0 pulse 0 1.8 100n 0.1n 0.1n 100n 200n"}
C {devices/vsource.sym} 460 -110 0 0 {name=Vfd value="dc 0 pulse 0 1.8 150n 0.1n 0.1n 100n 200n"}
C {devices/vsource.sym} 580 -110 0 0 {name=Vsdn value=0}
C {devices/ngspice_probe.sym} 580 -140 0 0 {name=r6}
C {lab_wire.sym} 580 -180 3 0 {name=l48 sig_type=std_logic lab=sdn}
C {devices/code.sym} 290 -810 0 0 {name=STDCELLS only_toplevel=false 
format="tcleval(@value )"
value="* .include \\\\$::SKYWATER_STDCELLS\\\\/cells/
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/buf/sky130_fd_sc_hd__buf_1.spice
.include \\\\$::SKYWATER_STDCELLS_HS\\\\/cells/buf/sky130_fd_sc_hs__buf_1.spice
.include \\\\$::SKYWATER_STDCELLS_HS\\\\/cells/buf/sky130_fd_sc_hs__buf_16.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/clkbuf/sky130_fd_sc_hd__clkbuf_1.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/clkbuf/sky130_fd_sc_hd__clkbuf_2.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/clkbuf/sky130_fd_sc_hd__clkbuf_4.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/clkbuf/sky130_fd_sc_hd__clkbuf_8.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/clkbuf/sky130_fd_sc_hd__clkbuf_16.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/decap/sky130_fd_sc_hd__decap_3.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/decap/sky130_fd_sc_hd__decap_4.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/decap/sky130_fd_sc_hd__decap_8.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/dfrbp/sky130_fd_sc_hd__dfrbp_1.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/dfrbp/sky130_fd_sc_hd__dfrbp_2.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/inv/sky130_fd_sc_hd__inv_1.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/inv/sky130_fd_sc_hd__inv_2.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/inv/sky130_fd_sc_hd__inv_4.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/inv/sky130_fd_sc_hd__inv_8.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/inv/sky130_fd_sc_hd__inv_16.spice
.include \\\\$::SKYWATER_STDCELLS_HS\\\\/cells/inv/sky130_fd_sc_hs__inv_1.spice
.include \\\\$::SKYWATER_STDCELLS_HS\\\\/cells/inv/sky130_fd_sc_hs__inv_2.spice
.include \\\\$::SKYWATER_STDCELLS_HS\\\\/cells/inv/sky130_fd_sc_hs__inv_4.spice
.include \\\\$::SKYWATER_STDCELLS_HS\\\\/cells/inv/sky130_fd_sc_hs__inv_8.spice
.include \\\\$::SKYWATER_STDCELLS_HS\\\\/cells/inv/sky130_fd_sc_hs__inv_16.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/mux2/sky130_fd_sc_hd__mux2_2.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/nand2/sky130_fd_sc_hd__nand2_1.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/tap/sky130_fd_sc_hd__tap_2.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/tapvpwrvgnd/sky130_fd_sc_hd__tapvpwrvgnd_1.spice
"}
C {lab_wire.sym} 580 -80 3 0 {name=l32 sig_type=std_logic lab=vss}
C {lab_wire.sym} 340 -80 3 0 {name=l12 sig_type=std_logic lab=vss}
C {lab_wire.sym} 460 -80 3 0 {name=l33 sig_type=std_logic lab=vss}
C {lab_wire.sym} 160 -80 3 0 {name=l45 sig_type=std_logic lab=gnd}
C {lab_wire.sym} 160 -390 3 0 {name=l47 sig_type=std_logic lab=vss}
C {devices/ammeter.sym} 160 -210 0 0 {name=Vmeas_vss current=0.008833}
C {devices/res.sym} 40 -310 0 0 {name=Rvdd
value=10m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 160 -310 0 0 {name=Rvdd1
value=10m
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 40 -280 3 0 {name=l29 sig_type=std_logic lab=vdd_1
}
C {lab_wire.sym} 160 -280 3 0 {name=l38 sig_type=std_logic lab=vss_1
}
C {lab_wire.sym} 460 -380 3 0 {name=l6 sig_type=std_logic lab=vss}
C {lab_wire.sym} 460 -520 3 1 {name=l7 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 360 -490 0 0 {name=l8 sig_type=std_logic lab=sdn}
C {devices/ngspice_probe.sym} 340 -140 0 0 {name=r1}
C {lab_wire.sym} 340 -180 3 0 {name=l4 sig_type=std_logic lab=ref}
C {devices/ngspice_probe.sym} 460 -140 0 0 {name=r2}
C {lab_wire.sym} 460 -180 3 0 {name=l5 sig_type=std_logic lab=fb}
C {lab_wire.sym} 360 -470 0 0 {name=l9 sig_type=std_logic lab=ref}
C {lab_wire.sym} 360 -450 0 0 {name=l11 sig_type=std_logic lab=fb}
C {devices/res.sym} 830 -400 0 0 {name=Rlup
value=1meg
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 830 -370 3 0 {name=l14 sig_type=std_logic lab=vss}
C {devices/res.sym} 730 -400 0 0 {name=Rldown
value=1meg
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 730 -370 3 0 {name=l15 sig_type=std_logic lab=vss}
C {lab_wire.sym} 610 -490 0 1 {name=l13 sig_type=std_logic lab=up}
C {lab_wire.sym} 610 -470 0 1 {name=l16 sig_type=std_logic lab=down}
C {lab_wire.sym} 1050 -620 3 1 {name=l17 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 1050 -220 3 0 {name=l18 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1050 -460 3 0 {name=l19 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1050 -380 3 1 {name=l20 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 920 -300 0 1 {name=l22 sig_type=std_logic lab=down}
C {devices/res.sym} 1320 -230 0 0 {name=Rlup1
value=1meg
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1320 -200 3 0 {name=l23 sig_type=std_logic lab=vss}
C {devices/res.sym} 1220 -230 0 0 {name=Rldown2
value=1meg
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1220 -200 3 0 {name=l24 sig_type=std_logic lab=vss}
C {devices/res.sym} 1320 -470 0 0 {name=Rlup2
value=1meg
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1320 -440 3 0 {name=l25 sig_type=std_logic lab=vss}
C {devices/res.sym} 1220 -470 0 0 {name=Rldown3
value=1meg
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1220 -440 3 0 {name=l26 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1170 -280 0 1 {name=l27 sig_type=std_logic lab=down2}
C {lab_wire.sym} 1170 -320 0 1 {name=l28 sig_type=std_logic lab=down1}
C {lab_wire.sym} 1170 -520 0 1 {name=l30 sig_type=std_logic lab=up2}
C {lab_wire.sym} 1170 -560 0 1 {name=l31 sig_type=std_logic lab=up1}
C {devices/ngspice_probe.sym} 650 -490 0 0 {name=r3}
C {devices/ngspice_probe.sym} 650 -470 0 0 {name=r4}
C {lab_wire.sym} 920 -540 0 1 {name=l35 sig_type=std_logic lab=up}
C {lab_wire.sym} 1530 -620 3 1 {name=l21 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 1530 -460 3 0 {name=l34 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1530 -380 3 1 {name=l36 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 1530 -220 3 0 {name=l37 sig_type=std_logic lab=vss}
C {devices/res.sym} 1800 -470 0 0 {name=Rlup3
value=1meg
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1800 -440 3 0 {name=l39 sig_type=std_logic lab=vss}
C {devices/res.sym} 1700 -470 0 0 {name=Rldown4
value=1meg
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1700 -440 3 0 {name=l40 sig_type=std_logic lab=vss}
C {devices/res.sym} 1800 -230 0 0 {name=Rlup4
value=1meg
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1800 -200 3 0 {name=l43 sig_type=std_logic lab=vss}
C {devices/res.sym} 1700 -230 0 0 {name=Rldown5
value=1meg
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1700 -200 3 0 {name=l44 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1400 -540 0 1 {name=l41 sig_type=std_logic lab=up1}
C {lab_wire.sym} 1400 -300 0 1 {name=l42 sig_type=std_logic lab=up2}
C {lab_wire.sym} 1650 -560 0 1 {name=l46 sig_type=std_logic lab=up1_out}
C {lab_wire.sym} 1650 -520 0 1 {name=l49 sig_type=std_logic lab=up1_out_b}
C {lab_wire.sym} 1650 -320 0 1 {name=l50 sig_type=std_logic lab=up2_out}
C {lab_wire.sym} 1650 -280 0 1 {name=l51 sig_type=std_logic lab=up2_out_b}
C {test_jens/pll/pll_pfd/pll_pfd.sym} 460 -450 0 0 {name=x1}
C {test_jens/pll/pll_nol_clkb/pll_nol_clkb.sym} 1060 -540 0 0 {name=x2}
C {test_jens/pll/pll_nol_clkb/pll_nol_clkb.sym} 1060 -300 0 0 {name=x3}
C {test_jens/pll/pll_sync_clkb/pll_sync_clkb.sym} 1540 -540 0 0 {name=x4}
C {test_jens/pll/pll_sync_clkb/pll_sync_clkb.sym} 1540 -300 0 0 {name=x5}
