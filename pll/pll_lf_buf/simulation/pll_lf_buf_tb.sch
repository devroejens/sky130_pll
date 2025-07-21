v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 890 -580 890 -540 { lab=vss}
N 1540 -430 1540 -370 { lab=vss}
N 1540 -650 1540 -590 { lab=vdd}
N 1520 -430 1520 -370 { lab=ibias}
N 2160 -80 2160 -40 { lab=vss}
N 40 -740 40 -700 { lab=vss}
N 200 -740 200 -700 { lab=vss}
N 200 -940 200 -900 { lab=vss}
N 40 -940 40 -900 { lab=vss}
N 200 -860 200 -800 { lab=step_sim}
N 40 -860 40 -800 { lab=tran_sim}
N 200 -1060 200 -1000 { lab=stb_sim}
N 40 -1060 40 -1000 { lab=ac_sim}
N 890 -740 980 -740 { lab=vcm}
N 890 -740 890 -640 { lab=vcm}
N 730 -690 730 -650 { lab=vss}
N 730 -770 730 -710 { lab=ac_sim}
N 610 -690 610 -650 { lab=vss}
N 610 -770 610 -710 { lab=tran_sim}
N 490 -690 490 -650 { lab=vss}
N 490 -770 490 -710 { lab=step_sim}
N 650 -800 650 -740 { lab=vin}
N 530 -800 530 -740 { lab=vin}
N 530 -800 650 -800 { lab=vin}
N 530 -680 530 -340 { lab=net1}
N 650 -680 650 -440 { lab=net2}
N 770 -740 810 -740 { lab=vin}
N 810 -740 810 -680 { lab=vin}
N 770 -680 810 -680 { lab=vin}
N 2160 -510 2160 -140 { lab=vout}
N 770 -580 770 -540 { lab=net3}
N 770 -680 770 -640 { lab=vin}
N 770 -800 770 -740 { lab=vin}
N 770 -480 770 -440 { lab=vcm}
N 650 -380 650 -340 { lab=vcm}
N 530 -280 530 -240 { lab=vcm}
N 770 -800 980 -800 { lab=vin}
N 650 -800 770 -800 { lab=vin}
N 1380 -530 1440 -530 { lab=vin}
N 1520 -650 1520 -590 { lab=sdn}
N 1300 -690 1860 -690 { lab=vout}
N 1860 -690 1860 -510 { lab=vout}
N 1440 -530 1460 -530 { lab=vin}
N 1440 -490 1460 -490 { lab=vout}
N 40 -80 40 -40 { lab=gnd}
N 40 -400 40 -340 { lab=vdd}
N 40 -180 40 -140 { lab=vdd_0}
N 160 -400 160 -340 { lab=vss}
N 160 -180 160 -40 { lab=gnd}
N 40 -280 40 -240 { lab=vdd_1}
N 160 -280 160 -240 { lab=vss_1}
N 1560 -80 1560 -40 { lab=vss}
N 1560 -200 1560 -140 { lab=sdn}
N 1460 -200 1460 -140 { lab=ibias}
N 1460 -80 1460 -40 { lab=vss}
N 1620 -510 1720 -510 { lab=#net4}
N 1800 -510 1860 -510 { lab=vout}
N 1860 -510 2160 -510 { lab=vout}
N 1300 -490 1440 -490 { lab=vout}
N 1300 -690 1300 -490 { lab=vout}
C {devices/code.sym} 30 -660 0 0 {name=SIM only_toplevel=false value="
.param temp=27

.param ac_on=1
.param stb_on= 0
.param tran_on=0
.param step_on=0

.option savecurrents
.option rshunt = 1e12
*.option gmin = 1e-24
**.option method=Gear
**.option chgtol=1e-12


*.model switch1 aswitch(cntl_off=0.0 cntl_on=0.1 r_off=1e12 r_on=1.0 log=TRUE)
.model sw SW (ron=0.1 roff=1e12 vt=0.5 vh=0)

.control
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
write pll_lf_buf_tb.raw all


* #################################################################
* #
* #                          AC SIMULATION
* #
* #################################################################
alterparam ac_on=1
alterparam stb_on=0
alterparam tran_on=0
alterparam step_on=0
reset
save all
save v(vin)
save v(vout)

ac dec 100 1 1T
set filetype=ascii
write  pll_lf_buf_tb_ac.raw all

plot dB(v(vout)/v(vin))


* #################################################################
* #
* #                     STABILITY SIMULATION
* #
* #################################################################
alterparam ac_on=1
alterparam stb_on=0
alterparam tran_on=0
alterparam step_on=0
reset
save all
save v(vin)
save v(vout)

*set mag_ac = @Vin[acmag]
alter @Vin[acmag]=0
*set imp_ac = @Rin[r]
alter @Rin[r]=1e12

alter @v.xstbprb.Vprobe1[acmag]=1
alter @i.xstbprb.Iprobe1[acmag]=0
ac dec 100 1 1T
set filetype=ascii
write pll_lf_buf_tb_ol_0.raw all

alter @v.xstbprb.Vprobe1[acmag]=0
alter @i.xstbprb.Iprobe1[acmag]=1
ac dec 100 1 1T
set filetype=ascii
write pll_lf_buf_tb_ol_1.raw all

alter @v.xstbprb.Vprobe1[acmag]=0
alter @i.xstbprb.Iprobe1[acmag]=0

*alter @Vin[acmag]=mag_ac
*alter @Rin[r]=imp_ac
alter @Vin[acmag]=1
alter @Rin[r]=1u


* EXTRACT REQUIRED DATA
let ip11 = ac2.i(v.xstbprb.Vprobe1)
let ip12 = ac2.i(v.xstbprb.Vprobe2)
let ip21 = ac3.i(v.xstbprb.Vprobe1)
let ip22 = ac3.i(v.xstbprb.Vprobe2)
let vprb1 = ac2.xstbprb.probe_p
let vprb2 = ac3.xstbprb.probe_p
*let vprb1 = ac2.xstbprb.probe_p-ac2.xstbprb.probe_n
*let vprb2 = ac3.xstbprb.probe_p-ac3.xstbprb.probe_n


* MIDDLEBROOK
let loopgain_middlebrook = 1/(vprb1+ip22)-1
let phase_middlebrook = 180/PI*vp(loopgain_middlebrook)

* TIAN
let loopgain_tian = 1/(1/(2*(ip11*vprb2-vprb1*ip21)+vprb1+ip21)-1)
let phase_tian = 180/PI*vp(loopgain_tian)

* CALCULATE & PLOT
plot vdb(loopgain_tian)
plot phase_tian

plot vdb(loopgain_middlebrook)
plot phase_middlebrook

plot vdb(loopgain_middlebrook) vdb(loopgain_tian)
plot phase_middlebrook phase_tian

* MEASUREMENT
echo --
echo --
let pm_deg=0
let pm_freq=0
meas ac pm_deg find phase_tian when vdb(loopgain_tian)=0
meas ac pm_freq find frequency when vdb(loopgain_tian)=0

let gm_db=0
let gm_freq=0
meas ac gm_db find vdb(loopgain_tian) when vp(loopgain_tian)=0
meas ac gm_freq find frequency when vp(loopgain_tian)=0

*meas ac 3db_f when phase_tian=135
*meas ac 0db_f when vdb(loopgain_tian)=0
*meas ac dc_gain find vdb(loopgain_tian) at=0.01
*meas ac m6dB when vdB(loopgain_tian)=-6
echo --
echo --

* SAVE DATA
set filetype=ascii
write  pll_lf_buf_tb_ol.raw loopgain_middlebrook loopgain_tian pm_deg pm_freq gm_db gm_freq

* #################################################################
* #
* #                       NOISE SIMULATION
* #
* #################################################################
alterparam ac_on=1
alterparam stb_on=0
alterparam tran_on=0
alterparam step_on=0
reset
save all
save v(vin)
save v(vout)

set sqrnoise
noise v(vout) vin dec 100 1 1T
set filetype=ascii
write  pll_lf_buf_se_tb_noise.raw all noise3.inoise_spectrum noise3.onoise_spectrum

plot noise3.inoise_spectrum noise3.onoise_spectrum
print inoise_total
print onoise_total

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

tran 0.1n 10u uic
set filetype=ascii
write pll_lf_buf_tb_tran.raw all

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
C {lab_wire.sym} 1540 -430 3 0 {name=l4 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1540 -590 3 1 {name=l5 sig_type=std_logic lab=vdd
}
C {devices/vsource.sym} 890 -610 0 0 {name=Vvcm value="dc 0.9"}
C {lab_wire.sym} 890 -580 3 0 {name=l11 sig_type=std_logic lab=vss

}
C {lab_wire.sym} 1400 -530 0 1 {name=l14 sig_type=std_logic lab=vin
}
C {lab_wire.sym} 1520 -430 3 0 {name=l19 sig_type=std_logic lab=ibias}
C {devices/capa.sym} 2160 -110 0 0 {name=C6
m=1
value=2.8p}
C {lab_wire.sym} 2160 -80 3 0 {name=l26 sig_type=std_logic lab=vss
}
C {devices/ngspice_probe.sym} 1880 -510 0 0 {name=r1}
C {devices/ngspice_probe.sym} 1430 -530 0 0 {name=r3}
C {devices/ngspice_probe.sym} 1430 -490 0 0 {name=r5}
C {devices/vsource.sym} 40 -770 0 0 {name=Vtran value='tran_on'}
C {lab_wire.sym} 40 -740 3 0 {name=l49 sig_type=std_logic lab=vss
}
C {devices/vsource.sym} 200 -770 0 0 {name=Vstep value='step_on'}
C {lab_wire.sym} 200 -740 3 0 {name=l50 sig_type=std_logic lab=vss
}
C {lab_wire.sym} 40 -860 3 0 {name=l51 sig_type=std_logic lab=tran_sim
}
C {lab_wire.sym} 200 -860 3 0 {name=l52 sig_type=std_logic lab=step_sim}
C {devices/ngspice_probe.sym} 40 -800 0 0 {name=r17}
C {devices/ngspice_probe.sym} 200 -800 0 0 {name=r18}
C {devices/vsource.sym} 200 -970 0 0 {name=Vstb value='stb_on'}
C {lab_wire.sym} 200 -940 3 0 {name=l35 sig_type=std_logic lab=vss
}
C {lab_wire.sym} 200 -1060 3 0 {name=l37 sig_type=std_logic lab=stb_sim}
C {devices/ngspice_probe.sym} 200 -1000 0 0 {name=r19}
C {lab_wire.sym} 940 -740 0 1 {name=l71 sig_type=std_logic lab=vcm}
C {devices/vsource.sym} 40 -970 0 0 {name=Vac value='ac_on'}
C {lab_wire.sym} 40 -940 3 0 {name=l72 sig_type=std_logic lab=vss
}
C {lab_wire.sym} 40 -1060 3 0 {name=l73 sig_type=std_logic lab=ac_sim}
C {devices/ngspice_probe.sym} 40 -1000 0 0 {name=r34}
C {devices/ngspice_probe.sym} 1620 -510 0 0 {name=r16}
C {lab_wire.sym} 1800 -510 0 1 {name=l78 sig_type=std_logic lab=vout

}
C {devices/vsource.sym} 770 -510 0 0 {name=Vin value="dc 0 ac 1"}
C {devices/ngspice_probe.sym} 910 -800 0 0 {name=r33}
C {lab_wire.sym} 730 -770 3 0 {name=l83 sig_type=std_logic lab=ac_sim
}
C {lab_wire.sym} 730 -690 3 0 {name=l84 sig_type=std_logic lab=vss
}
C {devices/switch_ngspice.sym} 770 -710 0 0 {name=S9 model=sw}
C {devices/ngspice_probe.sym} 910 -740 0 0 {name=r38}
C {lab_wire.sym} 610 -770 3 0 {name=l82 sig_type=std_logic lab=tran_sim
}
C {lab_wire.sym} 610 -690 3 0 {name=l18 sig_type=std_logic lab=vss
}
C {devices/switch_ngspice.sym} 650 -710 0 0 {name=S10 model=sw}
C {devices/vsource.sym} 650 -410 0 0 {name=Vtran1 value="dc 0 sin(0 5m 1meg 0 0 0)"}
C {devices/vsource.sym} 530 -310 0 0 {name=Vstep1 value="dc 0 PWL(0 0 0.82u 0 0.820001u 250m 0.830u 250m 0.830001u 0 0.86u 0 0.860001u -250m 0.870u -250m 0.870001u 0)"}
C {lab_wire.sym} 490 -770 3 0 {name=l86 sig_type=std_logic lab=step_sim}
C {lab_wire.sym} 490 -690 3 0 {name=l20 sig_type=std_logic lab=vss
}
C {devices/switch_ngspice.sym} 530 -710 0 0 {name=S11 model=sw}
C {lab_wire.sym} 940 -800 0 1 {name=l7 sig_type=std_logic lab=vin}
C {devices/res.sym} 770 -610 0 0 {name=Rin
value=1u
m=1}
C {lab_wire.sym} 530 -520 3 0 {name=l12 sig_type=std_logic lab=net1
}
C {lab_wire.sym} 650 -520 3 0 {name=l15 sig_type=std_logic lab=net2

}
C {lab_wire.sym} 770 -570 3 0 {name=l16 sig_type=std_logic lab=net3

}
C {lab_wire.sym} 770 -480 3 0 {name=l9 sig_type=std_logic lab=vcm

}
C {lab_wire.sym} 650 -380 3 0 {name=l10 sig_type=std_logic lab=vcm

}
C {lab_wire.sym} 530 -280 3 0 {name=l22 sig_type=std_logic lab=vcm

}
C {lab_wire.sym} 1520 -590 3 1 {name=l6 sig_type=std_logic lab=sdn}
C {devices/vsource.sym} 1560 -110 0 0 {name=Vtran2 value="dc 0 pulse 0 1.8 0u 1n 1n 1u 1"}
C {devices/vsource.sym} 40 -110 0 0 {name=V1 value="DC 1.8 PWL(0 0 10n 1.8)"}
C {devices/gnd.sym} 160 -40 0 0 {name=l1 lab=gnd}
C {lab_wire.sym} 40 -390 3 0 {name=l2 sig_type=std_logic lab=vdd
}
C {lab_wire.sym} 40 -80 3 0 {name=l3 sig_type=std_logic lab=gnd}
C {devices/ammeter.sym} 40 -210 0 0 {name=Vmeas_vdd current=-5.9089e-04}
C {lab_wire.sym} 40 -180 3 0 {name=l17 sig_type=std_logic lab=vdd_0
}
C {lab_wire.sym} 160 -80 3 0 {name=l45 sig_type=std_logic lab=gnd}
C {lab_wire.sym} 160 -390 3 0 {name=l47 sig_type=std_logic lab=vss}
C {devices/ammeter.sym} 160 -210 0 0 {name=Vmeas_vss current=5.9089e-04}
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
C {lab_wire.sym} 1560 -80 3 0 {name=l21 sig_type=std_logic lab=vss

}
C {lab_wire.sym} 1560 -150 3 1 {name=l23 sig_type=std_logic lab=sdn}
C {devices/isource.sym} 1460 -110 0 0 {name=I0 value=25u}
C {lab_wire.sym} 1460 -150 3 1 {name=l24 sig_type=std_logic lab=ibias}
C {lab_wire.sym} 1460 -80 3 0 {name=l25 sig_type=std_logic lab=vss

}
C {test_jens/stbprobe.sym} 1760 -480 0 0 {name=xstbprb cmdm=0}
C {test_jens/pll/pll_lf_buf/pll_lf_buf.sym} 1540 -510 0 0 {name=x1}
