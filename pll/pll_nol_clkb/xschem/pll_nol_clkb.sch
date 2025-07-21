v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 380 -620 400 -620 { lab=clk2fb}
N 380 -620 380 -580 { lab=clk2fb}
N 380 -480 400 -480 { lab=clk1fb}
N 380 -520 380 -480 { lab=clk1fb}
N 380 -520 780 -580 { lab=clk1fb}
N 780 -640 780 -580 { lab=clk1fb}
N 760 -640 780 -640 { lab=clk1fb}
N 380 -580 780 -500 { lab=clk2fb}
N 780 -500 780 -460 { lab=clk2fb}
N 760 -460 780 -460 { lab=clk2fb}
N 520 -460 560 -460 { lab=clk2b}
N 640 -460 680 -460 { lab=clk2}
N 520 -640 560 -640 { lab=clk1b}
N 640 -640 680 -640 { lab=clk1}
N 180 -440 400 -440 { lab=clk}
N 300 -510 300 -440 { lab=clk}
N 300 -660 300 -590 { lab=clkb}
N 300 -660 400 -660 { lab=clkb}
N 660 -420 800 -420 { lab=clk2}
N 660 -460 660 -420 { lab=clk2}
N 660 -680 660 -640 { lab=clk1}
N 660 -680 800 -680 { lab=clk1}
N 190 -520 220 -520 { lab=vdd}
N 190 -480 220 -480 { lab=vss}
C {devices/opin.sym} 790 -680 0 0 {name=p3 lab=clk1}
C {devices/opin.sym} 790 -420 0 0 {name=p4 lab=clk2}
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
C {devices/code.sym} 160 -810 0 0 {name=STDCELLS only_toplevel=false 
format="tcleval(@value )"
value="* .include \\\\$::SKYWATER_STDCELLS\\\\/cells/
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/and2/sky130_fd_sc_hd__and2_1.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/and2/sky130_fd_sc_hd__and2_2.spice
.include \\\\$::SKYWATER_STDCELLS_HS\\\\/cells/and2/sky130_fd_sc_hs__and2_1.spice
.include \\\\$::SKYWATER_STDCELLS_HS\\\\/cells/and2/sky130_fd_sc_hs__and2_2.spice

.include \\\\$::SKYWATER_STDCELLS\\\\/cells/nand2/sky130_fd_sc_hd__nand2_1.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/nand2/sky130_fd_sc_hd__nand2_2.spice
.include \\\\$::SKYWATER_STDCELLS_HS\\\\/cells/nand2/sky130_fd_sc_hs__nand2_1.spice
.include \\\\$::SKYWATER_STDCELLS_HS\\\\/cells/nand2/sky130_fd_sc_hs__nand2_2.spice

.include \\\\$::SKYWATER_STDCELLS\\\\/cells/or2/sky130_fd_sc_hd__or2_1.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/or2/sky130_fd_sc_hd__or2_2.spice
.include \\\\$::SKYWATER_STDCELLS_HS\\\\/cells/or2/sky130_fd_sc_hs__or2_1.spice
.include \\\\$::SKYWATER_STDCELLS_HS\\\\/cells/or2/sky130_fd_sc_hs__or2_2.spice

.include \\\\$::SKYWATER_STDCELLS\\\\/cells/buf/sky130_fd_sc_hd__buf_1.spice
.include \\\\$::SKYWATER_STDCELLS_HS\\\\/cells/buf/sky130_fd_sc_hs__buf_1.spice

.include \\\\$::SKYWATER_STDCELLS\\\\/cells/dfrbp/sky130_fd_sc_hd__dfrbp_1.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/dfrbp/sky130_fd_sc_hd__dfrbp_2.spice
.include \\\\$::SKYWATER_STDCELLS_HS\\\\/cells/dfrbp/sky130_fd_sc_hs__dfrbp_1.spice
.include \\\\$::SKYWATER_STDCELLS_HS\\\\/cells/dfrbp/sky130_fd_sc_hs__dfrbp_2.spice

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
C {devices/launcher.sym} 100 -640 0 0 {name=h1
descr=Annotate
tclcommand="ngspice::annotate"}
C {devices/launcher.sym} 100 -600 0 0 {name=h2
descr="View Raw" 
tclcommand="textwindow $netlist_dir/test_nmos.raw"}
C {devices/ipin.sym} 190 -520 0 0 {name=p7 lab=vdd}
C {devices/ipin.sym} 190 -480 0 0 {name=p8 lab=vss}
C {devices/ipin.sym} 190 -440 0 0 {name=p5 lab=clk}
C {sky130_stdcells/inv_1.sym} 600 -640 0 0 {name=x3 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 720 -640 0 0 {name=x4 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 600 -460 0 0 {name=x5 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 720 -460 0 0 {name=x6 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 300 -550 3 0 {name=x7 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 350 -660 0 0 {name=l1 sig_type=std_logic lab=clkb}
C {lab_wire.sym} 560 -640 0 0 {name=l2 sig_type=std_logic lab=clk1b}
C {lab_wire.sym} 560 -460 0 0 {name=l3 sig_type=std_logic lab=clk2b}
C {lab_wire.sym} 780 -500 0 0 {name=l4 sig_type=std_logic lab=clk2fb}
C {lab_wire.sym} 780 -580 0 0 {name=l5 sig_type=std_logic lab=clk1fb}
C {sky130_stdcells/nand2_2.sym} 460 -640 0 0 {name=x1 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_2.sym} 460 -460 0 0 {name=x2 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 220 -520 0 0 {name=l6 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 220 -480 0 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/noconn.sym} 220 -520 0 1 {name=l8}
C {devices/noconn.sym} 220 -480 0 1 {name=l9}
