v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 300 -80 300 -40 { lab=vss}
N 940 -380 940 -320 { lab=vss}
N 940 -600 940 -540 { lab=vdd}
N 920 -380 920 -320 { lab=ib_buf}
N 1400 -170 1400 -130 { lab=vss}
N 1220 -460 1280 -460 { lab=vout}
N 300 -180 300 -140 { lab=vcm}
N 760 -440 780 -440 { lab=vout}
N 780 -480 840 -480 { lab=vin}
N 780 -440 840 -440 { lab=vout}
N 920 -600 920 -540 { lab=sdn}
N 500 -80 500 -40 { lab=vss}
N 1260 -640 1260 -460 { lab=vout}
N 840 -480 860 -480 { lab=vin}
N 840 -440 860 -440 { lab=vout}
N 1080 -460 1200 -460 { lab=vout}
N 1020 -460 1080 -460 { lab=vout}
N 1200 -460 1220 -460 { lab=vout}
N 40 -80 40 -40 { lab=gnd}
N 40 -400 40 -340 { lab=vdd}
N 40 -180 40 -140 { lab=vdd_0}
N 160 -400 160 -340 { lab=vss}
N 160 -180 160 -40 { lab=gnd}
N 40 -280 40 -240 { lab=vdd_1}
N 160 -280 160 -240 { lab=vss_1}
N 1400 -460 1400 -230 { lab=vout}
N 1280 -460 1400 -460 { lab=vout}
N 500 -280 500 -240 { lab=sdn}
N 300 -280 300 -240 { lab=vin}
N 1500 -170 1500 -130 { lab=vss}
N 1400 -280 1500 -280 { lab=vout}
N 1500 -280 1500 -230 { lab=vout}
N 770 -80 770 -40 { lab=vss}
N 810 -110 860 -110 { lab=#net1}
N 900 -80 900 -40 { lab=vss}
N 750 -110 770 -110 { lab=vss}
N 750 -110 750 -40 { lab=vss}
N 900 -110 920 -110 { lab=vss}
N 920 -110 920 -40 { lab=vss}
N 770 -160 770 -140 { lab=#net1}
N 770 -280 770 -220 { lab=vdd}
N 770 -160 830 -160 { lab=#net1}
N 830 -160 830 -110 { lab=#net1}
N 900 -160 900 -140 { lab=#net2}
N 900 -280 900 -220 { lab=ib_buf}
N 450 -60 500 -60 { lab=vss}
N 500 -180 500 -160 { lab=#net3}
N 450 -160 450 -60 { lab=vss}
N 500 -160 500 -140 { lab=#net3}
N 760 -640 760 -440 { lab=vout}
N 760 -640 1260 -640 { lab=vout}
C {devices/code.sym} 30 -660 0 0 {name=SIM only_toplevel=false value="
.param temp=27

.param ac_on=1
.param stb_on= 0
.param tran_on=0
.param step_on=0

.option savecurrents
*.option rshunt = 1e12
*.option gmin = 1e-24
**.option method=Gear
**.option chgtol=1e-12


*.model switch1 aswitch(cntl_off=0.0 cntl_on=0.1 r_off=1e12 r_on=1.0 log=TRUE)
.model sw SW (ron=0.1 roff=1e12 vt=0.5 vh=0)

.control

* Current mirror
save i(@m.xm9.msky130_fd_pr__nfet_01v8[id])
save @m.xm9.msky130_fd_pr__nfet_01v8[gm]
save v(@m.xm9.msky130_fd_pr__nfet_01v8[vds])
save v(@m.xm9.msky130_fd_pr__nfet_01v8[vgs])
save v(@m.xm9.msky130_fd_pr__nfet_01v8[vth])
save v(@m.xm9.msky130_fd_pr__nfet_01v8[vdsat])

save i(@m.xm10.msky130_fd_pr__nfet_01v8[id])
save @m.xm10.msky130_fd_pr__nfet_01v8[gm]
save v(@m.xm10.msky130_fd_pr__nfet_01v8[vds])
save v(@m.xm10.msky130_fd_pr__nfet_01v8[vgs])
save v(@m.xm10.msky130_fd_pr__nfet_01v8[vth])
save v(@m.xm10.msky130_fd_pr__nfet_01v8[vdsat])


* Main Amplifier
** Main Core OP params
save i(@m.x1.xm1.msky130_fd_pr__pfet_01v8[id])
save @m.x1.xm1.msky130_fd_pr__pfet_01v8[gm]
save v(@m.x1.xm1.msky130_fd_pr__pfet_01v8[vds])
save v(@m.x1.xm1.msky130_fd_pr__pfet_01v8[vgs])
save v(@m.x1.xm1.msky130_fd_pr__pfet_01v8[vth])
save v(@m.x1.xm1.msky130_fd_pr__pfet_01v8[vdsat])

save i(@m.x1.xm2.msky130_fd_pr__pfet_01v8[id])
save @m.x1.xm2.msky130_fd_pr__pfet_01v8[gm]
save v(@m.x1.xm2.msky130_fd_pr__pfet_01v8[vds])
save v(@m.x1.xm2.msky130_fd_pr__pfet_01v8[vgs])
save v(@m.x1.xm2.msky130_fd_pr__pfet_01v8[vth])
save v(@m.x1.xm2.msky130_fd_pr__pfet_01v8[vdsat])

save i(@m.x1.xm3.msky130_fd_pr__pfet_01v8[id])
save @m.x1.xm3.msky130_fd_pr__pfet_01v8[gm]
save v(@m.x1.xm3.msky130_fd_pr__pfet_01v8[vds])
save v(@m.x1.xm3.msky130_fd_pr__pfet_01v8[vgs])
save v(@m.x1.xm3.msky130_fd_pr__pfet_01v8[vth])
save v(@m.x1.xm3.msky130_fd_pr__pfet_01v8[vdsat])

save i(@m.x1.xm4.msky130_fd_pr__pfet_01v8[id])
save @m.x1.xm4.msky130_fd_pr__pfet_01v8[gm]
save v(@m.x1.xm4.msky130_fd_pr__pfet_01v8[vds])
save v(@m.x1.xm4.msky130_fd_pr__pfet_01v8[vgs])
save v(@m.x1.xm4.msky130_fd_pr__pfet_01v8[vth])
save v(@m.x1.xm4.msky130_fd_pr__pfet_01v8[vdsat])

save i(@m.x1.xm5.msky130_fd_pr__pfet_01v8[id])
save @m.x1.xm5.msky130_fd_pr__pfet_01v8[gm]
save v(@m.x1.xm5.msky130_fd_pr__pfet_01v8[vds])
save v(@m.x1.xm5.msky130_fd_pr__pfet_01v8[vgs])
save v(@m.x1.xm5.msky130_fd_pr__pfet_01v8[vth])
save v(@m.x1.xm5.msky130_fd_pr__pfet_01v8[vdsat])

save i(@m.x1.xm6.msky130_fd_pr__pfet_01v8[id])
save @m.x1.xm6.msky130_fd_pr__pfet_01v8[gm]
save v(@m.x1.xm6.msky130_fd_pr__pfet_01v8[vds])
save v(@m.x1.xm6.msky130_fd_pr__pfet_01v8[vgs])
save v(@m.x1.xm6.msky130_fd_pr__pfet_01v8[vth])
save v(@m.x1.xm6.msky130_fd_pr__pfet_01v8[vdsat])

save i(@m.x1.xm7.msky130_fd_pr__nfet_01v8[id])
save @m.x1.xm7.msky130_fd_pr__nfet_01v8[gm]
save v(@m.x1.xm7.msky130_fd_pr__nfet_01v8[vds])
save v(@m.x1.xm7.msky130_fd_pr__nfet_01v8[vgs])
save v(@m.x1.xm7.msky130_fd_pr__nfet_01v8[vth])
save v(@m.x1.xm7.msky130_fd_pr__nfet_01v8[vdsat])

save i(@m.x1.xm8.msky130_fd_pr__nfet_01v8[id])
save @m.x1.xm8.msky130_fd_pr__nfet_01v8[gm]
save v(@m.x1.xm8.msky130_fd_pr__nfet_01v8[vds])
save v(@m.x1.xm8.msky130_fd_pr__nfet_01v8[vgs])
save v(@m.x1.xm8.msky130_fd_pr__nfet_01v8[vth])
save v(@m.x1.xm8.msky130_fd_pr__nfet_01v8[vdsat])

save i(@m.x1.xm9.msky130_fd_pr__nfet_01v8[id])
save @m.x1.xm9.msky130_fd_pr__nfet_01v8[gm]
save v(@m.x1.xm9.msky130_fd_pr__nfet_01v8[vds])
save v(@m.x1.xm9.msky130_fd_pr__nfet_01v8[vgs])
save v(@m.x1.xm9.msky130_fd_pr__nfet_01v8[vth])
save v(@m.x1.xm9.msky130_fd_pr__nfet_01v8[vdsat])

save i(@m.x1.xm10.msky130_fd_pr__nfet_01v8[id])
save @m.x1.xm10.msky130_fd_pr__nfet_01v8[gm]
save v(@m.x1.xm10.msky130_fd_pr__nfet_01v8[vds])
save v(@m.x1.xm10.msky130_fd_pr__nfet_01v8[vgs])
save v(@m.x1.xm10.msky130_fd_pr__nfet_01v8[vth])
save v(@m.x1.xm10.msky130_fd_pr__nfet_01v8[vdsat])

save i(@m.x1.xm11.msky130_fd_pr__pfet_01v8[id])
save @m.x1.xm11.msky130_fd_pr__pfet_01v8[gm]
save v(@m.x1.xm11.msky130_fd_pr__pfet_01v8[vds])
save v(@m.x1.xm11.msky130_fd_pr__pfet_01v8[vgs])
save v(@m.x1.xm11.msky130_fd_pr__pfet_01v8[vth])
save v(@m.x1.xm11.msky130_fd_pr__pfet_01v8[vdsat])

** Biasing
save i(@m.x1.xm12.msky130_fd_pr__pfet_01v8[id])
save @m.x1.xm12.msky130_fd_pr__pfet_01v8[gm]
save v(@m.x1.xm12.msky130_fd_pr__pfet_01v8[vds])
save v(@m.x1.xm12.msky130_fd_pr__pfet_01v8[vgs])
save v(@m.x1.xm12.msky130_fd_pr__pfet_01v8[vth])
save v(@m.x1.xm12.msky130_fd_pr__pfet_01v8[vdsat])

save i(@m.x1.xm13.msky130_fd_pr__pfet_01v8[id])
save @m.x1.xm13.msky130_fd_pr__pfet_01v8[gm]
save v(@m.x1.xm13.msky130_fd_pr__pfet_01v8[vds])
save v(@m.x1.xm13.msky130_fd_pr__pfet_01v8[vgs])
save v(@m.x1.xm13.msky130_fd_pr__pfet_01v8[vth])
save v(@m.x1.xm13.msky130_fd_pr__pfet_01v8[vdsat])

save i(@m.x1.xm14.msky130_fd_pr__pfet_01v8[id])
save @m.x1.xm14.msky130_fd_pr__pfet_01v8[gm]
save v(@m.x1.xm14.msky130_fd_pr__pfet_01v8[vds])
save v(@m.x1.xm14.msky130_fd_pr__pfet_01v8[vgs])
save v(@m.x1.xm14.msky130_fd_pr__pfet_01v8[vth])
save v(@m.x1.xm14.msky130_fd_pr__pfet_01v8[vdsat])

save i(@m.x1.xm15.msky130_fd_pr__pfet_01v8[id])
save @m.x1.xm15.msky130_fd_pr__pfet_01v8[gm]
save v(@m.x1.xm15.msky130_fd_pr__pfet_01v8[vds])
save v(@m.x1.xm15.msky130_fd_pr__pfet_01v8[vgs])
save v(@m.x1.xm15.msky130_fd_pr__pfet_01v8[vth])
save v(@m.x1.xm15.msky130_fd_pr__pfet_01v8[vdsat])

save i(@m.x1.xm23.msky130_fd_pr__nfet_01v8[id])
save @m.x1.xm23.msky130_fd_pr__nfet_01v8[gm]
save v(@m.x1.xm23.msky130_fd_pr__nfet_01v8[vds])
save v(@m.x1.xm23.msky130_fd_pr__nfet_01v8[vgs])
save v(@m.x1.xm23.msky130_fd_pr__nfet_01v8[vth])
save v(@m.x1.xm23.msky130_fd_pr__nfet_01v8[vdsat])

save i(@m.x1.xm24.msky130_fd_pr__pfet_01v8[id])
save @m.x1.xm24.msky130_fd_pr__pfet_01v8[gm]
save v(@m.x1.xm24.msky130_fd_pr__pfet_01v8[vds])
save v(@m.x1.xm24.msky130_fd_pr__pfet_01v8[vgs])
save v(@m.x1.xm24.msky130_fd_pr__pfet_01v8[vth])
save v(@m.x1.xm24.msky130_fd_pr__pfet_01v8[vdsat])


** CMFB OP param
save i(@m.x1.xm28.msky130_fd_pr__pfet_01v8[id])
save @m.x1.xm28.msky130_fd_pr__pfet_01v8[gm]
save v(@m.x1.xm28.msky130_fd_pr__pfet_01v8[vds])
save v(@m.x1.xm28.msky130_fd_pr__pfet_01v8[vgs])
save v(@m.x1.xm28.msky130_fd_pr__pfet_01v8[vth])
save v(@m.x1.xm28.msky130_fd_pr__pfet_01v8[vdsat])

save i(@m.x1.xm29.msky130_fd_pr__pfet_01v8_lvt[id])
save @m.x1.xm29.msky130_fd_pr__pfet_01v8_lvt[gm]
save v(@m.x1.xm29.msky130_fd_pr__pfet_01v8_lvt[vds])
save v(@m.x1.xm29.msky130_fd_pr__pfet_01v8_lvt[vgs])
save v(@m.x1.xm29.msky130_fd_pr__pfet_01v8_lvt[vth])
save v(@m.x1.xm29.msky130_fd_pr__pfet_01v8_lvt[vdsat])

save i(@m.x1.xm30.msky130_fd_pr__pfet_01v8_lvt[id])
save @m.x1.xm30.msky130_fd_pr__pfet_01v8_lvt[gm]
save v(@m.x1.xm30.msky130_fd_pr__pfet_01v8_lvt[vds])
save v(@m.x1.xm30.msky130_fd_pr__pfet_01v8_lvt[vgs])
save v(@m.x1.xm30.msky130_fd_pr__pfet_01v8_lvt[vth])
save v(@m.x1.xm30.msky130_fd_pr__pfet_01v8_lvt[vdsat])

save i(@m.x1.xm31.msky130_fd_pr__pfet_01v8[id])
save @m.x1.xm31.msky130_fd_pr__pfet_01v8[gm]
save v(@m.x1.xm31.msky130_fd_pr__pfet_01v8[vds])
save v(@m.x1.xm31.msky130_fd_pr__pfet_01v8[vgs])
save v(@m.x1.xm31.msky130_fd_pr__pfet_01v8[vth])
save v(@m.x1.xm31.msky130_fd_pr__pfet_01v8[vdsat])

save i(@m.x1.xm32.msky130_fd_pr__pfet_01v8_lvt[id])
save @m.x1.xm32.msky130_fd_pr__pfet_01v8_lvt[gm]
save v(@m.x1.xm32.msky130_fd_pr__pfet_01v8_lvt[vds])
save v(@m.x1.xm32.msky130_fd_pr__pfet_01v8_lvt[vgs])
save v(@m.x1.xm32.msky130_fd_pr__pfet_01v8_lvt[vth])
save v(@m.x1.xm32.msky130_fd_pr__pfet_01v8_lvt[vdsat])

save i(@m.x1.xm33.msky130_fd_pr__pfet_01v8_lvt[id])
save @m.x1.xm33.msky130_fd_pr__pfet_01v8_lvt[gm]
save v(@m.x1.xm33.msky130_fd_pr__pfet_01v8_lvt[vds])
save v(@m.x1.xm33.msky130_fd_pr__pfet_01v8_lvt[vgs])
save v(@m.x1.xm33.msky130_fd_pr__pfet_01v8_lvt[vth])
save v(@m.x1.xm33.msky130_fd_pr__pfet_01v8_lvt[vdsat])

save i(@m.x1.xm34.msky130_fd_pr__nfet_01v8[id])
save @m.x1.xm34.msky130_fd_pr__nfet_01v8[gm]
save v(@m.x1.xm34.msky130_fd_pr__nfet_01v8[vds])
save v(@m.x1.xm34.msky130_fd_pr__nfet_01v8[vgs])
save v(@m.x1.xm34.msky130_fd_pr__nfet_01v8[vth])
save v(@m.x1.xm34.msky130_fd_pr__nfet_01v8[vdsat])

save i(@m.x1.xm35.msky130_fd_pr__nfet_01v8[id])
save @m.x1.xm35.msky130_fd_pr__nfet_01v8[gm]
save v(@m.x1.xm35.msky130_fd_pr__nfet_01v8[vds])
save v(@m.x1.xm35.msky130_fd_pr__nfet_01v8[vgs])
save v(@m.x1.xm35.msky130_fd_pr__nfet_01v8[vth])
save v(@m.x1.xm35.msky130_fd_pr__nfet_01v8[vdsat])

* Gain Booster Pside
** Main core OP parameters
save i(@m.x1.xgbp.xm1.msky130_fd_pr__nfet_01v8[id])
save @m.x1.xgbp.xm1.msky130_fd_pr__nfet_01v8[gm]
save v(@m.x1.xgbp.xm1.msky130_fd_pr__nfet_01v8[vds])
save v(@m.x1.xgbp.xm1.msky130_fd_pr__nfet_01v8[vgs])
save v(@m.x1.xgbp.xm1.msky130_fd_pr__nfet_01v8[vth])
save v(@m.x1.xgbp.xm1.msky130_fd_pr__nfet_01v8[vdsat])

save i(@m.x1.xgbp.xm2.msky130_fd_pr__nfet_01v8[id])
save @m.x1.xgbp.xm2.msky130_fd_pr__nfet_01v8[gm]
save v(@m.x1.xgbp.xm2.msky130_fd_pr__nfet_01v8[vds])
save v(@m.x1.xgbp.xm2.msky130_fd_pr__nfet_01v8[vgs])
save v(@m.x1.xgbp.xm2.msky130_fd_pr__nfet_01v8[vth])
save v(@m.x1.xgbp.xm2.msky130_fd_pr__nfet_01v8[vdsat])

save i(@m.x1.xgbp.xm3.msky130_fd_pr__nfet_01v8[id])
save @m.x1.xgbp.xm3.msky130_fd_pr__nfet_01v8[gm]
save v(@m.x1.xgbp.xm3.msky130_fd_pr__nfet_01v8[vds])
save v(@m.x1.xgbp.xm3.msky130_fd_pr__nfet_01v8[vgs])
save v(@m.x1.xgbp.xm3.msky130_fd_pr__nfet_01v8[vth])
save v(@m.x1.xgbp.xm3.msky130_fd_pr__nfet_01v8[vdsat])

save i(@m.x1.xgbp.xm4.msky130_fd_pr__pfet_01v8[id])
save @m.x1.xgbp.xm4.msky130_fd_pr__pfet_01v8[gm]
save v(@m.x1.xgbp.xm4.msky130_fd_pr__pfet_01v8[vds])
save v(@m.x1.xgbp.xm4.msky130_fd_pr__pfet_01v8[vgs])
save v(@m.x1.xgbp.xm4.msky130_fd_pr__pfet_01v8[vth])
save v(@m.x1.xgbp.xm4.msky130_fd_pr__pfet_01v8[vdsat])

save i(@m.x1.xgbp.xm5.msky130_fd_pr__pfet_01v8[id])
save @m.x1.xgbp.xm5.msky130_fd_pr__pfet_01v8[gm]
save v(@m.x1.xgbp.xm5.msky130_fd_pr__pfet_01v8[vds])
save v(@m.x1.xgbp.xm5.msky130_fd_pr__pfet_01v8[vgs])
save v(@m.x1.xgbp.xm5.msky130_fd_pr__pfet_01v8[vth])
save v(@m.x1.xgbp.xm5.msky130_fd_pr__pfet_01v8[vdsat])

save i(@m.x1.xgbp.xm6.msky130_fd_pr__pfet_01v8[id])
save @m.x1.xgbp.xm6.msky130_fd_pr__pfet_01v8[gm]
save v(@m.x1.xgbp.xm6.msky130_fd_pr__pfet_01v8[vds])
save v(@m.x1.xgbp.xm6.msky130_fd_pr__pfet_01v8[vgs])
save v(@m.x1.xgbp.xm6.msky130_fd_pr__pfet_01v8[vth])
save v(@m.x1.xgbp.xm6.msky130_fd_pr__pfet_01v8[vdsat])

save i(@m.x1.xgbp.xm7.msky130_fd_pr__pfet_01v8[id])
save @m.x1.xgbp.xm7.msky130_fd_pr__pfet_01v8[gm]
save v(@m.x1.xgbp.xm7.msky130_fd_pr__pfet_01v8[vds])
save v(@m.x1.xgbp.xm7.msky130_fd_pr__pfet_01v8[vgs])
save v(@m.x1.xgbp.xm7.msky130_fd_pr__pfet_01v8[vth])
save v(@m.x1.xgbp.xm7.msky130_fd_pr__pfet_01v8[vdsat])

save i(@m.x1.xgbp.xm8.msky130_fd_pr__nfet_01v8[id])
save @m.x1.xgbp.xm8.msky130_fd_pr__nfet_01v8[gm]
save v(@m.x1.xgbp.xm8.msky130_fd_pr__nfet_01v8[vds])
save v(@m.x1.xgbp.xm8.msky130_fd_pr__nfet_01v8[vgs])
save v(@m.x1.xgbp.xm8.msky130_fd_pr__nfet_01v8[vth])
save v(@m.x1.xgbp.xm8.msky130_fd_pr__nfet_01v8[vdsat])

save i(@m.x1.xgbp.xm9.msky130_fd_pr__nfet_01v8[id])
save @m.x1.xgbp.xm9.msky130_fd_pr__nfet_01v8[gm]
save v(@m.x1.xgbp.xm9.msky130_fd_pr__nfet_01v8[vds])
save v(@m.x1.xgbp.xm9.msky130_fd_pr__nfet_01v8[vgs])
save v(@m.x1.xgbp.xm9.msky130_fd_pr__nfet_01v8[vth])
save v(@m.x1.xgbp.xm9.msky130_fd_pr__nfet_01v8[vdsat])

save i(@m.x1.xgbp.xm10.msky130_fd_pr__nfet_01v8[id])
save @m.x1.xgbp.xm10.msky130_fd_pr__nfet_01v8[gm]
save v(@m.x1.xgbp.xm10.msky130_fd_pr__nfet_01v8[vds])
save v(@m.x1.xgbp.xm10.msky130_fd_pr__nfet_01v8[vgs])
save v(@m.x1.xgbp.xm10.msky130_fd_pr__nfet_01v8[vth])
save v(@m.x1.xgbp.xm10.msky130_fd_pr__nfet_01v8[vdsat])

save i(@m.x1.xgbp.xm11.msky130_fd_pr__nfet_01v8[id])
save @m.x1.xgbp.xm11.msky130_fd_pr__nfet_01v8[gm]
save v(@m.x1.xgbp.xm11.msky130_fd_pr__nfet_01v8[vds])
save v(@m.x1.xgbp.xm11.msky130_fd_pr__nfet_01v8[vgs])
save v(@m.x1.xgbp.xm11.msky130_fd_pr__nfet_01v8[vth])
save v(@m.x1.xgbp.xm11.msky130_fd_pr__nfet_01v8[vdsat])


** CMFB OP param
save i(@m.x1.xgbp.xm28.msky130_fd_pr__pfet_01v8[id])
save @m.x1.xgbp.xm28.msky130_fd_pr__pfet_01v8[gm]
save v(@m.x1.xgbp.xm28.msky130_fd_pr__pfet_01v8[vds])
save v(@m.x1.xgbp.xm28.msky130_fd_pr__pfet_01v8[vgs])
save v(@m.x1.xgbp.xm28.msky130_fd_pr__pfet_01v8[vth])
save v(@m.x1.xgbp.xm28.msky130_fd_pr__pfet_01v8[vdsat])

save i(@m.x1.xgbp.xm29.msky130_fd_pr__pfet_01v8_lvt[id])
save @m.x1.xgbp.xm29.msky130_fd_pr__pfet_01v8_lvt[gm]
save v(@m.x1.xgbp.xm29.msky130_fd_pr__pfet_01v8_lvt[vds])
save v(@m.x1.xgbp.xm29.msky130_fd_pr__pfet_01v8_lvt[vgs])
save v(@m.x1.xgbp.xm29.msky130_fd_pr__pfet_01v8_lvt[vth])
save v(@m.x1.xgbp.xm29.msky130_fd_pr__pfet_01v8_lvt[vdsat])

save i(@m.x1.xgbp.xm30.msky130_fd_pr__pfet_01v8_lvt[id])
save @m.x1.xgbp.xm30.msky130_fd_pr__pfet_01v8_lvt[gm]
save v(@m.x1.xgbp.xm30.msky130_fd_pr__pfet_01v8_lvt[vds])
save v(@m.x1.xgbp.xm30.msky130_fd_pr__pfet_01v8_lvt[vgs])
save v(@m.x1.xgbp.xm30.msky130_fd_pr__pfet_01v8_lvt[vth])
save v(@m.x1.xgbp.xm30.msky130_fd_pr__pfet_01v8_lvt[vdsat])

save i(@m.x1.xgbp.xm31.msky130_fd_pr__pfet_01v8[id])
save @m.x1.xgbp.xm31.msky130_fd_pr__pfet_01v8[gm]
save v(@m.x1.xgbp.xm31.msky130_fd_pr__pfet_01v8[vds])
save v(@m.x1.xgbp.xm31.msky130_fd_pr__pfet_01v8[vgs])
save v(@m.x1.xgbp.xm31.msky130_fd_pr__pfet_01v8[vth])
save v(@m.x1.xgbp.xm31.msky130_fd_pr__pfet_01v8[vdsat])

save i(@m.x1.xgbp.xm32.msky130_fd_pr__pfet_01v8_lvt[id])
save @m.x1.xgbp.xm32.msky130_fd_pr__pfet_01v8_lvt[gm]
save v(@m.x1.xgbp.xm32.msky130_fd_pr__pfet_01v8_lvt[vds])
save v(@m.x1.xgbp.xm32.msky130_fd_pr__pfet_01v8_lvt[vgs])
save v(@m.x1.xgbp.xm32.msky130_fd_pr__pfet_01v8_lvt[vth])
save v(@m.x1.xgbp.xm32.msky130_fd_pr__pfet_01v8_lvt[vdsat])

save i(@m.x1.xgbp.xm33.msky130_fd_pr__pfet_01v8_lvt[id])
save @m.x1.xgbp.xm33.msky130_fd_pr__pfet_01v8_lvt[gm]
save v(@m.x1.xgbp.xm33.msky130_fd_pr__pfet_01v8_lvt[vds])
save v(@m.x1.xgbp.xm33.msky130_fd_pr__pfet_01v8_lvt[vgs])
save v(@m.x1.xgbp.xm33.msky130_fd_pr__pfet_01v8_lvt[vth])
save v(@m.x1.xgbp.xm33.msky130_fd_pr__pfet_01v8_lvt[vdsat])

save i(@m.x1.xgbp.xm34.msky130_fd_pr__nfet_01v8[id])
save @m.x1.xgbp.xm34.msky130_fd_pr__nfet_01v8[gm]
save v(@m.x1.xgbp.xm34.msky130_fd_pr__nfet_01v8[vds])
save v(@m.x1.xgbp.xm34.msky130_fd_pr__nfet_01v8[vgs])
save v(@m.x1.xgbp.xm34.msky130_fd_pr__nfet_01v8[vth])
save v(@m.x1.xgbp.xm34.msky130_fd_pr__nfet_01v8[vdsat])

save i(@m.x1.xgbp.xm35.msky130_fd_pr__nfet_01v8[id])
save @m.x1.xgbp.xm35.msky130_fd_pr__nfet_01v8[gm]
save v(@m.x1.xgbp.xm35.msky130_fd_pr__nfet_01v8[vds])
save v(@m.x1.xgbp.xm35.msky130_fd_pr__nfet_01v8[vgs])
save v(@m.x1.xgbp.xm35.msky130_fd_pr__nfet_01v8[vth])
save v(@m.x1.xgbp.xm35.msky130_fd_pr__nfet_01v8[vdsat])


* #################################################################
* #
* #                         OPERATING POINT
* #
* #################################################################
save all
save v(vin)
save v(vout)

op
set filetype=binary
write pll_lf_buf_tb_tran.raw all


* #################################################################
* #
* #                          AC SIMULATION
* #
* #################################################################
*alterparam ac_on=1
*alterparam stb_on=0
*alterparam tran_on=0
*alterparam step_on=0
*reset
*save all
*save v(vin)
*save v(vout)
*
*ac dec 100 1 1T
*set filetype=ascii
*write  pll_lf_buf_tb_ac_tran.raw all
*
*plot dB(v(vout)/v(vin))


* #################################################################
* #
* #                 TRANSIENT SINE WAVE REGIME
* #
* #################################################################
alterparam ac_on=0
alterparam stb_on=0
alterparam tran_on=1
alterparam step_on=0
reset
save all
save v(vin)
save v(vout)

set imp_ac = @Rin[r]
alter @Rin[r]=1e12

*tran 100n 6m 5.96m 100n
tran 0.100n 10u 0u 0.100n
*tran 100n 100m 100n
set filetype=ascii
write pll_lf_buf_tb_tran_tran.raw all

alter @Rin[r]=imp_ac

plot v(vin) v(vout)


* #################################################################
* #
* #                   TRANSIENT STEP RESPONSE
* #
* #################################################################
*alterparam ac_on = 0
*alterparam stb_on = 0 
*alterparam tran_on = 0
*alterparam step_on = 1
*reset
*save all
*save v(vin)
*save v(vout)
*
*set imp_ac = @Rin[r]
*alter @Rin[r]=1e12
*
*tran 0.1n 0.9u 0.8u
*set filetype=ascii
*write pll_lf_buf_tb_step.raw all
*
*alter @Rin[r]=imp_ac
*
*plot v(vin) v(vout)

.endc
"}
C {devices/code.sym} 170 -660 0 0 {name=TT_MODELS
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
C {devices/launcher.sym} 120 -500 0 0 {name=h1
descr=Annotate
tclcommand="ngspice::annotate"}
C {devices/launcher.sym} 120 -460 0 0 {name=h2
descr="View Raw" 
tclcommand="textwindow $netlist_dir/test_nmos.raw"}
C {lab_wire.sym} 940 -380 3 0 {name=l4 sig_type=std_logic lab=vss}
C {lab_wire.sym} 940 -540 3 1 {name=l5 sig_type=std_logic lab=vdd
}
C {devices/vsource.sym} 300 -110 0 0 {name=Vvcm value="dc 0.9"}
C {lab_wire.sym} 300 -80 3 0 {name=l11 sig_type=std_logic lab=vss

}
C {lab_wire.sym} 800 -480 0 1 {name=l14 sig_type=std_logic lab=vin
}
C {lab_wire.sym} 920 -380 3 0 {name=l19 sig_type=std_logic lab=ib_buf}
C {devices/capa.sym} 1400 -200 0 0 {name=C6
m=1
value=0.001p}
C {lab_wire.sym} 1400 -170 3 0 {name=l26 sig_type=std_logic lab=vss
}
C {devices/ngspice_probe.sym} 1280 -460 0 0 {name=r1}
C {devices/ngspice_probe.sym} 830 -480 0 0 {name=r3}
C {devices/ngspice_probe.sym} 830 -440 0 0 {name=r5}
C {devices/ngspice_probe.sym} 1020 -460 0 0 {name=r16}
C {lab_wire.sym} 1200 -460 0 1 {name=l78 sig_type=std_logic lab=vout

}
C {devices/ngspice_probe.sym} 300 -260 0 0 {name=r33}
C {devices/ngspice_probe.sym} 300 -160 0 0 {name=r38}
C {devices/vsource.sym} 300 -210 0 0 {name=Vtran_sig value="dc 0 sin(0 100m 1meg 0 0 0)"}
C {lab_wire.sym} 300 -260 3 1 {name=l7 sig_type=std_logic lab=vin}
C {lab_wire.sym} 300 -140 3 1 {name=l10 sig_type=std_logic lab=vcm

}
C {lab_wire.sym} 920 -540 3 1 {name=l6 sig_type=std_logic lab=sdn}
C {devices/vsource.sym} 500 -110 0 0 {name=Vtran_sdn value="dc 0 pulse 0 1.8 0u 100n 100n 1u 1"}
C {lab_wire.sym} 500 -80 3 0 {name=l8 sig_type=std_logic lab=vss

}
C {lab_wire.sym} 500 -280 3 0 {name=l13 sig_type=std_logic lab=sdn}
C {devices/vsource.sym} 40 -110 0 0 {name=V1 value="dc 1.8 PWL(0 0 100n 1.8)"}
C {devices/gnd.sym} 160 -40 0 0 {name=l1 lab=gnd}
C {lab_wire.sym} 40 -390 3 0 {name=l2 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 40 -80 3 0 {name=l3 sig_type=std_logic lab=gnd}
C {devices/ammeter.sym} 40 -210 0 0 {name=Vmeas_vdd current=-3.4871e-04}
C {lab_wire.sym} 40 -180 3 0 {name=l17 sig_type=std_logic lab=vdd_0
}
C {lab_wire.sym} 160 -80 3 0 {name=l45 sig_type=std_logic lab=gnd}
C {lab_wire.sym} 160 -390 3 0 {name=l47 sig_type=std_logic lab=vss}
C {devices/ammeter.sym} 160 -210 0 0 {name=Vmeas_vss current=3.4871e-04}
C {devices/res.sym} 40 -310 0 0 {name=Rvdd
value=10m
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 160 -310 0 0 {name=Rvss
value=10m
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 40 -280 3 0 {name=l29 sig_type=std_logic lab=vdd_1
}
C {lab_wire.sym} 160 -280 3 0 {name=l38 sig_type=std_logic lab=vss_1
}
C {devices/ngspice_probe.sym} 40 -340 0 0 {name=r8}
C {devices/isource.sym} 770 -190 0 0 {name=I2 value=25u}
C {devices/ngspice_probe.sym} 500 -260 0 0 {name=r4}
C {devices/res.sym} 1500 -200 0 0 {name=R1
value=1meg
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1500 -170 3 0 {name=l9 sig_type=std_logic lab=vss
}
C {devices/res.sym} 500 -210 0 0 {name=Rvss1
value=10m
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/nfet_01v8.sym} 790 -110 0 1 {name=M9
L=1
W=16
nf=2
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
C {sky130_fd_pr/nfet_01v8.sym} 880 -110 0 0 {name=M10
L=1
W=16
nf=2
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
C {lab_wire.sym} 770 -80 3 0 {name=l12 sig_type=std_logic lab=vss}
C {lab_wire.sym} 900 -270 3 0 {name=l15 sig_type=std_logic lab=ib_buf}
C {devices/ngspice_probe.sym} 900 -240 0 0 {name=r6}
C {lab_wire.sym} 900 -80 3 0 {name=l16 sig_type=std_logic lab=vss}
C {lab_wire.sym} 920 -80 3 0 {name=l18 sig_type=std_logic lab=vss}
C {lab_wire.sym} 770 -270 3 0 {name=l20 sig_type=std_logic lab=vdd
}
C {devices/ngspice_probe.sym} 780 -160 0 0 {name=r2}
C {lab_wire.sym} 750 -80 3 0 {name=l21 sig_type=std_logic lab=vss}
C {devices/ammeter.sym} 900 -190 0 0 {name=Vmeas_vdd1 current=2.4741e-05}
C {test_jens/ngspice_get_value_inline2.sym} 710 -170 0 1 {name=r12 descr="Id" node=i(@m.$\{path\}xm9.msky130_fd_pr__nfet_01v8[id])
}
C {test_jens/ngspice_get_value_inline2.sym} 710 -160 0 1 {name=r13 descr="vds" node=v(@m.$\{path\}xm9.msky130_fd_pr__nfet_01v8[vds])}
C {test_jens/ngspice_get_value_inline2.sym} 710 -150 0 1 {name=r14 descr="Vgs" node=v(@m.$\{path\}xm9.msky130_fd_pr__nfet_01v8[vgs])
}
C {test_jens/ngspice_get_value_inline2.sym} 710 -140 0 1 {name=r15 descr="vth" node=v(@m.$\{path\}xm9.msky130_fd_pr__nfet_01v8[vth])
}
C {test_jens/ngspice_get_value_inline2.sym} 710 -130 0 1 {name=r7 descr="vdsat" node=v(@m.$\{path\}xm9.msky130_fd_pr__nfet_01v8[vdsat])
}
C {test_jens/ngspice_get_value_inline2.sym} 960 -170 0 0 {name=r9 descr="Id" node=i(@m.$\{path\}xm10.msky130_fd_pr__nfet_01v8[id])
}
C {test_jens/ngspice_get_value_inline2.sym} 960 -160 0 0 {name=r10 descr="vds" node=v(@m.$\{path\}xm10.msky130_fd_pr__nfet_01v8[vds])}
C {test_jens/ngspice_get_value_inline2.sym} 960 -150 0 0 {name=r11 descr="Vgs" node=v(@m.$\{path\}xm10.msky130_fd_pr__nfet_01v8[vgs])
}
C {test_jens/ngspice_get_value_inline2.sym} 960 -140 0 0 {name=r17 descr="vth" node=v(@m.$\{path\}xm10.msky130_fd_pr__nfet_01v8[vth])
}
C {test_jens/ngspice_get_value_inline2.sym} 960 -130 0 0 {name=r18 descr="vdsat" node=v(@m.$\{path\}xm10.msky130_fd_pr__nfet_01v8[vdsat])
}
C {test_jens/pll/pll_lf_buf/pll_lf_buf.sym} 940 -460 0 0 {name=x1}
