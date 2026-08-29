v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 3280 -1560 3390 -1560 {lab=#net1}
N 3390 -1560 3390 -1410 {lab=#net1}
N 3280 -1480 3340 -1480 {lab=#net2}
N 3340 -1480 3340 -1390 {lab=#net2}
N 3340 -1390 3390 -1390 {lab=#net2}
N 3280 -1400 3300 -1400 {lab=#net3}
N 3300 -1400 3300 -1370 {lab=#net3}
N 3300 -1370 3390 -1370 {lab=#net3}
N 3390 -1310 3390 -1160 {lab=#net4}
N 3550 -1610 3550 -1440 {lab=#net5}
N 2940 -1360 3040 -1360 {lab=vout}
N 3000 -1360 3000 -1280 {lab=vout}
N 3300 -1350 3390 -1350 {lab=vout}
N 3300 -1350 3300 -1320 {lab=vout}
N 3340 -1330 3390 -1330 {lab=vref_net}
N 3340 -1330 3340 -1240 {lab=vref_net}
N 3280 -1240 3340 -1240 {lab=vref_net}
N 3280 -1160 3390 -1160 {lab=#net4}
N 3200 -1610 3490 -1610 {lab=0}
N 3200 -1610 3200 -1100 {lab=0}
N 3200 -1100 3550 -1100 {lab=0}
N 3550 -1280 3550 -1080 {lab=0}
N 3200 -1560 3220 -1560 {lab=0}
N 3200 -1480 3220 -1480 {lab=0}
N 3200 -1400 3220 -1400 {lab=0}
N 3200 -1240 3220 -1240 {lab=0}
N 3200 -1160 3220 -1160 {lab=0}
N 3100 -1360 3200 -1360 {lab=0}
N 3000 -1220 3000 -1100 {lab=0}
N 3000 -1100 3200 -1100 {lab=0}
N 3000 -1390 3000 -1360 {lab=vout}
N 2840 -1100 3000 -1100 {lab=0}
N 2800 -1100 2840 -1100 {lab=0}
N 2740 -1560 2740 -1100 {lab=0}
N 2740 -1100 2800 -1100 {lab=0}
N 2820 -1620 2820 -1550 {lab=vin}
N 2800 -1550 2820 -1550 {lab=vin}
N 3780 -1480 3780 -1100 {lab=0}
N 3690 -1440 3690 -1390 {lab=vout_ota_src}
N 3660 -1480 3780 -1480 {lab=0}
N 3550 -1100 3780 -1100 {lab=0}
N 3660 -1500 3660 -1480 {lab=0}
N 3660 -1600 3660 -1560 {lab=vramp}
N 3040 -1320 3300 -1320 {lab=vout}
N 3000 -1360 3040 -1320 {lab=vout}
N 2780 -1390 2800 -1360 {lab=vsw}
N 2880 -1420 2880 -1360 {lab=#net6}
N 2820 -1420 2820 -1360 {lab=vsw}
N 2800 -1360 2820 -1360 {lab=vsw}
N 2800 -1560 2800 -1550 {lab=vin}
N 3320 -1260 3340 -1240 {lab=vref_net}
C {vsource.sym} 3520 -1610 1 1 {name=V1 value=3.3 savecurrent=false}
C {capa.sym} 3070 -1360 3 0 {name=C1
m=1
value=10u
footprint=1206
device="ceramic capacitor"}
C {ind.sym} 2910 -1360 3 0 {name=L1
m=1
value=33u
footprint=1206
device=inductor}
C {res.sym} 3000 -1250 0 0 {name=R1
value=16.5
footprint=1206
device=resistor
m=1}
C {telescopic_ota.sym} 3540 -1360 0 0 {name=x1}
C {vsource.sym} 3250 -1560 1 1 {name=V2 value=2.167 savecurrent=false}
C {gnd.sym} 3550 -1080 0 0 {name=l2 lab=0}
C {vsource.sym} 3250 -1480 1 1 {name=V3 value=1.977 savecurrent=false}
C {vsource.sym} 3250 -1400 1 1 {name=V4 value=1.4 savecurrent=false}
C {vsource.sym} 3250 -1240 1 1 {name=V5 value=1.8 savecurrent=false}
C {vsource.sym} 3250 -1160 1 1 {name=V6 value=0.6864 savecurrent=false}
C {vsource.sym} 2770 -1560 1 1 {name=V7 value=5 savecurrent=false}
C {lab_wire.sym} 3000 -1390 0 0 {name=p1 sig_type=std_logic lab=vout}
C {lab_wire.sym} 2820 -1620 0 0 {name=p2 sig_type=std_logic lab=vin}
C {lab_wire.sym} 2780 -1390 0 0 {name=p3 sig_type=std_logic lab=vsw}
C {lab_pin.sym} 3690 -1440 0 1 {name=p6 sig_type=std_logic lab=vout_ota_src }
C {lab_pin.sym} 3660 -1600 0 1 {name=p7 sig_type=std_logic lab=vramp }
C {code_shown.sym} 2570 -2370 0 0 {name=s1 only_toplevel=false 
value="
.lib /home/areebjamal/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.ic V(vout)=1.8 V(x1.vcomp)=1.8

B3 vramp 0 V=((time - floor(time/160e-9)*160e-9)/160e-9)*0.3

* Linear stand-in comparator (for AC only)
Bpwm pwm 0 V = min(1, max(0, 1 - V(vout_ota_inj)/0.3))
Bpwm_inv pwm_inv 0 V = 1 - V(pwm)

* Linear stand-in for switches (for AC only)
Bvsw vsw 0 V = min(5, max(0, V(pwm)*5))

* Voltage injection for loop gain
Vx vout_ota_inj vout_ota_src AC 1 DC 0

.control
ac dec 100 1 10Meg

let loop_gain = v(vout_ota_src)/v(vout_ota_inj)
plot vdb(loop_gain)
plot 180 + ph(loop_gain)
op
print v(vout)
print v(x1.vcomp)
print v(pwm)
print v(vsw)

tf v(x1.vcomp) V5
print transfer_function
print input_impedance
print output_impedance
.endc
"}
C {res.sym} 3660 -1530 0 0 {name=R2
value=1G
footprint=1206
device=resistor
m=1}
C {res.sym} 2850 -1420 3 0 {name=R3
value=0.1
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 3320 -1260 0 0 {name=p4 sig_type=std_logic lab=vref_net}
