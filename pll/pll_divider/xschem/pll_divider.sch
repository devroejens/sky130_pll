v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
L 4 3980 -780 3980 -20 {}
L 4 1600 -20 3980 -20 {}
L 4 1600 -780 3980 -780 {}
L 4 1600 -780 1600 -20 {}
L 4 500 -20 1560 -20 {}
L 4 1560 -780 1560 -20 {}
L 4 500 -780 500 -20 {}
L 4 500 -780 1560 -780 {}
L 4 500 -1220 500 -940 {}
L 4 500 -940 1860 -940 {}
L 4 1860 -1220 1860 -940 {}
L 4 500 -1220 1860 -1220 {}
L 4 3220 -900 3980 -900 {}
L 4 3980 -1220 3980 -900 {}
L 4 3220 -1220 3980 -1220 {}
L 4 3220 -1220 3220 -900 {}
T {Prescaler Ripple Counter} 500 -810 0 0 0.5 0.5 {}
T {Divide by 8/9 Dual Modulus Prescaler} 500 -1250 0 0 0.5 0.5 {}
T {Divider Ripple Counter} 1600 -810 0 0 0.5 0.5 {}
T {Reset Logic} 3220 -1250 0 0 0.5 0.5 {}
N 800 -1070 840 -1070 { lab=#net1}
N 840 -1070 840 -1050 { lab=#net1}
N 840 -1050 880 -1050 { lab=#net1}
N 1060 -1070 1100 -1070 { lab=#net2}
N 770 -1150 1100 -1150 { lab=#net2}
N 1100 -1150 1100 -1070 { lab=#net2}
N 1100 -1070 1140 -1070 { lab=#net2}
N 1260 -1070 1300 -1070 { lab=#net3}
N 1300 -1070 1300 -1050 { lab=#net3}
N 1300 -1050 1340 -1050 { lab=#net3}
N 1320 -1070 1340 -1070 { lab=clk_in}
N 1320 -1070 1320 -990 { lab=clk_in}
N 860 -1070 880 -1070 { lab=clk_in}
N 860 -1070 860 -990 { lab=clk_in}
N 600 -1070 620 -1070 { lab=clk_in}
N 600 -1070 600 -990 { lab=clk_in}
N 580 -1050 620 -1050 { lab=#net4}
N 580 -1170 580 -1050 { lab=#net4}
N 580 -1170 650 -1170 { lab=#net4}
N 1520 -1070 1540 -1070 { lab=#net5}
N 1540 -1190 1540 -1070 { lab=#net5}
N 770 -1190 1540 -1190 { lab=#net5}
N 1580 -1050 1600 -1050 { lab=#net6}
N 1580 -1110 1580 -1050 { lab=#net6}
N 1580 -1110 1800 -1110 { lab=#net6}
N 1800 -1110 1800 -1050 { lab=#net6}
N 1780 -1050 1800 -1050 { lab=#net6}
N 1820 -1150 1820 -1070 { lab=ps_out}
N 1120 -1150 1820 -1150 { lab=ps_out}
N 1120 -1150 1120 -1110 { lab=ps_out}
N 1120 -1110 1140 -1110 { lab=ps_out}
N 620 -1030 620 -1010 { lab=vdd}
N 880 -1030 880 -1010 { lab=vdd}
N 1340 -1030 1340 -1010 { lab=vdd}
N 1580 -1030 1580 -1010 { lab=vdd}
N 840 -1050 840 -970 { lab=#net1}
N 840 -970 1560 -970 { lab=#net1}
N 1560 -1070 1560 -970 { lab=#net1}
N 1560 -1070 1600 -1070 { lab=#net1}
N 1120 -1030 1140 -1030 { lab=ps_mod}
N 760 -460 800 -460 { lab=#net7}
N 780 -440 800 -440 { lab=#net8}
N 780 -440 780 -400 { lab=#net8}
N 780 -400 930 -400 { lab=#net8}
N 930 -400 930 -360 { lab=#net8}
N 850 -380 850 -360 { lab=#net7}
N 760 -380 850 -380 { lab=#net7}
N 760 -460 760 -380 { lab=#net7}
N 980 -480 1000 -480 { lab=#net9}
N 1000 -540 1000 -480 { lab=#net9}
N 780 -540 1000 -540 { lab=#net9}
N 780 -540 780 -480 { lab=#net9}
N 780 -480 800 -480 { lab=#net9}
N 980 -500 1060 -500 { lab=Q[0]}
N 1020 -460 1060 -460 { lab=#net10}
N 1040 -440 1060 -440 { lab=#net11}
N 1040 -440 1040 -400 { lab=#net11}
N 1040 -400 1190 -400 { lab=#net11}
N 1190 -400 1190 -360 { lab=#net11}
N 1110 -380 1110 -360 { lab=#net10}
N 1020 -380 1110 -380 { lab=#net10}
N 1020 -460 1020 -380 { lab=#net10}
N 1240 -480 1260 -480 { lab=#net12}
N 1260 -540 1260 -480 { lab=#net12}
N 1040 -540 1260 -540 { lab=#net12}
N 1040 -540 1040 -480 { lab=#net12}
N 1040 -480 1060 -480 { lab=#net12}
N 1240 -500 1320 -500 { lab=Q[1]}
N 1280 -460 1320 -460 { lab=#net13}
N 1300 -440 1320 -440 { lab=#net14}
N 1300 -440 1300 -400 { lab=#net14}
N 1300 -400 1450 -400 { lab=#net14}
N 1450 -400 1450 -360 { lab=#net14}
N 1370 -380 1370 -360 { lab=#net13}
N 1280 -380 1370 -380 { lab=#net13}
N 1280 -460 1280 -380 { lab=#net13}
N 1500 -480 1520 -480 { lab=#net15}
N 1520 -540 1520 -480 { lab=#net15}
N 1300 -540 1520 -540 { lab=#net15}
N 1300 -540 1300 -480 { lab=#net15}
N 1300 -480 1320 -480 { lab=#net15}
N 1620 -460 1660 -460 { lab=rs}
N 1640 -440 1660 -440 { lab=ss}
N 1640 -440 1640 -400 { lab=ss}
N 1640 -400 1790 -400 { lab=ss}
N 1790 -400 1790 -360 { lab=ss}
N 1710 -380 1710 -360 { lab=rs}
N 1620 -380 1710 -380 { lab=rs}
N 1620 -460 1620 -380 { lab=rs}
N 1840 -480 1860 -480 { lab=QN}
N 1860 -540 1860 -480 { lab=QN}
N 1640 -540 1860 -540 { lab=QN}
N 1640 -540 1640 -480 { lab=QN}
N 1640 -480 1660 -480 { lab=QN}
N 1840 -500 1920 -500 { lab=Q[3]}
N 1880 -460 1920 -460 { lab=#net16}
N 1900 -440 1920 -440 { lab=#net17}
N 1900 -440 1900 -400 { lab=#net17}
N 1900 -400 2050 -400 { lab=#net17}
N 2050 -400 2050 -360 { lab=#net17}
N 1970 -380 1970 -360 { lab=#net16}
N 1880 -380 1970 -380 { lab=#net16}
N 1880 -460 1880 -380 { lab=#net16}
N 2100 -480 2120 -480 { lab=#net18}
N 2120 -540 2120 -480 { lab=#net18}
N 1900 -540 2120 -540 { lab=#net18}
N 1900 -540 1900 -480 { lab=#net18}
N 1900 -480 1920 -480 { lab=#net18}
N 2100 -500 2180 -500 { lab=Q[4]}
N 2140 -460 2180 -460 { lab=#net19}
N 2160 -440 2180 -440 { lab=#net20}
N 2160 -440 2160 -400 { lab=#net20}
N 2160 -400 2310 -400 { lab=#net20}
N 2310 -400 2310 -360 { lab=#net20}
N 2230 -380 2230 -360 { lab=#net19}
N 2140 -380 2230 -380 { lab=#net19}
N 2140 -460 2140 -380 { lab=#net19}
N 2360 -480 2380 -480 { lab=#net21}
N 2380 -540 2380 -480 { lab=#net21}
N 2160 -540 2380 -540 { lab=#net21}
N 2160 -540 2160 -480 { lab=#net21}
N 2160 -480 2180 -480 { lab=#net21}
N 2360 -500 2440 -500 { lab=Q[5]}
N 2400 -460 2440 -460 { lab=#net22}
N 2420 -440 2440 -440 { lab=#net23}
N 2420 -440 2420 -400 { lab=#net23}
N 2420 -400 2570 -400 { lab=#net23}
N 2570 -400 2570 -360 { lab=#net23}
N 2490 -380 2490 -360 { lab=#net22}
N 2400 -380 2490 -380 { lab=#net22}
N 2400 -460 2400 -380 { lab=#net22}
N 2620 -480 2640 -480 { lab=#net24}
N 2640 -540 2640 -480 { lab=#net24}
N 2420 -540 2640 -540 { lab=#net24}
N 2420 -540 2420 -480 { lab=#net24}
N 2420 -480 2440 -480 { lab=#net24}
N 2620 -500 2700 -500 { lab=Q[6]}
N 2660 -460 2700 -460 { lab=#net25}
N 2680 -440 2700 -440 { lab=#net26}
N 2680 -440 2680 -400 { lab=#net26}
N 2680 -400 2830 -400 { lab=#net26}
N 2830 -400 2830 -360 { lab=#net26}
N 2750 -380 2750 -360 { lab=#net25}
N 2660 -380 2750 -380 { lab=#net25}
N 2660 -460 2660 -380 { lab=#net25}
N 2880 -480 2900 -480 { lab=#net27}
N 2900 -540 2900 -480 { lab=#net27}
N 2680 -540 2900 -540 { lab=#net27}
N 2680 -540 2680 -480 { lab=#net27}
N 2680 -480 2700 -480 { lab=#net27}
N 2880 -500 2960 -500 { lab=Q[7]}
N 2920 -460 2960 -460 { lab=#net28}
N 2940 -440 2960 -440 { lab=#net29}
N 2940 -440 2940 -400 { lab=#net29}
N 2940 -400 3090 -400 { lab=#net29}
N 3090 -400 3090 -360 { lab=#net29}
N 3010 -380 3010 -360 { lab=#net28}
N 2920 -380 3010 -380 { lab=#net28}
N 2920 -460 2920 -380 { lab=#net28}
N 3140 -480 3160 -480 { lab=#net30}
N 3160 -540 3160 -480 { lab=#net30}
N 2940 -540 3160 -540 { lab=#net30}
N 2940 -540 2940 -480 { lab=#net30}
N 2940 -480 2960 -480 { lab=#net30}
N 3140 -500 3220 -500 { lab=Q[8]}
N 3180 -460 3220 -460 { lab=#net31}
N 3200 -440 3220 -440 { lab=#net32}
N 3200 -440 3200 -400 { lab=#net32}
N 3200 -400 3350 -400 { lab=#net32}
N 3350 -400 3350 -360 { lab=#net32}
N 3270 -380 3270 -360 { lab=#net31}
N 3180 -380 3270 -380 { lab=#net31}
N 3180 -460 3180 -380 { lab=#net31}
N 3400 -480 3420 -480 { lab=#net33}
N 3420 -540 3420 -480 { lab=#net33}
N 3200 -540 3420 -540 { lab=#net33}
N 3200 -540 3200 -480 { lab=#net33}
N 3200 -480 3220 -480 { lab=#net33}
N 3400 -500 3480 -500 { lab=Q[9]}
N 3440 -460 3480 -460 { lab=#net34}
N 3460 -440 3480 -440 { lab=#net35}
N 3460 -440 3460 -400 { lab=#net35}
N 3460 -400 3610 -400 { lab=#net35}
N 3610 -400 3610 -360 { lab=#net35}
N 3530 -380 3530 -360 { lab=#net34}
N 3440 -380 3530 -380 { lab=#net34}
N 3440 -460 3440 -380 { lab=#net34}
N 3660 -480 3680 -480 { lab=#net36}
N 3680 -540 3680 -480 { lab=#net36}
N 3460 -540 3680 -540 { lab=#net36}
N 3460 -540 3460 -480 { lab=#net36}
N 3460 -480 3480 -480 { lab=#net36}
N 3660 -500 3740 -500 { lab=Q[10]}
N 3700 -460 3740 -460 { lab=#net37}
N 3720 -440 3740 -440 { lab=#net38}
N 3720 -440 3720 -400 { lab=#net38}
N 3720 -400 3870 -400 { lab=#net38}
N 3870 -400 3870 -360 { lab=#net38}
N 3790 -380 3790 -360 { lab=#net37}
N 3700 -380 3790 -380 { lab=#net37}
N 3700 -460 3700 -380 { lab=#net37}
N 3920 -480 3940 -480 { lab=#net39}
N 3940 -540 3940 -480 { lab=#net39}
N 3720 -540 3940 -540 { lab=#net39}
N 3720 -540 3720 -480 { lab=#net39}
N 3720 -480 3740 -480 { lab=#net39}
N 870 -240 870 -180 { lab=#net40}
N 950 -240 950 -100 { lab=div[0]}
N 870 -100 950 -100 { lab=div[0]}
N 910 -100 910 -40 { lab=div[0]}
N 830 -240 830 -220 { lab=rst_0_2}
N 910 -240 910 -220 { lab=rst_0_2}
N 1130 -240 1130 -180 { lab=#net41}
N 1210 -240 1210 -100 { lab=div[1]}
N 1130 -100 1210 -100 { lab=div[1]}
N 1170 -100 1170 -40 { lab=div[1]}
N 1090 -240 1090 -220 { lab=rst_0_2}
N 1170 -240 1170 -220 { lab=rst_0_2}
N 1390 -240 1390 -180 { lab=#net42}
N 1470 -240 1470 -100 { lab=div[2]}
N 1390 -100 1470 -100 { lab=div[2]}
N 1430 -100 1430 -40 { lab=div[2]}
N 1350 -240 1350 -220 { lab=rst_0_2}
N 1430 -240 1430 -220 { lab=rst_0_2}
N 1730 -240 1730 -180 { lab=#net43}
N 1810 -240 1810 -100 { lab=div[3]}
N 1730 -100 1810 -100 { lab=div[3]}
N 1770 -100 1770 -40 { lab=div[3]}
N 1990 -240 1990 -180 { lab=#net44}
N 2070 -240 2070 -100 { lab=div[4]}
N 1990 -100 2070 -100 { lab=div[4]}
N 2030 -100 2030 -40 { lab=div[4]}
N 2250 -240 2250 -180 { lab=#net45}
N 2330 -240 2330 -100 { lab=div[5]}
N 2250 -100 2330 -100 { lab=div[5]}
N 2290 -100 2290 -40 { lab=div[5]}
N 2510 -240 2510 -180 { lab=#net46}
N 2590 -240 2590 -100 { lab=div[6]}
N 2510 -100 2590 -100 { lab=div[6]}
N 2550 -100 2550 -40 { lab=div[6]}
N 2770 -240 2770 -180 { lab=#net47}
N 2850 -240 2850 -100 { lab=div[7]}
N 2770 -100 2850 -100 { lab=div[7]}
N 2810 -100 2810 -40 { lab=div[7]}
N 3030 -240 3030 -180 { lab=#net48}
N 3110 -240 3110 -100 { lab=div[8]}
N 3030 -100 3110 -100 { lab=div[8]}
N 3070 -100 3070 -40 { lab=div[8]}
N 3290 -240 3290 -180 { lab=#net49}
N 3370 -240 3370 -100 { lab=div[9]}
N 3290 -100 3370 -100 { lab=div[9]}
N 3330 -100 3330 -40 { lab=div[9]}
N 3550 -240 3550 -180 { lab=#net50}
N 3630 -240 3630 -100 { lab=div[10]}
N 3550 -100 3630 -100 { lab=div[10]}
N 3590 -100 3590 -40 { lab=div[10]}
N 3810 -240 3810 -180 { lab=#net51}
N 3890 -240 3890 -100 { lab=div[11]}
N 3810 -100 3890 -100 { lab=div[11]}
N 3850 -100 3850 -40 { lab=div[11]}
N 1690 -240 1690 -200 { lab=rst_3_11}
N 1770 -240 1770 -200 { lab=rst_3_11}
N 1950 -240 1950 -200 { lab=rst_3_11}
N 2030 -240 2030 -200 { lab=rst_3_11}
N 2470 -240 2470 -200 { lab=rst_3_11}
N 2550 -240 2550 -200 { lab=rst_3_11}
N 2730 -240 2730 -200 { lab=rst_3_11}
N 2810 -240 2810 -200 { lab=rst_3_11}
N 2990 -240 2990 -200 { lab=rst_3_11}
N 3070 -240 3070 -200 { lab=rst_3_11}
N 3250 -240 3250 -200 { lab=rst_3_11}
N 3330 -240 3330 -200 { lab=rst_3_11}
N 3510 -240 3510 -200 { lab=rst_3_11}
N 3590 -240 3590 -200 { lab=rst_3_11}
N 3770 -240 3770 -200 { lab=rst_3_11}
N 3850 -240 3850 -200 { lab=rst_3_11}
N 1690 -200 3850 -200 { lab=rst_3_11}
N 2210 -240 2210 -200 { lab=rst_3_11}
N 2290 -240 2290 -200 { lab=rst_3_11}
N 1210 -590 1280 -590 { lab=Q[1]}
N 1210 -630 1540 -630 { lab=Q[2]}
N 720 -500 800 -500 { lab=#net52}
N 930 -610 1090 -610 { lab=#net53}
N 930 -570 1020 -570 { lab=Q[0]}
N 720 -590 810 -590 { lab=ps_mod}
N 580 -520 600 -520 { lab=#net54}
N 580 -590 640 -590 { lab=#net54}
N 1500 -500 1540 -500 { lab=Q[2]}
N 1020 -570 1020 -500 { lab=Q[0]}
N 1280 -590 1280 -500 { lab=Q[1]}
N 1540 -630 1540 -500 { lab=Q[2]}
N 580 -590 580 -520 { lab=#net54}
N 1810 -610 1950 -610 { lab=#net55}
N 1810 -570 1880 -570 { lab=Q[3]}
N 1880 -570 1880 -500 { lab=Q[3]}
N 2070 -630 2210 -630 { lab=#net56}
N 2070 -590 2140 -590 { lab=Q[4]}
N 2140 -590 2140 -500 { lab=Q[4]}
N 2330 -610 2400 -610 { lab=Q[5]}
N 2400 -610 2400 -500 { lab=Q[5]}
N 2330 -650 2470 -650 { lab=#net57}
N 2590 -630 2660 -630 { lab=Q[6]}
N 2660 -630 2660 -500 { lab=Q[6]}
N 2850 -650 2920 -650 { lab=Q[7]}
N 2920 -650 2920 -500 { lab=Q[7]}
N 3110 -670 3180 -670 { lab=Q[8]}
N 3180 -670 3180 -500 { lab=Q[8]}
N 3370 -690 3440 -690 { lab=Q[9]}
N 3440 -690 3440 -500 { lab=Q[9]}
N 3370 -730 3510 -730 { lab=#net58}
N 3700 -710 3700 -500 { lab=Q[10]}
N 3630 -710 3700 -710 { lab=Q[10]}
N 3630 -750 3960 -750 { lab=Q[11]}
N 3960 -750 3960 -500 { lab=Q[11]}
N 3920 -500 3960 -500 { lab=Q[11]}
N 1620 -500 1660 -500 { lab=ps_out}
N 560 -480 600 -480 { lab=ps_out}
N 560 -780 560 -480 { lab=ps_out}
N 1620 -780 1620 -500 { lab=ps_out}
N 760 -780 760 -590 { lab=ps_mod}
N 1120 -1030 1120 -940 { lab=ps_mod}
N 1780 -1070 1860 -1070 { lab=ps_out}
N 1580 -1030 1600 -1030 { lab=vdd}
N 620 -1010 1580 -1010 { lab=vdd}
N 560 -1010 620 -1010 { lab=vdd}
N 1860 -1070 1880 -1070 { lab=ps_out}
N 1620 -900 1880 -900 { lab=ps_out}
N 560 -900 1620 -900 { lab=ps_out}
N 1620 -900 1620 -780 { lab=ps_out}
N 1880 -1070 1880 -900 { lab=ps_out}
N 560 -900 560 -780 { lab=ps_out}
N 760 -860 760 -780 { lab=ps_mod}
N 760 -860 1120 -860 { lab=ps_mod}
N 1120 -940 1120 -860 { lab=ps_mod}
N 1660 -590 1690 -590 { lab=div_rst}
N 1660 -780 1660 -590 { lab=div_rst}
N 830 -220 1430 -220 { lab=rst_0_2}
N 1560 -220 3980 -220 { lab=rst_0_2}
N 3850 -200 3980 -200 { lab=rst_3_11}
N 1430 -220 1560 -220 { lab=rst_0_2}
N 1660 -860 1660 -780 { lab=div_rst}
N 500 -990 1320 -990 { lab=clk_in}
N 450 -990 500 -990 { lab=clk_in}
N 450 -60 500 -60 { lab=div[0:11]}
N 3980 -220 4000 -220 { lab=rst_0_2}
N 3980 -200 4020 -200 { lab=rst_3_11}
N 3320 -1010 3340 -1010 { lab=div_rst}
N 3300 -1100 3370 -1100 { lab=#net59}
N 3300 -1100 3300 -970 { lab=#net59}
N 3300 -970 3340 -970 { lab=#net59}
N 3260 -990 3290 -990 { lab=vdd}
N 3540 -1080 3540 -1010 { lab=int_rst}
N 3520 -1010 3540 -1010 { lab=int_rst}
N 3740 -1090 3740 -1080 { lab=div_rst_b}
N 3740 -1090 3760 -1090 { lab=div_rst_b}
N 3740 -1110 3760 -1110 { lab=ps_out_b}
N 3740 -1120 3740 -1110 { lab=ps_out_b}
N 3290 -990 3340 -990 { lab=vdd}
N 3490 -1080 3540 -1080 { lab=int_rst}
N 3490 -1120 3740 -1120 { lab=ps_out_b}
N 3320 -1010 3320 -930 { lab=div_rst}
N 3940 -1090 3980 -1090 { lab=clk_out}
N 3890 -1000 3980 -1000 { lab=rst_3_11}
N 3890 -940 3980 -940 { lab=rst_0_2}
N 3980 -1090 4020 -1090 { lab=clk_out}
N 3620 -1180 3620 -1120 { lab=ps_out_b}
N 1660 -860 3180 -860 { lab=div_rst}
N 1880 -1070 3220 -1070 { lab=ps_out}
N 3220 -1070 3260 -1070 { lab=ps_out}
N 3260 -1180 3260 -1070 { lab=ps_out}
N 3260 -1180 3390 -1180 { lab=ps_out}
N 3320 -930 3320 -900 { lab=div_rst}
N 3180 -860 3320 -860 { lab=div_rst}
N 3320 -900 3320 -860 { lab=div_rst}
N 3980 -940 4000 -940 { lab=rst_0_2}
N 3980 -1000 4020 -1000 { lab=rst_3_11}
N 4000 -940 4000 -220 { lab=rst_0_2}
N 4020 -1000 4020 -200 { lab=rst_3_11}
N 3560 -970 3580 -970 { lab=sdn}
N 3540 -1010 3580 -1010 { lab=int_rst}
N 3320 -930 3580 -930 { lab=div_rst}
N 3740 -1080 3740 -970 { lab=div_rst_b}
N 3700 -970 3740 -970 { lab=div_rst_b}
N 3740 -970 3740 -940 { lab=div_rst_b}
N 3740 -1000 3810 -1000 { lab=div_rst_b}
N 3740 -940 3810 -940 { lab=div_rst_b}
N 3470 -1180 3620 -1180 { lab=ps_out_b}
N 450 -1290 500 -1290 { lab=vss}
N 450 -1330 500 -1330 { lab=vdd}
N 3110 -710 3250 -710 { lab=#net60}
N 2850 -690 2990 -690 { lab=#net61}
N 2590 -670 2730 -670 { lab=#net62}
C {devices/code.sym} 510 -1480 0 0 {name=TT_MODELS
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
C {devices/launcher.sym} 860 -1440 0 0 {name=h1
descr=Annotate
tclcommand="ngspice::annotate"}
C {devices/launcher.sym} 860 -1400 0 0 {name=h2
descr="View Raw" 
tclcommand="textwindow $netlist_dir/test_nmos.raw"}
C {devices/code.sym} 650 -1480 0 0 {name=STDCELLS only_toplevel=false 
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
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/and2/sky130_fd_sc_hd__and2_1.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/and2/sky130_fd_sc_hd__and2_2.spice
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
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/nor3/sky130_fd_sc_hd__nor3_1.spice
"}
C {sky130_stdcells/dfrbp_1.sym} 710 -1050 0 0 {name=x1 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrbp_1.sym} 970 -1050 0 0 {name=x2 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrbp_1.sym} 1430 -1050 0 0 {name=x4 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrbp_1.sym} 1690 -1050 0 0 {name=x5 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/or3_1.sym} 1200 -1070 0 0 {name=x3 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 710 -1170 2 0 {name=x6 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 580 -1010 0 0 {name=l24 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 1820 -1070 0 1 {name=l30 sig_type=std_logic lab=ps_out}
C {sky130_stdcells/dfbbp_1.sym} 890 -470 0 0 {name=x7 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfbbp_1.sym} 1150 -470 0 0 {name=x8 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfbbp_1.sym} 1410 -470 0 0 {name=x9 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfbbp_1.sym} 1750 -470 0 0 {name=x10 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfbbp_1.sym} 2010 -470 0 0 {name=x11 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfbbp_1.sym} 2270 -470 0 0 {name=x12 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfbbp_1.sym} 2530 -470 0 0 {name=x13 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfbbp_1.sym} 2790 -470 0 0 {name=x14 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfbbp_1.sym} 3050 -470 0 0 {name=x15 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfbbp_1.sym} 3310 -470 0 0 {name=x16 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfbbp_1.sym} 3570 -470 0 0 {name=x17 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfbbp_1.sym} 3830 -470 0 0 {name=x18 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 850 -300 3 0 {name=x19 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 930 -300 3 0 {name=x20 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 870 -140 3 0 {name=x21 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 910 -40 3 1 {name=l1 sig_type=std_logic lab=div[0]}
C {lab_wire.sym} 1170 -40 3 1 {name=l2 sig_type=std_logic lab=div[1]}
C {lab_wire.sym} 1430 -40 3 1 {name=l3 sig_type=std_logic lab=div[2]}
C {lab_wire.sym} 1770 -40 3 1 {name=l4 sig_type=std_logic lab=div[3]}
C {lab_wire.sym} 2030 -40 3 1 {name=l5 sig_type=std_logic lab=div[4]}
C {lab_wire.sym} 2290 -40 3 1 {name=l6 sig_type=std_logic lab=div[5]}
C {lab_wire.sym} 2550 -40 3 1 {name=l7 sig_type=std_logic lab=div[6]}
C {lab_wire.sym} 2810 -40 3 1 {name=l9 sig_type=std_logic lab=div[7]}
C {lab_wire.sym} 3070 -40 3 1 {name=l10 sig_type=std_logic lab=div[8]}
C {lab_wire.sym} 3330 -40 3 1 {name=l11 sig_type=std_logic lab=div[9]}
C {lab_wire.sym} 3590 -40 3 1 {name=l12 sig_type=std_logic lab=div[10]}
C {lab_wire.sym} 3850 -40 3 1 {name=l13 sig_type=std_logic lab=div[11]}
C {sky130_stdcells/nand2_1.sym} 1110 -300 3 0 {name=x22 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 1190 -300 3 0 {name=x23 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 1130 -140 3 0 {name=x24 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 1370 -300 3 0 {name=x25 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 1450 -300 3 0 {name=x26 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 1390 -140 3 0 {name=x27 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 1710 -300 3 0 {name=x28 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 1790 -300 3 0 {name=x29 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 1730 -140 3 0 {name=x30 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 1970 -300 3 0 {name=x31 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 2050 -300 3 0 {name=x32 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 1990 -140 3 0 {name=x33 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 2230 -300 3 0 {name=x34 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 2310 -300 3 0 {name=x35 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 2250 -140 3 0 {name=x36 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 2490 -300 3 0 {name=x37 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 2570 -300 3 0 {name=x38 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 2510 -140 3 0 {name=x39 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 2750 -300 3 0 {name=x40 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 2830 -300 3 0 {name=x41 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 2770 -140 3 0 {name=x42 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 3010 -300 3 0 {name=x43 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 3090 -300 3 0 {name=x44 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 3030 -140 3 0 {name=x45 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 3270 -300 3 0 {name=x46 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 3350 -300 3 0 {name=x47 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 3290 -140 3 0 {name=x48 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 3530 -300 3 0 {name=x49 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 3610 -300 3 0 {name=x50 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 3550 -140 3 0 {name=x51 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 3790 -300 3 0 {name=x52 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 3870 -300 3 0 {name=x53 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 3810 -140 3 0 {name=x54 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/or2_0.sym} 1150 -610 0 1 {name=x55 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nor2_1.sym} 870 -590 0 1 {name=x56 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 680 -590 0 1 {name=x58 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/or2_0.sym} 3570 -730 0 1 {name=x59 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/or2_0.sym} 3310 -710 0 1 {name=x60 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/or2_0.sym} 3050 -690 0 1 {name=x61 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/or2_0.sym} 2790 -670 0 1 {name=x62 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/or2_0.sym} 2530 -650 0 1 {name=x63 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/or2_0.sym} 2270 -630 0 1 {name=x64 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/or2_0.sym} 2010 -610 0 1 {name=x65 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nor2_1.sym} 1750 -590 0 1 {name=x66 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 1120 -950 3 1 {name=l14 sig_type=std_logic lab=ps_mod}
C {devices/ipin.sym} 460 -990 0 0 {name=p1 lab=clk_in}
C {devices/ipin.sym} 460 -60 0 0 {name=p2 lab=div[0:11]}
C {sky130_stdcells/nor3_1.sym} 3640 -970 0 0 {name=x67 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} 3570 -970 0 0 {name=p3 lab=sdn}
C {sky130_stdcells/inv_2.sym} 3850 -1000 0 0 {name=x68 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_2.sym} 3850 -940 0 0 {name=x69 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrtp_1.sym} 3430 -990 0 0 {name=x70 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 3290 -990 0 0 {name=l15 sig_type=std_logic lab=vdd}
C {sky130_stdcells/nand2_1.sym} 3430 -1100 2 0 {name=x71 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxbp_1.sym} 3850 -1100 0 0 {name=x73 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 4020 -1090 0 0 {name=p4 lab=clk_out}
C {devices/ipin.sym} 460 -1290 0 0 {name=p5 lab=vss}
C {devices/ipin.sym} 460 -1330 0 0 {name=p6 lab=vdd}
C {lab_wire.sym} 1010 -500 2 0 {name=l17 sig_type=std_logic lab=Q[0]}
C {lab_wire.sym} 1270 -500 2 0 {name=l18 sig_type=std_logic lab=Q[1]}
C {lab_wire.sym} 1530 -500 2 0 {name=l19 sig_type=std_logic lab=Q[2]}
C {lab_wire.sym} 1870 -500 2 0 {name=l20 sig_type=std_logic lab=Q[3]}
C {lab_wire.sym} 2130 -500 2 0 {name=l21 sig_type=std_logic lab=Q[4]}
C {lab_wire.sym} 2390 -500 2 0 {name=l22 sig_type=std_logic lab=Q[5]}
C {lab_wire.sym} 2650 -500 2 0 {name=l23 sig_type=std_logic lab=Q[6]}
C {lab_wire.sym} 2910 -500 2 0 {name=l25 sig_type=std_logic lab=Q[7]}
C {lab_wire.sym} 3170 -500 2 0 {name=l26 sig_type=std_logic lab=Q[8]}
C {lab_wire.sym} 3430 -500 2 0 {name=l29 sig_type=std_logic lab=Q[9]}
C {lab_wire.sym} 3690 -500 2 0 {name=l31 sig_type=std_logic lab=Q[10]}
C {lab_wire.sym} 3950 -500 2 0 {name=l32 sig_type=std_logic lab=Q[11]}
C {sky130_stdcells/inv_2.sym} 3430 -1180 0 0 {name=x72 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/ngspice_probe.sym} 1130 -180 0 0 {name=r13}
C {devices/ngspice_probe.sym} 870 -180 0 0 {name=r1}
C {devices/ngspice_probe.sym} 1390 -180 0 0 {name=r2}
C {devices/ngspice_probe.sym} 1730 -180 0 0 {name=r3}
C {devices/ngspice_probe.sym} 1990 -180 0 0 {name=r4}
C {devices/ngspice_probe.sym} 2250 -180 0 0 {name=r5}
C {devices/ngspice_probe.sym} 2510 -180 0 0 {name=r6}
C {devices/ngspice_probe.sym} 2770 -180 0 0 {name=r7}
C {devices/ngspice_probe.sym} 3030 -180 0 0 {name=r8}
C {devices/ngspice_probe.sym} 3290 -180 0 0 {name=r9}
C {devices/ngspice_probe.sym} 3550 -180 0 0 {name=r10}
C {devices/ngspice_probe.sym} 3810 -180 0 0 {name=r11}
C {lab_wire.sym} 1860 -480 2 0 {name=l33 sig_type=std_logic lab=QN}
C {lab_wire.sym} 1660 -460 2 0 {name=l34 sig_type=std_logic lab=rs}
C {lab_wire.sym} 1660 -440 2 0 {name=l35 sig_type=std_logic lab=ss}
C {lab_wire.sym} 3990 -1000 0 1 {name=l36 sig_type=std_logic lab=rst_3_11}
C {lab_wire.sym} 3990 -940 0 1 {name=l37 sig_type=std_logic lab=rst_0_2}
C {lab_wire.sym} 3490 -1080 0 1 {name=l38 sig_type=std_logic lab=int_rst}
C {lab_wire.sym} 3520 -1180 0 1 {name=l39 sig_type=std_logic lab=ps_out_b}
C {lab_wire.sym} 3740 -1020 3 1 {name=l40 sig_type=std_logic lab=div_rst_b}
C {lab_wire.sym} 1660 -770 1 1 {name=l41 sig_type=std_logic lab=div_rst}
C {sky130_stdcells/and2_2.sym} 660 -500 0 0 {name=x57 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 500 -1330 0 0 {name=l42 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 500 -1290 0 0 {name=l43 sig_type=std_logic lab=vss}
C {devices/noconn.sym} 500 -1290 0 1 {name=l44}
C {devices/noconn.sym} 500 -1330 0 1 {name=l45}
C {devices/noconn.sym} 1520 -1050 0 1 {name=l46}
C {devices/noconn.sym} 1060 -1050 0 1 {name=l27}
C {devices/noconn.sym} 800 -1050 0 1 {name=l8}
C {devices/noconn.sym} 3940 -1110 0 1 {name=l28}
