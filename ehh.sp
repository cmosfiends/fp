* # FILE NAME: /NFS/STAK/STUDENTS/L/LOVETR/CADENCE/SIMULATION/                  
* FINAL_SCHEM_SOOCH/HSPICES/SCHEMATIC/NETLIST/FINAL_SCHEM_SOOCH.C.RAW
* NETLIST OUTPUT FOR HSPICES.
* GENERATED ON MAR 10 22:40:47 2016
   
* GLOBAL NET DEFINITIONS
.GLOBAL VCM_REF! VDD! 
* FILE NAME: FINAL_PROJECT_FINAL_SCHEM_SOOCH_SCHEMATIC.S.
* SUBCIRCUIT FOR CELL: FINAL_SCHEM_SOOCH.
* GENERATED FOR: HSPICES.
* GENERATED ON MAR 10 22:40:47 2016.
   
C1 VOUTN 0  3E-12 M=1.0 
C0 VOUTP 0  3E-12 M=1.0 
I0 PB1 0  DC=3.5E-6  M=1.0 
$V2 VINN 0  1.25 AC 500E-3 180.0 
V3 VCM_REF! 0  1.25 
V0 VDD! 0  2.5 
$V1 VINP 0  1.25 AC 500E-3

V6 VINP vtest DC=0
E1 VINN vtest VINP Vtest -1
V7 vtest 0 1.25

MP24 NET0170 NET0167 NET0174 VDD!  TSMC25DP  L=720E-9 W=2.88E-6 AD=1.728E-12 
+AS=1.728E-12 PD=6.96E-6 PS=6.96E-6 M=1 
MP16 B B VDD! VDD!  TSMC25DP  L=240E-9 W=28.8E-6 AD=17.28E-12 AS=17.28E-12 
+PD=58.8E-6 PS=58.8E-6 M=1 
MP15 NET0299 NET0299 VDD! VDD!  TSMC25DP  L=240E-9 W=28.8E-6 AD=17.28E-12 
+AS=17.28E-12 PD=58.8E-6 PS=58.8E-6 M=1 
MP26 NET0167 NET0167 NET0170 VDD!  TSMC25DP  L=240E-9 W=2.88E-6 AD=1.728E-12 
+AS=1.728E-12 PD=6.96E-6 PS=6.96E-6 M=1 
MP22 PB1 PB1 VDD! VDD!  TSMC25DP  L=240E-9 W=2.88E-6 AD=1.728E-12 AS=1.728E-12 
+PD=6.96E-6 PS=6.96E-6 M=1 
MP18 NET0232 PB1 VDD! VDD!  TSMC25DP  L=240E-9 W=2.88E-6 AD=1.728E-12 
+AS=1.728E-12 PD=6.96E-6 PS=6.96E-6 M=1 
MP23 NET0174 NET0167 PB1 VDD!  TSMC25DP  L=1.2E-6 W=2.88E-6 AD=1.728E-12 
+AS=1.728E-12 PD=6.96E-6 PS=6.96E-6 M=1 
MP17 PB1 PB1 VDD! VDD!  TSMC25DP  L=240E-9 W=2.88E-6 AD=1.728E-12 AS=1.728E-12 
+PD=6.96E-6 PS=6.96E-6 M=1 
MP9 NET210 PB1 VDD! VDD!  TSMC25DP  L=240E-9 W=143.4E-6 AD=86.04E-18 
+AS=86.04E-12 PD=288E-6 PS=288E-6 M=1 
MP8 NET220 PB1 VDD! VDD!  TSMC25DP  L=240E-9 W=143.4E-6 AD=86.04E-18 
+AS=86.04E-12 PD=288E-6 PS=288E-6 M=1 
MP7 NET164 NET234 VDD! VDD!  TSMC25DP  L=240E-9 W=143.4E-6 AD=86.04E-18 
+AS=86.04E-12 PD=288E-6 PS=288E-6 M=1 
MP6 NET202 NET238 VDD! VDD!  TSMC25DP  L=240E-9 W=143.4E-6 AD=86.04E-18 
+AS=86.04E-12 PD=288E-6 PS=288E-6 M=1 
MP5 VOUTN NET202 NET238 VDD!  TSMC25DP  L=240E-9 W=143.4E-6 AD=86.04E-18 
+AS=86.04E-12 PD=288E-6 PS=288E-6 M=1 
MP4 VOUTP NET164 NET234 VDD!  TSMC25DP  L=240E-9 W=143.4E-6 AD=86.04E-18 
+AS=86.04E-12 PD=288E-6 PS=288E-6 M=1 
MP3 NET238 B VDD! VDD!  TSMC25DP  L=240E-9 W=286.8E-6 AD=172.08E-12 
+AS=172.08E-12 PD=574.8E-6 PS=574.8E-6 M=1 
MP2 NET234 B VDD! VDD!  TSMC25DP  L=240E-9 W=286.8E-6 AD=172.08E-12 
+AS=172.08E-12 PD=574.8E-6 PS=574.8E-6 M=1 
MN33 NET0247 NB1 0 0  TSMC25DN  L=240E-9 W=19.2E-6 AD=11.52E-12 AS=11.52E-12 
+PD=39.6E-6 PS=39.6E-6 M=1 
MN29 NET0167 NB1 0 0  TSMC25DN  L=240E-9 W=960E-9 AD=576E-15 AS=576E-15 
+PD=3.12E-6 PS=3.12E-6 M=1 
MN26 NB2 NET0232 NB1 0  TSMC25DN  L=1.2E-6 W=960E-9 AD=576E-15 AS=576E-15 
+PD=3.12E-6 PS=3.12E-6 M=1 
MN32 NET0250 NB2 NET0247 0  TSMC25DN  L=240E-9 W=19.2E-6 AD=11.52E-12 
+AS=11.52E-12 PD=39.6E-6 PS=39.6E-6 M=1 
MN22 NB1 NB1 0 0  TSMC25DN  L=240E-9 W=960E-9 AD=576E-15 AS=576E-15 PD=3.12E-6 
+PS=3.12E-6 M=1 
MN34 NET0243 NB1 0 0  TSMC25DN  L=240E-9 W=19.2E-6 AD=11.52E-12 AS=11.52E-12 
+PD=39.6E-6 PS=39.6E-6 M=1 
MN19 B VCM_REF! NET0250 0  TSMC25DN  L=480E-9 W=9.6E-6 AD=5.76E-12 AS=5.76E-12 
+PD=20.4E-6 PS=20.4E-6 M=1 
MN35 NET0209 NB2 NET0243 0  TSMC25DN  L=240E-9 W=19.2E-6 AD=11.52E-12 
+AS=11.52E-12 PD=39.6E-6 PS=39.6E-6 M=1 
MN24 NET0232 NET0232 NB3 0  TSMC25DN  L=240E-9 W=960E-9 AD=576E-15 AS=576E-15 
+PD=3.12E-6 PS=3.12E-6 M=1 
MN23 NB3 NET0232 NB2 0  TSMC25DN  L=720E-9 W=960E-9 AD=576E-15 AS=576E-15 
+PD=3.12E-6 PS=3.12E-6 M=1 
MN21 NET0299 VOUTP NET0209 0  TSMC25DN  L=480E-9 W=9.6E-6 AD=5.76E-12 
+AS=5.76E-12 PD=20.4E-6 PS=20.4E-6 M=1 
MN15 NET241 NB2 NET0173 0  TSMC25DN  L=240E-9 W=99.96E-6 AD=59.976E-12 
+AS=59.976E-12 PD=201.12E-6 PS=201.12E-6 M=1 
MN18 NET0299 VOUTN NET0250 0  TSMC25DN  L=480E-9 W=9.6E-6 AD=5.76E-12 
+AS=5.76E-12 PD=20.4E-6 PS=20.4E-6 M=1 
MN20 B VCM_REF! NET0209 0  TSMC25DN  L=480E-9 W=9.6E-6 AD=5.76E-12 AS=5.76E-12 
+PD=20.4E-6 PS=20.4E-6 M=1 
MN10 NET164 NB1 0 0  TSMC25DN  L=240E-9 W=49.98E-6 AD=29.988E-12 AS=29.988E-12 
+PD=101.16E-6 PS=101.16E-6 M=1 
MN9 NET202 NB1 0 0  TSMC25DN  L=240E-9 W=49.98E-6 AD=29.988E-12 AS=29.988E-12 
+PD=101.16E-6 PS=101.16E-6 M=1 
MN8 NET220 NET226 0 0  TSMC25DN  L=240E-9 W=49.98E-6 AD=29.988E-12 
+AS=29.988E-12 PD=101.16E-6 PS=101.16E-6 M=1 
MN7 NET210 NET212 0 0  TSMC25DN  L=240E-9 W=49.98E-6 AD=29.988E-12 
+AS=29.988E-12 PD=101.16E-6 PS=101.16E-6 M=1 
MN6 VOUTN NET210 NET212 0  TSMC25DN  L=240E-9 W=49.98E-6 AD=29.988E-12 
+AS=29.988E-12 PD=101.16E-6 PS=101.16E-6 M=1 
MN5 VOUTP NET220 NET226 0  TSMC25DN  L=240E-9 W=49.98E-6 AD=29.988E-12 
+AS=29.988E-12 PD=101.16E-6 PS=101.16E-6 M=1 
MN4 NET212 NB1 0 0  TSMC25DN  L=240E-9 W=49.98E-6 AD=29.988E-12 AS=29.988E-12 
+PD=101.16E-6 PS=101.16E-6 M=1 
MN3 NET226 NB1 0 0  TSMC25DN  L=240E-9 W=49.98E-6 AD=29.988E-12 AS=29.988E-12 
+PD=101.16E-6 PS=101.16E-6 M=1 
MN2 NET0173 NB1 0 0  TSMC25DN  L=240E-9 W=99.96E-6 AD=59.976E-12 AS=59.976E-12 
+PD=201.12E-6 PS=201.12E-6 M=1 
MN1 NET234 VINN NET241 0  TSMC25DN  L=240E-9 W=49.98E-6 AD=29.988E-12 
+AS=29.988E-12 PD=101.16E-6 PS=101.16E-6 M=1 
MN0 NET238 VINP NET241 0  TSMC25DN  L=240E-9 W=49.98E-6 AD=29.988E-12 
+AS=29.988E-12 PD=101.16E-6 PS=101.16E-6 M=1 
   
   
.lib "/nfs/guille/u1/c/cdsmgr/cdsmgr/pdk/CDK1.4/local/models/hspice/public/publicModel/tsmc25dN" NMOS 
.lib "/nfs/guille/u1/c/cdsmgr/cdsmgr/pdk/CDK1.4/local/models/hspice/public/publicModel/tsmc25dP" PMOS 
   
* INCLUDE FILES
   
   
* END OF NETLIST
.TEMP    25.0000    
.OP
.save
.OPTION POST
$.ac dec 100 1e3 1e9
.DC V6 START=-.3m STOP=.3m STEP=1e-6
.meas ac frequnityn when VDB(VOUTN)=0
.meas ac frequnityp when VDB(VOUTP)=0
*Scan out to unity gain frequency to find open loop gain
.meas ac Pgain max vdb(VOUTP) FROM=10 TO=frequnityp
.meas ac Ngain max vdb(VOUTN) FROM=10 TO=frequnityn
.meas ac min_phasen MIN vp(VOUTN) FROM=1 TO=frequnityn
.meas ac min_phasep MIN vp(VOUTP) FROM=1 TO=frequnityp
.meas ac PM = param('180+min_phasep')

.END
