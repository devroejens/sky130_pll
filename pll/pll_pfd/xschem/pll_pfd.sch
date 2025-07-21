v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 540 -360 670 -360 { lab=fbclk}
N 530 -640 670 -640 { lab=refclk}
N 620 -620 670 -620 { lab=vdd}
N 640 -600 670 -600 { lab=rst_3}
N 640 -400 670 -400 { lab=rst_3}
N 620 -380 670 -380 { lab=vdd}
N 640 -500 860 -500 { lab=rst_3}
N 1260 -500 1300 -500 { lab=rst_0}
N 850 -620 1440 -620 { lab=up_inv}
N 1420 -520 1440 -520 { lab=up_inv}
N 1420 -480 1440 -480 { lab=down_inv}
N 640 -500 640 -400 { lab=rst_3}
N 640 -600 640 -500 { lab=rst_3}
N 620 -620 620 -500 { lab=vdd}
N 620 -500 620 -380 { lab=vdd}
N 850 -380 1440 -380 { lab=down_inv}
N 1440 -620 1440 -520 { lab=up_inv}
N 1440 -480 1440 -380 { lab=down_inv}
N 1160 -500 1180 -500 { lab=rst_1}
N 1160 -540 1160 -500 { lab=rst_1}
N 1140 -540 1160 -540 { lab=rst_1}
N 980 -520 1020 -520 { lab=rst_2}
N 1020 -540 1020 -520 { lab=rst_2}
N 1020 -540 1060 -540 { lab=rst_2}
N 980 -480 1020 -480 { lab=sdn_inv}
N 1020 -480 1020 -460 { lab=sdn_inv}
N 1020 -460 1060 -460 { lab=sdn_inv}
N 1140 -460 1180 -460 { lab=sdn}
N 850 -640 990 -640 { lab=up}
N 850 -360 980 -360 { lab=down}
N 100 -180 160 -180 { lab=vdd}
N 100 -140 160 -140 { lab=vss}
C {sky130_stdcells/dfrbp_2.sym} 760 -620 0 0 {name=x1 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrbp_2.sym} 760 -380 2 1 {name=x2 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} 540 -640 0 0 {name=p1 lab=refclk}
C {devices/ipin.sym} 540 -360 0 0 {name=p2 lab=fbclk}
C {lab_wire.sym} 620 -500 0 0 {name=l1 sig_type=std_logic lab=vdd}
C {sky130_stdcells/and2_2.sym} 920 -500 0 1 {name=x6 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__}
C {sky130_stdcells/buf_1.sym} 1220 -500 0 1 {name=x4 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 1100 -540 0 1 {name=x5 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 1100 -460 0 1 {name=x7 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 1140 -460 0 1 {name=l2 sig_type=std_logic lab=sdn}
C {devices/opin.sym} 980 -640 0 0 {name=p3 lab=up}
C {devices/opin.sym} 970 -360 0 0 {name=p4 lab=down}
C {devices/ipin.sym} 1170 -460 0 1 {name=p5 lab=sdn}
C {lab_wire.sym} 900 -620 0 1 {name=l3 sig_type=std_logic lab=up_inv}
C {lab_wire.sym} 900 -380 0 1 {name=l4 sig_type=std_logic lab=down_inv}
C {lab_wire.sym} 1260 -500 0 1 {name=l5 sig_type=std_logic lab=rst_0}
C {lab_wire.sym} 1160 -540 1 1 {name=l6 sig_type=std_logic lab=rst_1}
C {lab_wire.sym} 980 -520 0 1 {name=l7 sig_type=std_logic lab=rst_2}
C {lab_wire.sym} 750 -500 0 1 {name=l8 sig_type=std_logic lab=rst_3}
C {lab_wire.sym} 980 -480 0 1 {name=l9 sig_type=std_logic lab=sdn_inv}
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
C {devices/ipin.sym} 110 -180 0 0 {name=p7 lab=vdd}
C {devices/ipin.sym} 110 -140 0 0 {name=p8 lab=vss}
C {sky130_stdcells/or2_1.sym} 1360 -500 0 1 {name=x3 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 110 -180 0 1 {name=l10 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 110 -140 0 1 {name=l11 sig_type=std_logic lab=vss}
C {devices/noconn.sym} 160 -140 0 1 {name=l12}
C {devices/noconn.sym} 160 -180 0 1 {name=l13}
