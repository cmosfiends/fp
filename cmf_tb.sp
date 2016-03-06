.title ECE423 FINAL PROJECT 
.options post
**include model file
.include ../tsmc25

.param P='455.303/158.675'
.param x = 50u

.param W0 = x*P
.param W1 = x
.param W2 = x
.param W3 = x*P
.param W4 = x*P
.param W5 = 2*x
.param W6 = 2*x*P
.param W7 = 2*x*P
.param W8 = x
.param W9 = x
.param W10 = x
.param W11 = x
.param W12 = x*P
.param W13 = x
.param W14 = x
.param W15 = x
.param W16 = x*P
.param W17 = x

.param W18 = x*p
.param W19 = x*p
.param W20 = x
.param W21 = x
.param W22 = x
.param W23 = x
.param W24 = x
.param W25 = x
.param W26 = x
.param W27 = x


.param L0 = .24u
.param L1 = .24u
.param L2 = .24u
.param L3 = .24u
.param L4 = .24u
.param L5 = .24u
.param L6 = .24u
.param L7 = .24u
.param L8 = .24u
.param L9 = .24u
.param L10 = .24u
.param L11 = .24u
.param L12 = .24u
.param L13 = .24u
.param L14 = .72u
.param L15 = .24u
.param L16 = .96u
.param L17 = .24u

.param L18 = .24u
.param L19 = .24u
.param L20 = 5u
.param L21 = 5u
.param L22 = 5u
.param L23 = 5u
.param L24 = .24u
.param L25 = .24u
.param L26 = .24u
.param L27 = .24u

.TEMP 27

**TESTBENCH
V1 vin1 0 DC=1.25V SIN(0 300e-5 10e3 0 0 0) AC=.5,0
V2 Vdd 0 DC=2.5V
V3 Vss 0 DC=0V
V4 vin2 0 DC=1.25V SIN(0 300e-5 10e3 0 0 180) AC=.5,180
V6 bias 0 DC=1.25
Vcmf Bout 0 DC=1.9077 AC =1,0

C1 voutp 0 10p
C2 voutn 0 10p
 
X1 vin1 vin2 voutp voutn Bout B vdd 0 OPAMP
X2 bias bias NC NC B NC vdd 0 OPAMP

**SUBCIRCUIT OPAMP MODEL
.MACRO OPAMP Vin1 Vin2 VOUTP VOUTN Bout B Vdd 0

V5 VCM_REF 0 DC=1.25
I1 IREF 0 DC=400u
M0 IREF IREF Vdd Vdd CMOSP W=W0 L=L0 M=1 AD=0.66u*W0 AS=0.66u*W0 \
PS=1.32u+2*W0 PD=1.32u+2*W0

*Mxx D G S B MODEL W L AD AS PS PD

**3b
*DIFF PAIR
M1 VFOLD1 vin1 IDIFF IDIFF CMOSN W=W1 L=L1 M=1 AD=0.66u*W1 AS=0.66u*W1 \
PS=1.32u+2*W1 PD=1.32u+2*W1
M2 VFOLD2 vin2 IDIFF IDIFF CMOSN W=W2 L=L2 M=1 AD=0.66u*W2 AS=0.66u*W2 \
PS=1.32u+2*W2 PD=1.32u+2*W2

*FOLDED DIFF PAIR
M3 VOUTP DT2 VFOLD1 VFOLD1 CMOSP W=W3 L=L3 M=1 AD=0.66u*W3 AS=0.66u*W3 \
PS=1.32u+2*W3 PD=1.32u+2*W3
M4 VOUTN DT2 VFOLD2 VFOLD2 CMOSP W=W4 L=L4 M=1 AD=0.66u*W4 AS=0.66u*W4 \
PS=1.32u+2*W4 PD=1.32u+2*W4

*DIFF PAIR CURRENT SOURCE
M5 D51S5  DT1 0 0 CMOSN W=W5 L=L5 M=1 AD=0.66u*W5 AS=0.66u*W5 \
PS=1.32u+2*W5 PD=1.32u+2*W5
M51 IDIFF SB1 D51S5 D51S5 CMOSN W=W5 L=L5 M=1 AD=0.66u*W5 AS=0.66u*W5 \
PS=1.32u+2*W5 PD=1.32u+2*W5

*FOLDED DIFF PAIR CURRENT SOURCE
M6 VFOLD1 Bout Vdd Vdd CMOSP W=W6 L=L6 M=1 AD=0.66u*W6 AS=0.66u*W6 \
PS=1.32u+2*W6 PD=1.32u+2*W6
M7 VFOLD2 Bout Vdd Vdd CMOSP W=W7 L=L7 M=1 AD=0.66u*W7 AS=0.66u*W7 \
PS=1.32u+2*W7 PD=1.32u+2*W7

*ACTIVE LOAD
M8 D8S10 DT1 0 0 CMOSN W=W8 L=L8 M=1 AD=0.66u*W8 AS=0.66u*W8 \
PS=1.32u+2*W8 PD=1.32u+2*W8
M9 D9S11 DT1 0 0 CMOSN W=W9 L=L9 M=1 AD=0.66u*W9 AS=0.66u*W9 \
PS=1.32u+2*W9 PD=1.32u+2*W9
M10 VOUTP SB1 D8S10 D8S10 CMOSN W=W10 L=L10 M=1 AD=0.66u*W10 AS=0.66u*W10 \
PS=1.32u+2*W10 PD=1.32u+2*W10
M11 VOUTN SB1 D9S11 D9S11 CMOSN W=W11 L=L11 M=1 AD=0.66u*W11 AS=0.66u*W11 \
PS=1.32u+2*W11 PD=1.32u+2*W11

*VB34
M16 DT2 DT2 Vdd Vdd CMOSP W=W16 L=L16 M=1 AD=0.66u*W16 AS=0.66u*W16 \
PS=1.32u+2*W16 PD=1.32u+2*W16
M17 DT2 DT1 0 0 CMOSN W=W17 L=L17 M=1 AD=0.66u*W17 AS=0.66u*W17 \
PS=1.32u+2*W17 PD=1.32u+2*W17

*SOOCH
M12 SOOCH IREF Vdd Vdd CMOSP W=W12 L=L12 M=1 AD=0.66u*W12 AS=0.66u*W12 \
PS=1.32u+2*W12 PD=1.32u+2*W12
M13 SOOCH SOOCH SB1 SB1 CMOSN W=W13 L=L13 M=1 AD=0.66u*W13 AS=0.66u*W13 \
PS=1.32u+2*W13 PD=1.32u+2*W13
M14 SB1 SOOCH DT1 DT1 CMOSN W=W14 L=L14 M=1 AD=0.66u*W14 AS=0.66u*W14 \
PS=1.32u+2*W14 PD=1.32u+2*W14
M15 DT1 DT1 0 0 CMOSN W=W15 L=L15 M=1 AD=0.66u*W15 AS=0.66u*W15 \
PS=1.32u+2*W15 PD=1.32u+2*W15

*CMFB
M18 A A Vdd Vdd CMOSP W=W18 L=L18 M=1 AD=0.66u*W18 AS=0.66u*W18 \
PS=1.32u+2*W18 PD=1.32u+2*W18

M19 B B Vdd Vdd CMOSP W=W19 L=L19 M=1 AD=0.66u*W19 AS=0.66u*W19 \
PS=1.32u+2*W19 PD=1.32u+2*W19

M20 A VOUTN IDIFF1 IDIFF1 CMOSN W=W20 L=L20 M=1 AD=0.66u*W20 AS=0.66u*W20 \
PS=1.32u+2*W20 PD=1.32u+2*W20
M21 B VCM_REF IDIFF1 IDIFF1 CMOSN W=W21 L=L21 M=1 AD=0.66u*W21 AS=0.66u*W21 \
PS=1.32u+2*W21 PD=1.32u+2*W21

M22 B VCM_REF IDIFF2 IDIFF2 CMOSN W=W22 L=L22 M=1 AD=0.66u*W22 AS=0.66u*W22 \
PS=1.32u+2*W22 PD=1.32u+2*W22
M23 A VOUTP IDIFF2 IDIFF2 CMOSN W=W23 L=L23 M=1 AD=0.66u*W23 AS=0.66u*W23 \
PS=1.32u+2*W23 PD=1.32u+2*W23

M24 IDIFF1 SB1 S24D26 S24D26 CMOSN W=W24 L=L24 M=1 AD=0.66u*W24 AS=0.66u*W24 \
PS=1.32u+2*W24 PD=1.32u+2*W24
M25 IDIFF2 SB1 S25D27 S25D27 CMOSN W=W25 L=L25 M=1 AD=0.66u*W25 AS=0.66u*W25 \
PS=1.32u+2*W25 PD=1.32u+2*W25

M26 S24D26 DT1 0 0 CMOSN W=W26 L=L26 M=1 AD=0.66u*W26 AS=0.66u*W26 \
PS=1.32u+2*W26 PD=1.32u+2*W26
M27 S25D27 DT1 0 0 CMOSN W=W27 L=L27 M=1 AD=0.66u*W27 AS=0.66u*W27 \
PS=1.32u+2*W27 PD=1.32u+2*W27

.eom OPAMP

.op
$.DC V6 START=-.5 STOP=.5 STEP=.0001
*.meas dc d_vout DERIV v(vout) WHEN VOUT=.01 
*.print dc par('d_vout/v(vin1)')
*.pz v(Output) V1
.ac dec 100 1e3 1e9
.tran 1ns 10ms
*.print dc i(M1) v(vout)
*.print ac vdb(vout, vin1)
*.print ac vp(vout)
.meas ac freq3db1 when VDB('voutp - voutn')=-3
.meas ac frequnity1 when VDB('voutp - voutn')=0
*Scan out to unity gain frequency to find open loop gain
.meas ac gain1 max vdb('voutp - voutn') FROM=10 TO=frequnity1
.meas ac min_phase1 MIN vp('voutp - voutn') FROM=1 TO=frequnity1
.meas ac PM1 = param('180+min_phase1')

.meas ac freq3db2 when VDB(B)=-3
.meas ac frequnity2 when VDB(B)=0
*Scan out to unity gain frequency to find open loop gain
.meas ac gain2 max vdb(B) FROM=10 TO=frequnity2
.meas ac min_phase2 MIN vp(B) FROM=1 TO=frequnity2
.meas ac PM2 = param('min_phase2')

.end

