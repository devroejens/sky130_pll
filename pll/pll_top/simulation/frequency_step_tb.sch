v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 40 -80 40 -40 { lab=gnd}
N 40 -400 40 -340 { lab=vdd}
N 40 -180 40 -140 { lab=vdd_0}
N 160 -400 160 -340 { lab=vss}
N 160 -180 160 -40 { lab=gnd}
N 40 -280 40 -240 { lab=vdd_1}
N 160 -280 160 -240 { lab=vss_1}
N 1440 -380 1440 -340 { lab=vss}
N 700 -380 700 -340 { lab=vss}
N 700 -460 700 -440 { lab=ctrl}
N 980 -440 1020 -440 { lab=ctrl}
N 980 -400 1020 -400 { lab=vss}
N 1220 -400 1260 -400 { lab=vss}
N 1220 -440 1260 -440 { lab=clk}
N 1440 -480 1440 -440 { lab=clk}
C {devices/code.sym} 10 -810 0 0 {name=SIM only_toplevel=false value="

*.option savecurrents
*.option rshunt = 1e12
*.option gmin = 1e-24

** Settings for PSS osciallator
*.option reltol=1e-5
*.option vntol=3e-8
*.option abstol=1e-13
**.option chgtol=1e-12
.option trtol=5
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
write pll_components_tb.raw all

* #################################################################
* #
* #                 TRANSIENT OSCILATION REGIME
* #
* #################################################################
reset
setplot const
*save all
save v(vdd) v(vdd_1) v(vss) v(vss_1)
save v(ctrl) v(clk) x1.v(clk_f1) x1.v(clk_f2)

tran 0.05n 10u uic
set filetype=ascii
write frequency_step_tb_tran.raw v(clk)

* Plot outputs
plot v(ctrl) v(clk)-2

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
C {devices/ammeter.sym} 40 -210 0 0 {name=Vmeas_vdd current=-8.2517e-10}
C {lab_wire.sym} 40 -180 3 0 {name=l10 sig_type=std_logic lab=vdd_0
}
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
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/dfbbn/sky130_fd_sc_hd__dfbbn_1.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/dfbbn/sky130_fd_sc_hd__dfbbn_2.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/dfbbp/sky130_fd_sc_hd__dfbbp_1.spice
.include \\\\$::SKYWATER_STDCELLS_HS\\\\/cells/dfbbn/sky130_fd_sc_hs__dfbbn_1.spice
.include \\\\$::SKYWATER_STDCELLS_HS\\\\/cells/dfbbn/sky130_fd_sc_hs__dfbbn_2.spice
.include \\\\$::SKYWATER_STDCELLS_HS\\\\/cells/dfrbp/sky130_fd_sc_hs__dfrbp_1.spice
.include \\\\$::SKYWATER_STDCELLS_HS\\\\/cells/dfrbp/sky130_fd_sc_hs__dfrbp_2.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/dfrtp/sky130_fd_sc_hd__dfrtp_1.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/dfrtp/sky130_fd_sc_hd__dfrtp_2.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/dfxbp/sky130_fd_sc_hd__dfxbp_1.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/dfxbp/sky130_fd_sc_hd__dfxbp_2.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/or2/sky130_fd_sc_hd__or2_0.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/or3/sky130_fd_sc_hd__or3_1.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/nor2/sky130_fd_sc_hd__nor2_1.spice
"}
C {lab_wire.sym} 160 -80 3 0 {name=l45 sig_type=std_logic lab=gnd}
C {lab_wire.sym} 160 -390 3 0 {name=l47 sig_type=std_logic lab=vss}
C {devices/ammeter.sym} 160 -210 0 0 {name=Vmeas_vss current=9.2265e-10}
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
C {devices/ngspice_probe.sym} 40 -340 0 0 {name=r8}
C {devices/res.sym} 1440 -410 2 0 {name=Rload
value=1meg
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1440 -380 3 0 {name=l11 sig_type=std_logic lab=vss}
C {lab_wire.sym} 700 -380 3 0 {name=l13 sig_type=std_logic lab=vss}
C {devices/vsource.sym} 700 -410 0 0 {name=Vctrl value="dc 0 pulse 0 1.8 5u 0.01n 0.01n 5u"}
C {lab_wire.sym} 700 -460 0 0 {name=l16 sig_type=std_logic lab=ctrl}
C {test_jens/pll/switch_freq_source.sym} 1120 -420 0 0 {name=x1 vhigh=1.8 vlow=0 f1=10meg f2=20meg}
C {lab_wire.sym} 1020 -400 0 0 {name=l4 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1020 -440 0 0 {name=l5 sig_type=std_logic lab=ctrl}
C {lab_wire.sym} 1220 -400 0 1 {name=l6 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1220 -440 0 1 {name=l7 sig_type=std_logic lab=clk}
C {lab_wire.sym} 1440 -440 3 1 {name=l8 sig_type=std_logic lab=clk}
