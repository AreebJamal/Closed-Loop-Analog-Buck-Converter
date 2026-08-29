v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1660 -1360 1770 -1360 {lab=#net1}
N 1770 -1360 1770 -1210 {lab=#net1}
N 1660 -1280 1720 -1280 {lab=#net2}
N 1720 -1280 1720 -1190 {lab=#net2}
N 1720 -1190 1770 -1190 {lab=#net2}
N 1660 -1200 1680 -1200 {lab=#net3}
N 1680 -1200 1680 -1170 {lab=#net3}
N 1680 -1170 1770 -1170 {lab=#net3}
N 1770 -1110 1770 -960 {lab=#net4}
N 1930 -1410 1930 -1240 {lab=#net5}
N 1320 -1160 1420 -1160 {lab=vout}
N 1380 -1160 1380 -1080 {lab=vout}
N 1680 -1150 1770 -1150 {lab=vout}
N 1680 -1150 1680 -1120 {lab=vout}
N 1720 -1130 1770 -1130 {lab=#net6}
N 1720 -1130 1720 -1040 {lab=#net6}
N 1660 -1040 1720 -1040 {lab=#net6}
N 1660 -960 1770 -960 {lab=#net4}
N 1580 -1410 1870 -1410 {lab=0}
N 1580 -1410 1580 -900 {lab=0}
N 1580 -900 1930 -900 {lab=0}
N 1930 -1080 1930 -880 {lab=0}
N 1580 -1360 1600 -1360 {lab=0}
N 1580 -1280 1600 -1280 {lab=0}
N 1580 -1200 1600 -1200 {lab=0}
N 1580 -1040 1600 -1040 {lab=0}
N 1580 -960 1600 -960 {lab=0}
N 1480 -1160 1580 -1160 {lab=0}
N 1380 -1020 1380 -900 {lab=0}
N 1380 -900 1580 -900 {lab=0}
N 1380 -1190 1380 -1160 {lab=vout}
N 1220 -1280 1580 -1280 {lab=0}
N 1220 -900 1380 -900 {lab=0}
N 1180 -900 1220 -900 {lab=0}
N 1120 -1360 1120 -900 {lab=0}
N 1120 -900 1180 -900 {lab=0}
N 1200 -1420 1200 -1350 {lab=vin}
N 1180 -1350 1200 -1350 {lab=vin}
N 2160 -1280 2160 -900 {lab=0}
N 2070 -1240 2070 -1190 {lab=vout_ota_src}
N 2040 -1280 2160 -1280 {lab=0}
N 1930 -900 2160 -900 {lab=0}
N 2040 -1300 2040 -1280 {lab=0}
N 2040 -1400 2040 -1360 {lab=vramp}
N 1180 -1270 1180 -1160 {lab=vsw}
N 1180 -1360 1180 -1330 {lab=vin}
N 1220 -990 1220 -900 {lab=0}
N 1180 -980 1180 -900 {lab=0}
N 1180 -1160 1180 -1040 {lab=vsw}
N 1220 -1050 1220 -1010 {lab=pwm_inv}
N 1220 -1350 1220 -1300 {lab=pwm}
N 1420 -1120 1680 -1120 {lab=vout}
N 1380 -1160 1420 -1120 {lab=vout}
N 1160 -1190 1180 -1160 {lab=vsw}
N 1260 -1220 1260 -1160 {lab=#net7}
N 1200 -1220 1200 -1160 {lab=vsw}
N 1180 -1160 1200 -1160 {lab=vsw}
C {vsource.sym} 1900 -1410 1 1 {name=V1 value=3.3 savecurrent=false}
C {capa.sym} 1450 -1160 3 0 {name=C1
m=1
value=10u
footprint=1206
device="ceramic capacitor"}
C {ind.sym} 1290 -1160 3 0 {name=L1
m=1
value=33u
footprint=1206
device=inductor}
C {res.sym} 1380 -1050 0 0 {name=R1
value=16.5
footprint=1206
device=resistor
m=1}
C {telescopic_ota.sym} 1920 -1160 0 0 {name=x1}
C {vsource.sym} 1630 -1360 1 1 {name=V2 value=2.167 savecurrent=false}
C {gnd.sym} 1930 -880 0 0 {name=l2 lab=0}
C {vsource.sym} 1630 -1280 1 1 {name=V3 value=1.977 savecurrent=false}
C {vsource.sym} 1630 -1200 1 1 {name=V4 value=1.4 savecurrent=false}
C {vsource.sym} 1630 -1040 1 1 {name=V5 value=1.8 savecurrent=false}
C {vsource.sym} 1630 -960 1 1 {name=V6 value=0.6864 savecurrent=false}
C {vsource.sym} 1150 -1360 1 1 {name=V7 value=5 savecurrent=false}
C {lab_wire.sym} 1380 -1190 0 0 {name=p1 sig_type=std_logic lab=vout}
C {lab_wire.sym} 1200 -1420 0 0 {name=p2 sig_type=std_logic lab=vin}
C {lab_wire.sym} 1160 -1190 0 0 {name=p3 sig_type=std_logic lab=vsw}
C {lab_pin.sym} 2070 -1240 0 1 {name=p6 sig_type=std_logic lab=vout_ota_src }
C {lab_pin.sym} 2040 -1400 0 1 {name=p7 sig_type=std_logic lab=vramp }
C {code_shown.sym} 730 -1860 0 0 {name=s1 only_toplevel=false 
value="
.lib /home/areebjamal/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.ic V(vout)=1.8 V(x1.vcomp)=1.8

B3 vramp 0 V=((time - floor(time/160e-9)*160e-9)/160e-9)*0.3
B1 pwm 0 V=V(vout_ota_src) < V(vramp) ? 1 : 0
B2 pwm_inv 0 V=V(pwm) > 0.5 ? 0 : 1

.control
tran 10n 5m uic
plot vout
.endc
"}
C {switch_ngspice.sym} 1180 -1300 0 1 {name=S2 model=SW1
device_model=".MODEL SW1 SW
+ VT=0.5 VH=0.1
+ RON=0.01 ROFF=1e9"}
C {switch_ngspice.sym} 1180 -1010 0 1 {name=S3 model=SW1}
C {res.sym} 2040 -1330 0 0 {name=R2
value=1G
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1220 -1350 0 1 {name=p5 sig_type=std_logic lab=pwm}
C {lab_wire.sym} 1220 -1050 0 1 {name=p8 sig_type=std_logic lab=pwm_inv}
C {res.sym} 1230 -1220 3 0 {name=R3
value=0.1
footprint=1206
device=resistor
m=1}
