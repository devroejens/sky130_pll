v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 40 -80 40 -40 { lab=gnd}
N 40 -400 40 -340 { lab=vdd}
N 40 -180 40 -140 { lab=vdd_0}
N 280 -80 280 -40 { lab=vss}
N 820 -80 820 -40 { lab=vss}
N 160 -400 160 -340 { lab=vss}
N 160 -180 160 -40 { lab=gnd}
N 40 -280 40 -240 { lab=vdd_1}
N 160 -280 160 -240 { lab=vss_1}
N 280 -180 280 -140 { lab=clk_ctrl}
N 820 -180 820 -140 { lab=rst}
N 960 -340 960 -300 { lab=vss}
N 960 -500 960 -460 { lab=vdd}
N 1200 -380 1630 -380 { lab="vss, vss, vdd, vss, vss, vdd, vdd, vss, vss, vss, vss, vss"}
N 960 -630 960 -590 { lab=vss}
N 960 -810 960 -770 { lab=vdd}
N 600 -630 600 -590 { lab=vss}
N 600 -810 600 -770 { lab=vdd}
N 460 -420 860 -420 { lab=clk_fb}
N 460 -700 460 -420 { lab=clk_fb}
N 460 -700 500 -700 { lab=clk_fb}
N 470 -720 500 -720 { lab=clk}
N 470 -740 500 -740 { lab=rst}
N 830 -670 860 -670 { lab=rst}
N 1780 -630 1780 -590 { lab=vss}
N 1780 -810 1780 -770 { lab=vdd}
N 1060 -400 1090 -400 { lab=rst}
N 1060 -380 1140 -380 { lab=div[0:11]}
N 1860 -700 1960 -700 { lab=clk_out[0:7]}
N 2060 -620 2060 -560 { lab=clk_out[0:7]}
N 1960 -700 1960 -560 { lab=clk_out[0:7]}
N 1960 -540 1960 -420 { lab=clk_out[0]}
N 2060 -500 2060 -460 { lab=vss}
N 1080 -80 1080 -40 { lab=vss}
N 920 -630 920 -590 { lab=ib_cp}
N 1700 -810 1700 -770 { lab=ib_vco}
N 1240 -80 1240 -40 { lab=ib_vco}
N 1080 -180 1080 -140 { lab=ib_cp}
N 1240 -180 1240 -140 { lab=vdd}
N 1110 -520 1110 -480 { lab=vss}
N 1110 -620 1110 -580 { lab=#net1}
N 700 -740 800 -740 { lab=up}
N 820 -720 860 -720 { lab=up}
N 700 -720 800 -720 { lab=down}
N 820 -740 860 -740 { lab=down}
N 1200 -520 1200 -480 { lab=vss}
N 1200 -700 1200 -580 { lab=vcp}
N 720 -80 720 -40 { lab=vss}
N 700 -90 720 -90 { lab=vss}
N 720 -90 720 -80 { lab=vss}
N 720 -180 720 -140 { lab=clk}
N 700 -130 720 -130 { lab=clk}
N 720 -140 720 -130 { lab=clk}
N 480 -80 480 -40 { lab=vss}
N 480 -90 500 -90 { lab=vss}
N 480 -90 480 -80 { lab=vss}
N 440 -130 500 -130 { lab=clk_ctrl}
N 1060 -700 1200 -700 { lab=vcp}
N 1160 -80 1160 -40 { lab=vss}
N 1160 -180 1160 -140 { lab=ib_buf}
N 1700 -630 1700 -590 { lab=rst}
N 1060 -420 1960 -420 { lab=clk_out[0]}
N 1580 -700 1620 -700 { lab=vtune}
N 1110 -700 1110 -680 { lab=vcp}
N 1280 -520 1280 -480 { lab=vss}
N 800 -740 820 -720 { lab=up}
N 800 -720 820 -740 { lab=down}
N 2180 -620 2180 -560 { lab=clk_out[0:7]}
N 2180 -500 2180 -460 { lab=vss}
N 1500 -700 1580 -700 { lab=vtune}
N 1280 -720 1280 -700 { lab=vcp}
N 1320 -680 1340 -680 { lab=vtune}
N 1420 -620 1420 -580 { lab=vss}
N 1420 -820 1420 -780 { lab=vdd}
N 1400 -810 1400 -780 { lab=rst}
N 1400 -620 1400 -580 { lab=ib_buf}
N 1320 -680 1320 -630 { lab=vtune}
N 1320 -630 1500 -630 { lab=vtune}
N 1500 -700 1500 -630 { lab=vtune}
N 1200 -700 1280 -700 { lab=vcp}
N 1280 -720 1340 -720 { lab=vcp}
C {devices/code.sym} 10 -810 0 0 {name=SIM only_toplevel=false value="

*.option savecurrents
*.option rshunt = 1e12
*.option gmin = 1e-24

** Settings for better convergence
*.option reltol=0.01
*.option vntol=1e-3
*.option abstol=1e-9
*.option chgtol=1e-9
*.option trtol=10
*.option ITL4=500
*.option method=gear
*.option acct


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
save v(clk_ctrl) v(clk) v(rst) v(clk_fb) v(up) v(down) v(vcp) v(vtune) v(\\'clk_out<0>\\') v(\\'clk_out<1>\\') v(\\'clk_out<2>\\') v(\\'clk_out<3>\\') v(\\'clk_out<4>\\') v(\\'clk_out<5>\\') v(\\'clk_out<6>\\') v(\\'clk_out<7>\\')

stop when time = 100n
stop when time = 250n
stop when time = 500n
stop when time = 1u
stop when time = 2u
stop when time = 4u
stop when time = 6u

*tran 0.001n 8u uic
tran 50p 16u 0 5p uic
set filetype=ascii
write pll_components_tb_tran_100n.raw v(clk_ctrl) v(clk) v(clk_fb) v(rst) v(up) v(down) v(vcp) v(vtune) v(\\"clk_out<0>\\") v(\\"clk_out<1>\\") v(\\"clk_out<2>\\") v(\\"clk_out<3>\\") v(\\"clk_out<4>\\") v(\\"clk_out<5>\\") v(\\"clk_out<6>\\") v(\\"clk_out<7>\\")
plot v(clk_ctrl)+30 v(rst)+28 v(clk)+26 v(clk_fb)+24 v(up)+22 v(down)+20 v(vcp)+18 v(vtune)+16 v(\\"clk_out<0>\\")+14 v(\\"clk_out<1>\\")+12 v(\\"clk_out<2>\\")+10 v(\\"clk_out<3>\\")+8 v(\\"clk_out<4>\\")+6 v(\\"clk_out<5>\\")+4 v(\\"clk_out<6>\\")+2 v(\\"clk_out<7>\\")+0

resume
set filetype=ascii
write pll_components_tb_tran_250n.raw v(clk_ctrl) v(clk) v(clk_fb) v(rst) v(up) v(down) v(vcp) v(vtune) v(\\"clk_out<0>\\") v(\\"clk_out<1>\\") v(\\"clk_out<2>\\") v(\\"clk_out<3>\\") v(\\"clk_out<4>\\") v(\\"clk_out<5>\\") v(\\"clk_out<6>\\") v(\\"clk_out<7>\\")
plot v(clk_ctrl)+30 v(rst)+28 v(clk)+26 v(clk_fb)+24 v(up)+22 v(down)+20 v(vcp)+18 v(vtune)+16 v(\\"clk_out<0>\\")+14 v(\\"clk_out<1>\\")+12 v(\\"clk_out<2>\\")+10 v(\\"clk_out<3>\\")+8 v(\\"clk_out<4>\\")+6 v(\\"clk_out<5>\\")+4 v(\\"clk_out<6>\\")+2 v(\\"clk_out<7>\\")+0

resume
set filetype=ascii
write pll_components_tb_tran_500n.raw v(clk_ctrl) v(clk) v(clk_fb) v(rst) v(up) v(down) v(vcp) v(vtune) v(\\"clk_out<0>\\") v(\\"clk_out<1>\\") v(\\"clk_out<2>\\") v(\\"clk_out<3>\\") v(\\"clk_out<4>\\") v(\\"clk_out<5>\\") v(\\"clk_out<6>\\") v(\\"clk_out<7>\\")
plot v(clk_ctrl)+30 v(rst)+28 v(clk)+26 v(clk_fb)+24 v(up)+22 v(down)+20 v(vcp)+18 v(vtune)+16 v(\\"clk_out<0>\\")+14 v(\\"clk_out<1>\\")+12 v(\\"clk_out<2>\\")+10 v(\\"clk_out<3>\\")+8 v(\\"clk_out<4>\\")+6 v(\\"clk_out<5>\\")+4 v(\\"clk_out<6>\\")+2 v(\\"clk_out<7>\\")+0

resume
set filetype=ascii
write pll_components_tb_tran_1000n.raw v(clk_ctrl) v(clk) v(clk_fb) v(rst) v(up) v(down) v(vcp) v(vtune) v(\\"clk_out<0>\\") v(\\"clk_out<1>\\") v(\\"clk_out<2>\\") v(\\"clk_out<3>\\") v(\\"clk_out<4>\\") v(\\"clk_out<5>\\") v(\\"clk_out<6>\\") v(\\"clk_out<7>\\")
plot v(clk_ctrl)+30 v(rst)+28 v(clk)+26 v(clk_fb)+24 v(up)+22 v(down)+20 v(vcp)+18 v(vtune)+16 v(\\"clk_out<0>\\")+14 v(\\"clk_out<1>\\")+12 v(\\"clk_out<2>\\")+10 v(\\"clk_out<3>\\")+8 v(\\"clk_out<4>\\")+6 v(\\"clk_out<5>\\")+4 v(\\"clk_out<6>\\")+2 v(\\"clk_out<7>\\")+0

resume
set filetype=ascii
write pll_components_tb_tran_2000n.raw v(clk_ctrl) v(clk) v(clk_fb) v(rst) v(up) v(down) v(vcp) v(vtune) v(\\"clk_out<0>\\") v(\\"clk_out<1>\\") v(\\"clk_out<2>\\") v(\\"clk_out<3>\\") v(\\"clk_out<4>\\") v(\\"clk_out<5>\\") v(\\"clk_out<6>\\") v(\\"clk_out<7>\\")

resume
set filetype=ascii
write pll_components_tb_tran_4000n.raw v(clk_ctrl) v(clk) v(clk_fb) v(rst) v(up) v(down) v(vcp) v(vtune) v(\\"clk_out<0>\\") v(\\"clk_out<1>\\") v(\\"clk_out<2>\\") v(\\"clk_out<3>\\") v(\\"clk_out<4>\\") v(\\"clk_out<5>\\") v(\\"clk_out<6>\\") v(\\"clk_out<7>\\")

resume
set filetype=ascii
write pll_components_tb_tran_6000n.raw v(clk_ctrl) v(clk) v(clk_fb) v(rst) v(up) v(down) v(vcp) v(vtune) v(\\"clk_out<0>\\") v(\\"clk_out<1>\\") v(\\"clk_out<2>\\") v(\\"clk_out<3>\\") v(\\"clk_out<4>\\") v(\\"clk_out<5>\\") v(\\"clk_out<6>\\") v(\\"clk_out<7>\\")

resume
set filetype=ascii
write pll_components_tb_tran.raw v(clk_ctrl) v(clk) v(clk_fb) v(rst) v(up) v(down) v(vcp) v(vtune) v(\\"clk_out<0>\\") v(\\"clk_out<1>\\") v(\\"clk_out<2>\\") v(\\"clk_out<3>\\") v(\\"clk_out<4>\\") v(\\"clk_out<5>\\") v(\\"clk_out<6>\\") v(\\"clk_out<7>\\")


* Plot outputs
plot v(clk_ctrl)+30 v(rst)+28 v(clk)+26 v(clk_fb)+24 v(up)+22 v(down)+20 v(vcp)+18 v(vtune)+16 v(\\"clk_out<0>\\")+14 v(\\"clk_out<1>\\")+12 v(\\"clk_out<2>\\")+10 v(\\"clk_out<3>\\")+8 v(\\"clk_out<4>\\")+6 v(\\"clk_out<5>\\")+4 v(\\"clk_out<6>\\")+2 v(\\"clk_out<7>\\")+0

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
C {devices/ammeter.sym} 40 -210 0 0 {name=Vmeas_vdd current=-0.003368}
C {lab_wire.sym} 40 -180 3 0 {name=l10 sig_type=std_logic lab=vdd_0
}
C {devices/vsource.sym} 280 -110 0 0 {name=Vref value="dc 0 pulse 0 1.8 8u 0.01n 0.01n 8u"}
C {devices/vsource.sym} 820 -110 0 0 {name=Vfd value="dc 0 pulse 0 1.8 20n 0.1n 0.1n 10n 3600"}
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
C {lab_wire.sym} 280 -80 3 0 {name=l12 sig_type=std_logic lab=vss}
C {lab_wire.sym} 820 -80 3 0 {name=l33 sig_type=std_logic lab=vss}
C {lab_wire.sym} 160 -80 3 0 {name=l45 sig_type=std_logic lab=gnd}
C {lab_wire.sym} 160 -390 3 0 {name=l47 sig_type=std_logic lab=vss}
C {devices/ammeter.sym} 160 -210 0 0 {name=Vmeas_vss current=0.003368}
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
C {devices/ngspice_probe.sym} 280 -140 0 0 {name=r1}
C {lab_wire.sym} 280 -180 3 0 {name=l4 sig_type=std_logic lab=clk_ctrl}
C {devices/ngspice_probe.sym} 820 -140 0 0 {name=r2}
C {lab_wire.sym} 820 -180 3 0 {name=l5 sig_type=std_logic lab=rst}
C {devices/ngspice_probe.sym} 40 -340 0 0 {name=r8}
C {lab_wire.sym} 960 -460 3 1 {name=l8 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 960 -340 3 0 {name=l9 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1220 -380 0 1 {name=l7 sig_type=std_logic lab="vss, vss, vdd, vss, vss, vdd, vdd, vss, vss, vss, vss, vss"}
C {lab_wire.sym} 1060 -380 0 1 {name=l18 sig_type=std_logic lab=div[0:11]}
C {devices/res.sym} 1170 -380 1 0 {name=Rdiv[0:11]
value=1m
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 960 -770 3 1 {name=l6 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 960 -630 3 0 {name=l13 sig_type=std_logic lab=vss}
C {lab_wire.sym} 600 -770 3 1 {name=l14 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 600 -630 3 0 {name=l17 sig_type=std_logic lab=vss}
C {lab_wire.sym} 740 -740 0 1 {name=l19 sig_type=std_logic lab=up}
C {lab_wire.sym} 740 -720 0 1 {name=l20 sig_type=std_logic lab=down}
C {lab_wire.sym} 500 -720 0 0 {name=l21 sig_type=std_logic lab=clk}
C {lab_wire.sym} 500 -740 0 0 {name=l22 sig_type=std_logic lab=rst}
C {lab_wire.sym} 860 -670 0 0 {name=l23 sig_type=std_logic lab=rst}
C {lab_wire.sym} 1700 -630 3 0 {name=l24 sig_type=std_logic lab=rst}
C {lab_wire.sym} 1780 -630 3 0 {name=l25 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1780 -770 3 1 {name=l26 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 1060 -400 0 1 {name=l27 sig_type=std_logic lab=rst}
C {devices/res.sym} 2060 -530 2 0 {name=Rload[0:7]
value=1meg
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 2060 -560 3 1 {name=l28 sig_type=std_logic lab=clk_out[0:7]}
C {lab_wire.sym} 1960 -540 3 0 {name=l31 sig_type=std_logic lab=clk_out[0]}
C {lab_wire.sym} 1960 -560 3 1 {name=l32 sig_type=std_logic lab=clk_out[0:7]}
C {lab_wire.sym} 2060 -500 3 0 {name=l11 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1140 -700 0 1 {name=l15 sig_type=std_logic lab=vcp}
C {devices/isource.sym} 1080 -110 0 0 {name=I0 value=25u}
C {devices/isource.sym} 1240 -110 0 0 {name=I1 value=48u}
C {lab_wire.sym} 1080 -80 3 0 {name=l16 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1240 -180 3 0 {name=l30 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 920 -630 3 0 {name=l34 sig_type=std_logic lab=ib_cp}
C {lab_wire.sym} 1700 -770 3 1 {name=l35 sig_type=std_logic lab=ib_vco
}
C {lab_wire.sym} 1240 -80 3 0 {name=l36 sig_type=std_logic lab=ib_vco
}
C {lab_wire.sym} 1080 -180 3 0 {name=l37 sig_type=std_logic lab=ib_cp}
C {lab_wire.sym} 500 -700 0 0 {name=l39 sig_type=std_logic lab=clk_fb}
C {devices/capa.sym} 1110 -550 0 0 {name=C1
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 1110 -520 3 0 {name=l40 sig_type=std_logic lab=vss}
C {devices/res.sym} 1110 -650 2 0 {name=R1
value=110k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1200 -550 0 0 {name=C2
m=1
value=75p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 1200 -520 3 0 {name=l41 sig_type=std_logic lab=vss}
C {lab_wire.sym} 720 -80 3 0 {name=l42 sig_type=std_logic lab=vss}
C {lab_wire.sym} 720 -180 3 0 {name=l43 sig_type=std_logic lab=clk}
C {lab_wire.sym} 480 -80 3 0 {name=l44 sig_type=std_logic lab=vss}
C {lab_wire.sym} 500 -130 0 0 {name=l46 sig_type=std_logic lab=clk_ctrl}
C {devices/isource.sym} 1160 -110 0 0 {name=I2 value=50u}
C {lab_wire.sym} 1160 -80 3 0 {name=l50 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1160 -180 3 0 {name=l51 sig_type=std_logic lab=ib_buf}
C {devices/ngspice_probe.sym} 1060 -700 2 1 {name=r3}
C {devices/ngspice_probe.sym} 1620 -700 2 0 {name=r4}
C {pll_pfd/xschem/pll_pfd.sym} 600 -700 0 0 {name=x1}
C {pll_cp/xschem/pll_cp.sym} 960 -700 0 0 {name=x2}
C {pll_vco/xschem/pll_vco.sym} 1740 -700 0 0 {name=x3}
C {pll_divider/xschem/pll_divider.sym} 960 -400 0 0 {name=x4}
C {pll_switch_freq_source/xschem/pll_switch_freq_source.sym} 600 -110 0 0 {name=x5 vhigh=1.8 vlow=0 f1=15meg f2=20meg}
C {lab_wire.sym} 1610 -700 0 0 {name=l48 sig_type=std_logic lab=vtune}
C {devices/vsource.sym} 1280 -550 0 0 {name=Vref1 value=1.75}
C {lab_wire.sym} 1280 -520 3 0 {name=l49 sig_type=std_logic lab=vss}
C {devices/noconn.sym} 1280 -580 0 0 {name=l53}
C {lab_wire.sym} 2180 -560 3 1 {name=l52 sig_type=std_logic lab=clk_out[0:7]}
C {lab_wire.sym} 2180 -500 3 0 {name=l55 sig_type=std_logic lab=vss}
C {devices/capa.sym} 2180 -530 0 0 {name=Cload[0:7]
m=1
value=5f
footprint=1206
device="ceramic capacitor"}
C {pll_lf_buf/xschem/pll_lf_buf.sym} 1420 -700 0 0 {name=x6}
C {lab_wire.sym} 1420 -620 3 0 {name=l56 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1420 -780 3 1 {name=l57 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 1400 -780 3 1 {name=l58 sig_type=std_logic lab=rst}
C {lab_wire.sym} 1400 -620 3 0 {name=l54 sig_type=std_logic lab=ib_buf}
