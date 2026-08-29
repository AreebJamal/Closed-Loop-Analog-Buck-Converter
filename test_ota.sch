v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 2630 -1570 2730 -1570 {lab=0}
N 2600 -1530 2600 -1160 {lab=0}
N 2630 -1440 2730 -1440 {lab=0}
N 2630 -1310 2730 -1310 {lab=0}
N 2630 -1200 2730 -1200 {lab=0}
N 2600 -1200 2630 -1200 {lab=0}
N 2600 -1160 2630 -1160 {lab=0}
N 2600 -1310 2630 -1310 {lab=0}
N 2600 -1440 2630 -1440 {lab=0}
N 2600 -1570 2630 -1570 {lab=0}
N 2600 -1570 2600 -1530 {lab=0}
N 2600 -1700 2730 -1700 {lab=0}
N 2600 -1700 2600 -1570 {lab=0}
N 2600 -1840 2730 -1840 {lab=0}
N 2600 -1800 2600 -1700 {lab=0}
N 2600 -1840 2600 -1800 {lab=0}
N 3030 -1900 3030 -1680 {lab=#net1}
N 2730 -1900 3030 -1900 {lab=#net1}
N 2980 -1660 3030 -1660 {lab=#net2}
N 2980 -1760 2980 -1660 {lab=#net2}
N 2730 -1760 2980 -1760 {lab=#net2}
N 2730 -1640 3030 -1640 {lab=#net3}
N 2730 -1640 2730 -1630 {lab=#net3}
N 2980 -1620 3030 -1620 {lab=#net4}
N 2910 -1620 2910 -1500 {lab=#net4}
N 2910 -1620 2980 -1620 {lab=#net4}
N 2730 -1500 2910 -1500 {lab=#net4}
N 2960 -1600 3030 -1600 {lab=#net5}
N 2960 -1600 2960 -1370 {lab=#net5}
N 2730 -1370 2960 -1370 {lab=#net5}
N 3030 -1580 3030 -1270 {lab=#net6}
N 2730 -1260 3030 -1260 {lab=#net6}
N 3030 -1270 3030 -1260 {lab=#net6}
N 3190 -1550 3190 -1200 {lab=0}
N 2630 -1160 3140 -1160 {lab=0}
N 3140 -1220 3140 -1160 {lab=0}
N 3140 -1220 3190 -1220 {lab=0}
N 3190 -1750 3190 -1710 {lab=#net7}
N 3250 -1750 3410 -1750 {lab=0}
N 3410 -1750 3410 -1250 {lab=0}
N 3190 -1250 3410 -1250 {lab=0}
C {telescopic_ota.sym} 3180 -1630 0 0 {name=x1}
C {vsource.sym} 2730 -1600 0 1 {name=V2 value=1.4 savecurrent=false}
C {vsource.sym} 2730 -1470 0 1 {name=V3 value=0.9 savecurrent=false}
C {vsource.sym} 2730 -1340 0 1 {name=V4 value=0.9 savecurrent=false}
C {vsource.sym} 2730 -1230 0 1 {name=V5 value=0.6864 savecurrent=false}
C {vsource.sym} 2730 -1730 0 1 {name=V6 value=1.977 savecurrent=false}
C {vsource.sym} 2730 -1870 0 1 {name=V7 value=2.167 savecurrent=false}
C {gnd.sym} 3190 -1200 0 1 {name=l3 lab=0}
C {vsource.sym} 3220 -1750 3 0 {name=V1 value=3.3 savecurrent=false}
C {code_shown.sym} 2620 -2060 0 0 {name=s1 only_toplevel=false 
value="
.lib /home/areebjamal/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.control
op
print all
.endc
"}
