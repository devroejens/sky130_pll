v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 640 -560 640 -520 { lab=gnd}
N 920 -560 920 -540 { lab=gnd}
N 760 -750 800 -750 { lab=gnd}
N 640 -840 640 -800 { lab=vin}
N 640 -840 840 -840 { lab=vin}
N 840 -840 840 -800 { lab=vin}
N 840 -840 1000 -840 { lab=vin}
N 1000 -840 1000 -790 { lab=vin}
N 1000 -660 1000 -640 { lab=vcm}
N 840 -640 1000 -640 { lab=vcm}
N 640 -540 920 -540 { lab=gnd}
N 920 -640 920 -620 { lab=vcm}
N 640 -740 640 -620 { lab=vdc}
N 760 -750 760 -540 { lab=gnd}
N 1000 -740 1000 -720 { lab=#net1}
N 520 -560 520 -540 { lab=gnd}
N 520 -640 520 -620 { lab=vin}
N 520 -540 640 -540 { lab=gnd}
N 520 -840 520 -640 { lab=vin}
N 520 -840 640 -840 { lab=vin}
N 760 -790 760 -750 { lab=gnd}
N 760 -790 800 -790 { lab=gnd}
N 840 -740 840 -640 { lab=vcm}
C {devices/code.sym} 10 -810 0 0 {name=SIM only_toplevel=false value="

.option savecurrents

* Settings for PSS osciallator
.option reltol=1e-5
.option vntol=3e-8
.option abstol=1e-13
*.option chgtol=1e-12
.option trtol=10
.option method=gear


.control
* Main Amplifier
** Main Core OP params
*save i(@m.x1.xm1.msky130_fd_pr__nfet_01v8[id])
*save @m.x1.xm1.msky130_fd_pr__nfet_01v8[gm]
*save v(@m.x1.xm1.msky130_fd_pr__nfet_01v8[vds])
*save v(@m.x1.xm1.msky130_fd_pr__nfet_01v8[vgs])
*save v(@m.x1.xm1.msky130_fd_pr__nfet_01v8[vth])
*save v(@m.x1.xm1.msky130_fd_pr__nfet_01v8[vdsat])


* #################################################################
* #
* #                         OPERATING POINT
* #
* #################################################################
reset
setplot const
save all

op
set filetype=binary
write varactor_tb.raw all


* #################################################################
* #
* #                         AC RESPONSE
* #
* #################################################################
reset
setplot const
save all

ac dec 100 100k 10G
set filetype=ascii
write varactor_tb_ac.raw all

* Plot AC
plot db(vmeas#branch)

* Calculate 3dbfreq
let gain=db(vmeas#branch)
meas ac f3db WHEN gain=-3 FALL=1
let f3db_mhz=f3db/1e6
set f3db_mhz="$&f3db_mhz"
echo Corner Frequency: $f3db_mhz MHz

* Calculate capacitance
let cvar=(1/(2*pi*100e3*f3db))
let cvar_pf=cvar*1e12
set cvar="$&cvar"
set cvar_pf="$&cvar"
echo Capacitance: $cvar_pf pF

reset
setplot const
save all

let run = 0
let vtune_start = 0.0
let vtune_stop = 2.0
let vtune_step = 0.01
let vtune_val = vtune_start
let vtune_length = (vtune_stop-vtune_start)/vtune_step

set curplot = new
set ac_sweep_plot = $curplot

let cvar_vect = vector(vtune_length)
let vtune_sweep = vector(vtune_length)

while vtune_val le vtune_stop
	* Print run variables
	set run = "$&run"
	set run_total = "$&vtune_length"
	set vtune_val = "$&vtune_val"
	echo #############################################################
	echo Run: $run / $run_total for vtune: $vtune_val V
	echo #############################################################

	* Run AC
	reset

	* Set sweep variable
	alter Vtune=vtune_val

	save all
	ac dec 100 100k 10G
	set filetype=ascii
	set simfilename =  \{varactor_tb_ac_sweep_\}\{$&run\}\{.raw\}
	write $simfilename all

	* Calculate 3dbfreq
	let gain=db(vmeas#branch)
	meas ac f3db WHEN gain=-3 FALL=1
	let f3db_mhz=f3db/1e6
	set f3db_mhz="$&f3db_mhz"
	echo Corner Frequency: $f3db_mhz MHz

	* Calculate capacitance
	let cvar=(1/(2*pi*100e3*f3db))
	let cvar_pf=cvar*1e12
	set cvar="$&cvar"
	set cvar_pf="$&cvar_pf"
	echo Capacitance: $cvar_pf pF

	* Switch to new plot environment
	set dt = $curplot
	setplot $ac_sweep_plot
	
	* Save values to variable
	let vtune_sweep[$run] = vtune_val
	let cvar_vect[$run] = \{$dt\}.cvar

	* Switch back to original environment
	setplot $dt

	let vtune_val = vtune_val + vtune_step
	let run = run + 1
end

echo #############################################################
echo Post Process data
echo #############################################################

* Set environment
setplot $ac_sweep_plot

* Calculate capacitor ratio
let c_min=cvar_vect[0]*1e12
set c_min="$&c_min"
let c_max=cvar_vect[vtune_length-1]*1e12
set c_max="$&c_max"
let c_ratio=c_max/c_min
set c_ratio="$&c_ratio"
echo Capacitance ratio: $c_max pF / $c_min pF = $c_ratio

* Plot data
plot cvar_vect vs vtune_sweep

let v_var_vect = vtune_sweep-v(op1.vcm)
plot cvar_vect vs v_var_vect

set filetype=ascii
write varactor_tb_ac_sweep.raw all


* #################################################################
* #
* #                 TRANSIENT OSCILATION REGIME
* #
* #################################################################
*reset
*setplot const
*save all

*tran 0.005n 20n uic
*set filetype=ascii
*write varactor_tb_tran.raw all

* Plot internal nodes
*plot v(\\"phi<0>\\") v(\\"phi<4>\\")
*plot v(\\"phi<1>\\") v(\\"phi<5>\\")

* Plot outputs
*plot v(\\"out<0>\\")+2 v(\\"out<4>\\")+2 v(\\"out<1>\\")+0 v(\\"out<5>\\")+0 v(\\"out<2>\\")-2 v(\\"out<6>\\")-2 v(\\"out<3>\\")-4 v(\\"out<7>\\")-4
*plot v(\\"out<0>\\") v(\\"out<4>\\")
*plot v(\\"out<1>\\") v(\\"out<5>\\")
*plot v(\\"out<2>\\") v(\\"out<6>\\") 
*plot v(\\"out<3>\\") v(\\"out<7>\\")


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
C {devices/isource.sym} 520 -590 0 0 {name=Iin value="DC 0 AC 1 0"}
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
C {devices/vsource.sym} 640 -590 0 0 {name=Vtune value=0.9}
C {devices/vsource.sym} 920 -590 0 0 {name=Vcm value=0.9}
C {devices/gnd.sym} 640 -520 0 0 {name=l4 lab=gnd}
C {devices/res.sym} 1000 -770 0 0 {name=Rout
value=100k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 640 -680 3 0 {name=l1 sig_type=std_logic lab=vdc}
C {lab_wire.sym} 590 -840 0 0 {name=l2 sig_type=std_logic lab=vin}
C {lab_wire.sym} 920 -640 0 0 {name=l3 sig_type=std_logic lab=vcm}
C {devices/vsource.sym} 1000 -690 0 0 {name=Vmeas value=0}
C {devices/ngspice_probe.sym} 640 -680 0 0 {name=r1}
C {devices/ngspice_probe.sym} 640 -840 0 0 {name=r2}
C {devices/ngspice_probe.sym} 920 -640 0 0 {name=r3}
C {devices/ind.sym} 640 -770 0 0 {name=L1
m=1
value=100
footprint=1206
device=inductor}
C {sky130_fd_pr/cap_var_lvt.sym} 840 -770 2 1 {name=C1 model=cap_var_lvt W=70 L=4 VM=3 spiceprefix=X}
