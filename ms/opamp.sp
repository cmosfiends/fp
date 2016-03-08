.title ECE423 FINAL PROJECT 
.options post
**include model file
.include ../../tsmc25

.param P='455.303/158.675'
.param x = 50u
.param s = 1
.param bs = .5
.param W1 = x*s
.param W2 = x*s
.param W3 = x*P*s
.param W4 = x*P*s
.param W5 = 2*x*s
.param W6 = 2*x*P*s
.param W7 = 2*x*P*s
.param W8 = x*s
.param W9 = x*s
.param W10 = x*s
.param W11 = x*s

*bias
.param W0  = bs*x*P*s
.param W12 = bs*x*P*s
.param W13 = bs*x*s
.param W14 = bs*x*s
.param W15 = bs*x*s
.param W16 = bs*x*P*s
.param W17 = bs*x*s
.param W36 = bs*x*s
.param W37 = bs*x*s*P
.param W38 = bs*x*s

*CMFB
.param W18 = x*P*s
.param W19 = x*P*s
.param W20 = x*s
.param W21 = x*s
.param W22 = x*s
.param W23 = x*s
.param W24 = 1.5*x*s
.param W25 = 1.5*x*s
.param W26 = x*s
.param W27 = x*s

*OUTPUT STAGE
.param W28 = x*s*P
.param W29 = x*s
.param W30 = x*s*P
.param W31 = x*s

*TRIPLE CASCODE
.param W32 = x*s
.param W33 = x*s
.param W34 = x*s*P
.param W35 = x*s*P

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
.param L13 = .72u
.param L14 = 1.2u
.param L15 = .24u
.param L16 = .96u
.param L17 = .24u

.param L18 = .24u
.param L19 = .24u
.param L20 = .24u
.param L21 = .24u
.param L22 = .24u
.param L23 = .24u
.param L24 = .69u
.param L25 = .69u
.param L26 = .24u
.param L27 = .24u

.param L28 = .24u
.param L29 = .24u
.param L30 = .24u
.param L31 = .24u

.param L32 = .24u
.param L33 = .24u
.param L34 = .24u
.param L35 = .24u
.param L36 = .24u
.param L37 = 2.16u
.param L38 = .24u

.TEMP 27

**TESTBENCH
V1 vtest 0 DC=1.25V SIN(0 300e-5 10e3 0 0 0) AC=.5,0
V2 Vdd 0 DC=2.5V
V3 Vss 0 DC=0V
V4 vin2 0 DC=1.25V SIN(0 300e-5 10e3 0 0 180) AC=.5,180
V5 VCM_REF 0 DC=1.25
V6 Vin1 Vtest DC=0
$E1 Vin2 Vtest Vin1 Vtest -1
$V7 Vtest 0 DC=1.25V

C1 VOUTP 0 3p
C2 VOUTN 0 3p

Cf2 VOUTN Vin1 1p
Cf3 Vin1 0 1p 
Cf4 Vin2 0 1p
Rf1 Vin1 0 1G
Rf2 Vin2 0 1G

I1 IREF 0 DC=250u
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
M3 D3 DT2 VFOLD1 VFOLD1 CMOSP W=W3 L=L3 M=1 AD=0.66u*W3 AS=0.66u*W3 \
PS=1.32u+2*W3 PD=1.32u+2*W3
M4 D4 DT2 VFOLD2 VFOLD2 CMOSP W=W4 L=L4 M=1 AD=0.66u*W4 AS=0.66u*W4 \
PS=1.32u+2*W4 PD=1.32u+2*W4

M34 VOUTP DT3 D3 D3 CMOSP W=W34 L=L34 M=1 AD=0.66u*W34 AS=0.66u*W34 \
PS=1.32u+2*W34 PD=1.32u+2*W34
M35 VOUTN DT3 D4 D4 CMOSP W=W35 L=L35 M=1 AD=0.66u*W35 AS=0.66u*W35 \
PS=1.32u+2*W35 PD=1.32u+2*W35

*DIFF PAIR CURRENT SOURCE
M5 D51S5  DT1 0 0 CMOSN W=W5 L=L5 M=1 AD=0.66u*W5 AS=0.66u*W5 \
PS=1.32u+2*W5 PD=1.32u+2*W5
M51 IDIFF SB1 D51S5 D51S5 CMOSN W=W5 L=L5 M=1 AD=0.66u*W5 AS=0.66u*W5 \
PS=1.32u+2*W5 PD=1.32u+2*W5

*FOLDED DIFF PAIR CURRENT SOURCE
M6 VFOLD1 B Vdd Vdd CMOSP W=W6 L=L6 M=1 AD=0.66u*W6 AS=0.66u*W6 \
PS=1.32u+2*W6 PD=1.32u+2*W6
M7 VFOLD2 B Vdd Vdd CMOSP W=W7 L=L7 M=1 AD=0.66u*W7 AS=0.66u*W7 \
PS=1.32u+2*W7 PD=1.32u+2*W7

*ACTIVE LOAD
M8 D8S10 DT1 0 0 CMOSN W=W8 L=L8 M=1 AD=0.66u*W8 AS=0.66u*W8 \
PS=1.32u+2*W8 PD=1.32u+2*W8
M9 D9S11 DT1 0 0 CMOSN W=W9 L=L9 M=1 AD=0.66u*W9 AS=0.66u*W9 \
PS=1.32u+2*W9 PD=1.32u+2*W9
M10 D10 SB1 D8S10 D8S10 CMOSN W=W10 L=L10 M=1 AD=0.66u*W10 AS=0.66u*W10 \
PS=1.32u+2*W10 PD=1.32u+2*W10
M11 D11 SB1 D9S11 D9S11 CMOSN W=W11 L=L11 M=1 AD=0.66u*W11 AS=0.66u*W11 \
PS=1.32u+2*W11 PD=1.32u+2*W11

M32 VOUTN SB2 D11 D11 CMOSN W=W32 L=L32 M=1 AD=0.66u*W32 AS=0.66u*W32 \
PS=1.32u+2*W32 PD=1.32u+2*W32
M33 VOUTP SB2 D10 D10 CMOSN W=W33 L=L33 M=1 AD=0.66u*W33 AS=0.66u*W33 \
PS=1.32u+2*W33 PD=1.32u+2*W33

*VB34
M16 DT2 DT2 Vdd Vdd CMOSP W=W16 L=L16 M=1 AD=0.66u*W16 AS=0.66u*W16 \
PS=1.32u+2*W16 PD=1.32u+2*W16
M17 DT2 DT1 0 0 CMOSN W=W17 L=L17 M=1 AD=0.66u*W17 AS=0.66u*W17 \
PS=1.32u+2*W17 PD=1.32u+2*W17

M37 DT3 DT3 Vdd Vdd CMOSP W=W37 L=L37 M=1 AD=0.66u*W37 AS=0.66u*W37 \
PS=1.32u+2*W37 PD=1.32u+2*W37
M38 DT3 DT1 0 0 CMOSN W=W38 L=L38 M=1 AD=0.66u*W38 AS=0.66u*W38 \
PS=1.32u+2*W38 PD=1.32u+2*W38

*SOOCH
M12 SOOCH IREF Vdd Vdd CMOSP W=W12 L=L12 M=1 AD=0.66u*W12 AS=0.66u*W12 \
PS=1.32u+2*W12 PD=1.32u+2*W12
M13 SB2 SOOCH SB1 SB1 CMOSN W=W13 L=L13 M=1 AD=0.66u*W13 AS=0.66u*W13 \
PS=1.32u+2*W13 PD=1.32u+2*W13
M14 SB1 SOOCH DT1 DT1 CMOSN W=W14 L=L14 M=1 AD=0.66u*W14 AS=0.66u*W14 \
PS=1.32u+2*W14 PD=1.32u+2*W14
M15 DT1 DT1 0 0 CMOSN W=W15 L=L15 M=1 AD=0.66u*W15 AS=0.66u*W15 \
PS=1.32u+2*W15 PD=1.32u+2*W15

M36 SOOCH SOOCH SB2 SB2 CMOSN W=W36 L=L36 M=1 AD=0.66u*W36 AS=0.66u*W36 \
PS=1.32u+2*W36 PD=1.32u+2*W36

*OUTPUT STAGE
*M28 Vdd IREF OUTN OUTN CMOSP W=W28 L=L28 M=1 AD=0.66u*W28 AS=0.66u*W28 \
*PS=1.32u+2*W28 PD=1.32u+2*W28
*M29 OUTN VOUTN 0 0 CMOSN W=W29 L=L29 M=1 AD=0.66u*W29 AS=0.66u*W29 \
*PS=1.32u+2*W29 PD=1.32u+2*W29

*M30 Vdd IREF OUTP OUTP CMOSN W=W30 L=L30 M=1 AD=0.66u*W30 AS=0.66u*W30 \
*PS=1.32u+2*W30 PD=1.32u+2*W30
*M31 OUTP VOUTP 0 0 CMOSN W=W31 L=L31 M=1 AD=0.66u*W31 AS=0.66u*W31 \
*PS=1.32u+2*W31 PD=1.32u+2*W31

*CMFB
M18 A A Vdd Vdd CMOSP W=W18 L=L18 M=1 AD=0.66u*W18 AS=0.66u*W18 \
PS=1.32u+2*W18 PD=1.32u+2*W18

M19 B B Vdd Vdd CMOSP W=W19 L=L19 M=1 AD=0.66u*W19 AS=0.66u*W19 \
PS=1.32u+2*W19 PD=1.32u+2*W19

*N
M20 A VOUTN IDIFF1 IDIFF1 CMOSN W=W20 L=L20 M=1 AD=0.66u*W20 AS=0.66u*W20 \
PS=1.32u+2*W20 PD=1.32u+2*W20
M21 B VCM_REF IDIFF1 IDIFF1 CMOSN W=W21 L=L21 M=1 AD=0.66u*W21 AS=0.66u*W21 \
PS=1.32u+2*W21 PD=1.32u+2*W21

*P
M22 B VCM_REF IDIFF2 IDIFF2 CMOSN W=W22 L=L22 M=1 AD=0.66u*W22 AS=0.66u*W22 \
PS=1.32u+2*W22 PD=1.32u+2*W22
M23 A VOUTP IDIFF2 IDIFF2 CMOSN W=W23 L=L23 M=1 AD=0.66u*W23 AS=0.66u*W23 \
PS=1.32u+2*W23 PD=1.32u+2*W23


M24 IDIFF1 IDIFF1 0 0 CMOSN W=W24 L=L24 M=1 AD=0.66u*W24 AS=0.66u*W24 \
PS=1.32u+2*W24 PD=1.32u+2*W24
M25 IDIFF2 IDIFF2 0 0  CMOSN W=W25 L=L25 M=1 AD=0.66u*W25 AS=0.66u*W25 \
PS=1.32u+2*W25 PD=1.32u+2*W25
*M24 IDIFF1 SB1 S24D26 S24D26 CMOSN W=W24 L=L24 M=1 AD=0.66u*W24 AS=0.66u*W24 \
*PS=1.32u+2*W24 PD=1.32u+2*W24
*M25 IDIFF2 SB1 S25D27 S25D27 CMOSN W=W25 L=L25 M=1 AD=0.66u*W25 AS=0.66u*W25 \
*PS=1.32u+2*W25 PD=1.32u+2*W25

*M26 S24D26 DT1 0 0 CMOSN W=W26 L=L26 M=1 AD=0.66u*W26 AS=0.66u*W26 \
*PS=1.32u+2*W26 PD=1.32u+2*W26
*M27 S25D27 DT1 0 0 CMOSN W=W27 L=L27 M=1 AD=0.66u*W27 AS=0.66u*W27 \
*PS=1.32u+2*W27 PD=1.32u+2*W27


.op
.DC V6 START=-1.5m STOP=1.5m STEP=1e-6
*.meas dc d_vout DERIV v(vout) WHEN VOUT=.01 
*.print dc par('d_vout/v(vin1)')
*.pz v(Output) V1
.ac dec 100 1e3 1e9
*.tran 1ns 10ms
*.print dc i(M1) v(vout)
*.print ac vdb(vout, vin1)
*.print ac vp(vout)
*.meas ac freq3dbp when VDB(VOUTP)=-3
.print ac vp(b)
.meas ac frequnityn when VDB(VOUTN)=0
.meas ac frequnityp when VDB(VOUTP)=0
*Scan out to unity gain frequency to find open loop gain
.meas ac Pgain max vdb(VOUTP) FROM=10 TO=frequnityp
.meas ac Ngain max vdb(VOUTN) FROM=10 TO=frequnityn
.meas ac min_phasen MIN vp(VOUTN) FROM=1 TO=frequnityn
.meas ac min_phasep MIN vp(VOUTP) FROM=1 TO=frequnityp
.meas ac PM = param('180+min_phasep')
.end

