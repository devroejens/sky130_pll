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
N 1040 -550 1040 -520 { lab=vdd}
N 1040 -380 1040 -350 { lab=vss}
N 830 -490 940 -490 { lab=up}
N 730 -470 940 -470 { lab=down}
N 900 -420 940 -420 { lab=sdn}
N 1000 -80 1000 -40 { lab=vss}
N 1000 -180 1000 -140 { lab=ibias_cp}
N 1000 -380 1000 -320 { lab=ibias_cp}
N 1280 -370 1280 -330 { lab=vss}
N 1280 -450 1280 -430 { lab=vout_cp}
N 1140 -450 1180 -450 { lab=#net1}
N 1240 -450 1280 -450 { lab=vout_cp}
N 1380 -370 1380 -330 { lab=vss}
N 1280 -450 1380 -450 { lab=vout_cp}
N 1380 -450 1380 -430 { lab=vout_cp}
C {devices/code.sym} 10 -810 0 0 {name=SIM only_toplevel=false value="

.option savecurrents
*.option rshunt = 1e12
*.option gmin = 1e-24

** Settings for PSS osciallator
*.option reltol=1e-5
*.option vntol=3e-8
*.option abstol=1e-13
**.option chgtol=1e-12
*.option trtol=10
.option method=gear

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
write pll_cp_tb.raw all

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
save v(up) v(up2)
save v(vout_cp)
save i(Vmeas_cp_cur)
save i(v.x2.Vcp1) i(v.x2.Vcp2)

tran 0.05n 2u uic
set filetype=ascii
write pll_cp_tb_tran.raw v(ref) v(fb) v(sdn) v(up) v(down)

* Plot outputs
plot v(sdn)+10 v(ref)+8 v(fb)+6 v(up)+4 v(down)+2 v(vout_cp)

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
C {devices/vsource.sym} 40 -110 0 0 {name=V1 value="DC 1.8 PWL(0 0 10n 1.8)"}
C {devices/gnd.sym} 160 -40 0 0 {name=l1 lab=gnd}
C {lab_wire.sym} 40 -390 3 0 {name=l2 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 40 -80 3 0 {name=l3 sig_type=std_logic lab=gnd}
C {devices/ammeter.sym} 40 -210 0 0 {name=Vmeas_vdd current=-1.3170e-04}
C {lab_wire.sym} 40 -180 3 0 {name=l10 sig_type=std_logic lab=vdd_0
}
C {devices/vsource.sym} 340 -110 0 0 {name=Vref value="dc 0 pulse 0 1.8 100n 0.1n 0.1n 100n 200n"}
C {devices/vsource.sym} 460 -110 0 0 {name=Vfd value="dc 0 pulse 0 1.8 100n 0.1n 0.1n 100n 200n"}
C {devices/vsource.sym} 580 -110 0 0 {name=Vsdn value="dc 0 pulse 1.8 0 500n 0.1n 0.1n 3600 3600"}
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
C {devices/ammeter.sym} 160 -210 0 0 {name=Vmeas_vss current=1.3170e-04}
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
C {devices/ngspice_probe.sym} 650 -490 0 0 {name=r3}
C {devices/ngspice_probe.sym} 650 -470 0 0 {name=r4}
C {lab_wire.sym} 1040 -520 3 1 {name=l17 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 1040 -380 3 0 {name=l18 sig_type=std_logic lab=vss}
C {lab_wire.sym} 940 -420 0 0 {name=l19 sig_type=std_logic lab=sdn}
C {devices/isource.sym} 1000 -110 0 0 {name=I0 value=25u}
C {lab_wire.sym} 1000 -80 3 0 {name=l20 sig_type=std_logic lab=vss}
C {devices/ngspice_probe.sym} 1000 -140 0 0 {name=r5}
C {lab_wire.sym} 1000 -140 3 1 {name=l21 sig_type=std_logic lab=ibias_cp}
C {lab_wire.sym} 1000 -380 3 0 {name=l22 sig_type=std_logic lab=ibias_cp}
C {lab_wire.sym} 1280 -370 3 0 {name=l23 sig_type=std_logic lab=vss}
C {devices/vsource.sym} 1210 -450 3 0 {name=Vmeas_cp_cur value=0}
C {lab_wire.sym} 1250 -450 0 1 {name=l24 sig_type=std_logic lab=vout_cp}
C {devices/ngspice_probe.sym} 1280 -430 0 0 {name=r7}
C {devices/res.sym} 1380 -400 0 0 {name=Rlup1
value=10meg
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1380 -370 3 0 {name=l25 sig_type=std_logic lab=vss}
C {devices/ngspice_probe.sym} 40 -340 0 0 {name=r8}
C {devices/capa.sym} 1280 -400 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {test_jens/pll/pll_pfd/pll_pfd.sym} 460 -450 0 0 {name=x1}
C {test_jens/pll/pll_cp/pll_cp.sym} 1040 -450 0 0 {name=x2}
