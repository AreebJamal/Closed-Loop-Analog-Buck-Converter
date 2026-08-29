v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 3030 -1820 3300 -1820 {lab=vbias_top}
N 3030 -1680 3300 -1680 {lab=vbias_casc}
N 2990 -1790 2990 -1710 {lab=#net1}
N 3340 -1790 3340 -1710 {lab=#net2}
N 2990 -1650 2990 -1540 {lab=#net3}
N 3340 -1650 3340 -1540 {lab=vout}
N 3030 -1510 3300 -1510 {lab=vcascode}
N 2990 -1480 2990 -1420 {lab=vy}
N 3340 -1480 3340 -1420 {lab=#net4}
N 2990 -1360 2990 -1320 {lab=#net5}
N 2990 -1320 2990 -1310 {lab=#net5}
N 2990 -1310 3340 -1310 {lab=#net5}
N 3340 -1360 3340 -1310 {lab=#net5}
N 3160 -1310 3160 -1250 {lab=#net5}
N 3160 -1190 3160 -1160 {lab=gnd}
N 2990 -1910 2990 -1850 {lab=vdd}
N 2990 -1910 3130 -1910 {lab=vdd}
N 3340 -1910 3340 -1850 {lab=vdd}
N 3130 -1910 3340 -1910 {lab=vdd}
N 3140 -1930 3140 -1920 {lab=vdd}
N 3140 -1920 3140 -1910 {lab=vdd}
N 3030 -1390 3050 -1390 {lab=vbuck_out}
N 3050 -1410 3050 -1390 {lab=vbuck_out}
N 3270 -1390 3300 -1390 {lab=vref}
N 3270 -1410 3270 -1390 {lab=vref}
N 3160 -1540 3160 -1510 {lab=vcascode}
N 3200 -1220 3230 -1220 {lab=vbias_tail}
N 3230 -1250 3230 -1220 {lab=vbias_tail}
N 2870 -1450 2990 -1450 {lab=vy}
N 3340 -1600 3490 -1600 {lab=vout}
N 3490 -1630 3490 -1600 {lab=vout}
N 3490 -1630 3550 -1630 {lab=vout}
N 2890 -1820 2990 -1820 {lab=vdd}
N 2890 -1910 2890 -1820 {lab=vdd}
N 2890 -1910 2990 -1910 {lab=vdd}
N 2900 -1680 2990 -1680 {lab=vdd}
N 2900 -1910 2900 -1680 {lab=vdd}
N 3340 -1820 3430 -1820 {lab=vdd}
N 3430 -1910 3430 -1820 {lab=vdd}
N 3340 -1910 3430 -1910 {lab=vdd}
N 3340 -1680 3420 -1680 {lab=vdd}
N 3420 -1910 3420 -1680 {lab=vdd}
N 2900 -1510 2990 -1510 {lab=gnd}
N 2900 -1510 2900 -1270 {lab=gnd}
N 2900 -1270 2900 -1170 {lab=gnd}
N 2900 -1170 3160 -1170 {lab=gnd}
N 2910 -1390 2990 -1390 {lab=gnd}
N 2910 -1390 2910 -1210 {lab=gnd}
N 2910 -1210 2910 -1170 {lab=gnd}
N 3340 -1510 3430 -1510 {lab=gnd}
N 3430 -1510 3430 -1310 {lab=gnd}
N 3430 -1310 3430 -1170 {lab=gnd}
N 3340 -1390 3410 -1390 {lab=gnd}
N 3410 -1390 3410 -1180 {lab=gnd}
N 3410 -1180 3410 -1170 {lab=gnd}
N 3110 -1930 3140 -1930 {lab=vdd}
N 3070 -1220 3160 -1220 {lab=gnd}
N 3070 -1220 3070 -1170 {lab=gnd}
N 3150 -1710 3150 -1680 {lab=vbias_casc}
N 3150 -1850 3150 -1820 {lab=vbias_top}
N 3550 -1630 3550 -1570 {lab=vout}
N 3550 -1510 3550 -1420 {lab=vcomp}
N 3550 -1360 3550 -1170 {lab=gnd}
N 3520 -1450 3550 -1450 {lab=vcomp}
N 3110 -1960 3110 -1930 {lab=vdd}
N 3160 -1160 3160 -1140 {lab=gnd}
N 3160 -1170 3550 -1170 {lab=gnd}
C {sky130_fd_pr/nfet_01v8.sym} 3010 -1510 0 1 {name=M3
W=5.6
L=1
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 3320 -1820 0 0 {name=M8
W=16.8
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 3010 -1820 0 1 {name=M7
W=16.8
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 3010 -1680 0 1 {name=M5
W=16.8
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 3320 -1680 0 0 {name=M6
W=16.8
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 3010 -1390 0 1 {name=M1
W=5.6
L=1
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 3320 -1510 0 0 {name=M4
W=5.6
L=1
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 3320 -1390 0 0 {name=M2
W=5.6
L=1
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 3180 -1220 0 1 {name=M9
W=11.2
L=1
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_wire.sym} 2870 -1450 0 0 {name=p5 sig_type=std_logic lab=vy}
C {res.sym} 3550 -1540 0 0 {name=R1
value=360k
footprint=1206
device=resistor
m=1}
C {capa.sym} 3550 -1390 0 0 {name=C1
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 3520 -1450 0 0 {name=p15 sig_type=std_logic lab=vcomp}
C {ipin.sym} 3150 -1850 0 0 {name=p16 lab=vbias_top}
C {ipin.sym} 3150 -1710 0 0 {name=p12 lab=vbias_casc}
C {ipin.sym} 3160 -1540 0 0 {name=p4 lab=vcascode}
C {ipin.sym} 3050 -1410 0 1 {name=p11 lab=vbuck_out}
C {ipin.sym} 3270 -1410 0 0 {name=p2 lab=vref}
C {ipin.sym} 3230 -1250 0 1 {name=p3 lab=vbias_tail}
C {opin.sym} 3550 -1630 0 0 {name=p1 lab=vout}
C {iopin.sym} 3110 -1960 0 1 {name=p6 lab=vdd}
C {iopin.sym} 3160 -1140 0 0 {name=p17 lab=gnd}
