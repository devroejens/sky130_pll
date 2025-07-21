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
N 160 -400 160 -340 { lab=vss}
N 160 -180 160 -40 { lab=gnd}
N 40 -280 40 -240 { lab=vdd_1}
N 160 -280 160 -240 { lab=vss_1}
N 340 -180 340 -140 { lab=clk}
N 460 -180 460 -140 { lab=rst}
N 1290 -300 1290 -260 { lab=vss}
N 1060 -350 1060 -310 { lab=vss}
N 1060 -510 1060 -470 { lab=vdd}
N 910 -430 960 -430 { lab=clk}
N 910 -410 960 -410 { lab=rst}
N 1160 -430 1210 -430 { lab=clk_out}
N 340 -390 770 -390 { lab="vss, vss, vss, vdd, vss, vss, vdd, vdd, vss, vss, vss, vss"}
N 830 -390 960 -390 { lab=div[0:11]}
N 1210 -430 1380 -430 { lab=clk_out}
N 1360 -460 1580 -460 { lab=dfb}
N 1620 -300 1620 -260 { lab=vss}
N 1560 -430 1610 -430 { lab=clk_out_2}
N 1360 -460 1360 -410 { lab=dfb}
N 1360 -410 1380 -410 { lab=dfb}
N 1560 -410 1580 -410 { lab=dfb}
N 1580 -460 1580 -410 { lab=dfb}
N 1350 -370 1380 -370 { lab=vdd}
N 1350 -390 1380 -390 { lab=vdd}
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
write pll_divider_tb.raw all

* #################################################################
* #
* #                 TRANSIENT OSCILATION REGIME
* #
* #################################################################
reset
setplot const
*save all
save v(vdd) v(vdd_1) v(vss) v(vss_1)
save v(clk) v(clk_out) v(clk_out_2)
save v(x1.ps_out) v(x1.ps_out_b) v(x1.ps_mod)
save v(\\'x1.q<0>\\') v(\\'x1.q<1>\\') v(\\'x1.q<2>\\') v(\\'x1.q<3>\\') v(\\'x1.q<4>\\') v(\\'x1.q<5>\\') v(\\'x1.q<6>\\') v(\\'x1.q<7>\\') v(\\'x1.q<8>\\') v(\\'x1.q<9>\\') v(\\'x1.q<10>\\') v(\\'x1.q<11>\\')
save v(x1.div_rst) v(x1.int_rst) v(x1.div_rst_b) v(x1.ps_out_b) v(x1.rst_0_2) v(x1.rst_3_11)

tran 0.05n 1u uic
set filetype=ascii
write pll_divider_tb_tran.raw v(clk) v(clk_out)

* Plot outputs
plot v(clk)+2 v(clk_out)+0 v(clk_out_2)-1
plot v(clk)+28 v(x1.ps_out)+26 v(x1.ps_mod)+24 v(\\"x1.q<0>\\")+22 v(\\"x1.q<1>\\")+20 v(\\"x1.q<2>\\")+18 v(\\"x1.q<3>\\")+16 v(\\"x1.q<4>\\")+14 v(\\"x1.q<5>\\")+12 v(\\"x1.q<6>\\")+10 v(\\"x1.q<7>\\")+8 v(\\"x1.q<8>\\")+6 v(\\"x1.q<9>\\")+4 v(\\"x1.q<10>\\")+2 v(\\"x1.q<11>\\")+0 v(x1.div_rst)-2 v(x1.int_rst)-4  v(x1.div_rst_b)-6 v(x1.rst_0_2)-8 v(x1.rst_3_11)-10 v(x1.ps_out_b)-12 v(clk_out)-14

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
C {devices/vsource.sym} 340 -110 0 0 {name=Vref value="dc 0 pulse 0 1.8 50n 0.01n 0.01n 0.25n 0.5n"}
C {devices/vsource.sym} 460 -110 0 0 {name=Vfd value="dc 0 pulse 0 1.8 20n 0.1n 0.1n 10n 3600"}
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
C {lab_wire.sym} 340 -80 3 0 {name=l12 sig_type=std_logic lab=vss}
C {lab_wire.sym} 460 -80 3 0 {name=l33 sig_type=std_logic lab=vss}
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
C {devices/ngspice_probe.sym} 340 -140 0 0 {name=r1}
C {lab_wire.sym} 340 -180 3 0 {name=l4 sig_type=std_logic lab=clk}
C {devices/ngspice_probe.sym} 460 -140 0 0 {name=r2}
C {lab_wire.sym} 460 -180 3 0 {name=l5 sig_type=std_logic lab=rst}
C {devices/ngspice_probe.sym} 40 -340 0 0 {name=r8}
C {devices/res.sym} 1290 -330 0 0 {name=Rvdd2
value=1meg
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1290 -300 3 0 {name=l6 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1060 -470 3 1 {name=l8 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 1060 -350 3 0 {name=l9 sig_type=std_logic lab=vss}
C {lab_wire.sym} 940 -430 0 0 {name=l11 sig_type=std_logic lab=clk}
C {lab_wire.sym} 940 -410 0 0 {name=l15 sig_type=std_logic lab=rst}
C {lab_wire.sym} 1170 -430 0 1 {name=l16 sig_type=std_logic lab=clk_out}
C {lab_wire.sym} 1290 -360 0 1 {name=l17 sig_type=std_logic lab=clk_out}
C {lab_wire.sym} 360 -390 0 1 {name=l7 sig_type=std_logic lab="vss, vss, vss, vdd, vss, vss, vdd, vdd, vss, vss, vss, vss"}
C {lab_wire.sym} 940 -390 0 0 {name=l18 sig_type=std_logic lab=div[0:11]}
C {devices/res.sym} 800 -390 1 0 {name=Rcc[0:11]
value=1m
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1560 -430 0 1 {name=l13 sig_type=std_logic lab=clk_out_2}
C {devices/res.sym} 1620 -330 0 0 {name=Rvdd3
value=1meg
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1620 -300 3 0 {name=l14 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1620 -360 0 1 {name=l19 sig_type=std_logic lab=clk_out_2}
C {lab_wire.sym} 1450 -460 0 1 {name=l20 sig_type=std_logic lab=dfb}
C {sky130_stdcells/dfbbp_1.sym} 1470 -400 0 0 {name=x2 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 1380 -370 0 0 {name=l21 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 1380 -390 0 0 {name=l22 sig_type=std_logic lab=vdd
}
C {test_jens/pll/pll_divider/pll_divider.sym} 1060 -410 0 1 {name=x1}
