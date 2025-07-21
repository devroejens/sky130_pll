v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 750 -300 750 -260 { lab=vdd}
N 750 -380 750 -340 { lab=vss}
N 580 -340 620 -340 { lab=#net1}
N 620 -460 620 -340 { lab=#net1}
N 620 -460 660 -460 { lab=#net1}
N 580 -300 620 -300 { lab=#net2}
N 620 -300 620 -180 { lab=#net2}
N 620 -180 660 -180 { lab=#net2}
N 340 -560 750 -560 { lab=vdd}
N 750 -560 750 -540 { lab=vdd}
N 750 -100 750 -80 { lab=vss}
N 340 -80 750 -80 { lab=vss}
N 490 -240 490 -80 { lab=vss}
N 490 -560 490 -400 { lab=vdd}
N 340 -320 400 -320 { lab=clk_in}
N 840 -200 890 -200 { lab=phase2}
N 840 -160 890 -160 { lab=phase2b}
N 840 -440 890 -440 { lab=phase1b}
N 840 -480 890 -480 { lab=phase1}
C {devices/launcher.sym} 100 -340 0 0 {name=h1
descr=Annotate
tclcommand="ngspice::annotate"}
C {devices/launcher.sym} 100 -300 0 0 {name=h2
descr="View Raw" 
tclcommand="textwindow $netlist_dir/test_nmos.raw"}
C {devices/ipin.sym} 350 -560 0 0 {name=p7 lab=vdd}
C {devices/ipin.sym} 350 -80 0 0 {name=p8 lab=vss}
C {lab_wire.sym} 750 -260 3 1 {name=l1 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 750 -380 3 0 {name=l2 sig_type=std_logic lab=vss}
C {devices/ipin.sym} 350 -320 0 0 {name=p1 lab=clk_in}
C {devices/opin.sym} 880 -480 0 0 {name=p2 lab=phase1}
C {devices/opin.sym} 880 -440 0 0 {name=p3 lab=phase1b}
C {devices/opin.sym} 880 -200 0 0 {name=p4 lab=phase2}
C {devices/opin.sym} 880 -160 0 0 {name=p5 lab=phase2b}
C {pll_nol_clkb/xschem/pll_nol_clkb.sym} 500 -320 0 0 {name=x1}
C {pll_sync_clkb/xschem/pll_sync_clkb.sym} 760 -180 0 0 {name=x2}
C {pll_sync_clkb/xschem/pll_sync_clkb.sym} 760 -460 0 0 {name=x3}
