* # FILE NAME: /NFS/STAK/STUDENTS/L/LOVETR/CADENCE/SIMULATION/                  
* FINAL_SCHEM_SOOCH_NCMF/HSPICES/SCHEMATIC/NETLIST/
* FINAL_SCHEM_SOOCH_NCMF.C.RAW
* NETLIST OUTPUT FOR HSPICES.
* GENERATED ON MAR 11 05:08:16 2016
   
* GLOBAL NET DEFINITIONS
.GLOBAL VCM_REF! VDD! 
* FILE NAME: FINAL_PROJECT_FINAL_SCHEM_SOOCH_NCMF_SCHEMATIC.S.
* SUBCIRCUIT FOR CELL: FINAL_SCHEM_SOOCH_NCMF.
* GENERATED FOR: HSPICES.
* GENERATED ON MAR 11 05:08:16 2016.
   
*Test Bench
C4 VOUTP VINN 1p
C5 VOUTN VINP 1p
C6 VINN 0 1p
C7 VINP 0 1p
R2 VINN 0 1G
R3 VINP 0 1G

*Output Swing Test
V6 VINP Vtest DC=0
E1 VINN Vtest VINP Vtest -1
V7 vtest 0 1.25

*Power
V0 VDD! 0  2.5 

*Input Sources
$V2 VINN 0  1.25 AC 500E-3 180.0 
$V1 VINP 0  1.25 AC 500E-3 

*Load
C2 VOUTP 0 3E-12 M=1.0
C3 VOUTN 0 3E-12 M=1.0

*Circuit Sources
V3 VCM_REF! 0  1.25 
I0 PB1 0  DC=4E-6  M=1.0 

*Circuit Elements
C1 NET0123 NET0148  2E-12 M=1.0 
C0 NET0144 NET0123  2E-12 M=1.0 
R0 NET0144 NET0123  25E3 M=1.0 
R1 NET0123 NET0148  25E3 M=1.0 

*Transistors 
MP31 0 VOUTP NET0144 VDD!  TSMC25DP  L=240E-9 W=43.2E-6 AD=25.92E-12 
+AS=25.92E-12 PD=87.6E-6 PS=87.6E-6 M=1 
MP34 0 VOUTN NET0148 VDD!  TSMC25DP  L=240E-9 W=43.2E-6 AD=25.92E-12 
+AS=25.92E-12 PD=87.6E-6 PS=87.6E-6 M=1 
MP35 NET0148 PB1 VDD! VDD!  TSMC25DP  L=240E-9 W=43.2E-6 AD=25.92E-12 
+AS=25.92E-12 PD=87.6E-6 PS=87.6E-6 M=1 
MP36 B B VDD! VDD!  TSMC25DP  L=240E-9 W=43.2E-6 AD=25.92E-12 AS=25.92E-12 
+PD=87.6E-6 PS=87.6E-6 M=1 
MP37 NET0205 NET0205 VDD! VDD!  TSMC25DP  L=240E-9 W=43.2E-6 AD=25.92E-12 
+AS=25.92E-12 PD=87.6E-6 PS=87.6E-6 M=1 
MP32 NET0211 PB1 VDD! VDD!  TSMC25DP  L=240E-9 W=43.2E-6 AD=25.92E-12 
+AS=25.92E-12 PD=87.6E-6 PS=87.6E-6 M=1 
MP33 0 VCM_REF! NET0211 VDD!  TSMC25DP  L=240E-9 W=43.2E-6 AD=25.92E-12 
+AS=25.92E-12 PD=87.6E-6 PS=87.6E-6 M=1 
MP18 NET0232 PB1 VDD! VDD!  TSMC25DP  L=240E-9 W=2.88E-6 AD=1.728E-12 
+AS=1.728E-12 PD=6.96E-6 PS=6.96E-6 M=1 
MP30 NET0144 PB1 VDD! VDD!  TSMC25DP  L=240E-9 W=43.2E-6 AD=25.92E-12 
+AS=25.92E-12 PD=87.6E-6 PS=87.6E-6 M=1 
MP17 PB1 PB1 VDD! VDD!  TSMC25DP  L=240E-9 W=2.88E-6 AD=1.728E-12 AS=1.728E-12 
+PD=6.96E-6 PS=6.96E-6 M=1 
MP9 NET210 PB1 VDD! VDD!  TSMC25DP  L=240E-9 W=143.1E-6 AD=85.86E-12 
+AS=85.86E-12 PD=287.4E-6 PS=287.4E-6 M=1 
MP8 NET220 PB1 VDD! VDD!  TSMC25DP  L=240E-9 W=143.1E-6 AD=85.86E-12 
+AS=85.86E-12 PD=287.4E-6 PS=287.4E-6 M=1 
MP7 NET164 NET234 VDD! VDD!  TSMC25DP  L=240E-9 W=143.1E-6 AD=85.86E-12 
+AS=85.86E-12 PD=287.4E-6 PS=287.4E-6 M=1 
MP6 NET202 NET238 VDD! VDD!  TSMC25DP  L=240E-9 W=143.1E-6 AD=85.86E-12 
+AS=85.86E-12 PD=287.4E-6 PS=287.4E-6 M=1 
MP5 VOUTN NET202 NET238 VDD!  TSMC25DP  L=240E-9 W=143.1E-6 AD=85.86E-12 
+AS=85.86E-12 PD=287.4E-6 PS=287.4E-6 M=1 
MP4 VOUTP NET164 NET234 VDD!  TSMC25DP  L=240E-9 W=143.1E-6 AD=85.86E-12 
+AS=85.86E-12 PD=287.4E-6 PS=287.4E-6 M=1 
MP3 NET238 B VDD! VDD!  TSMC25DP  L=240E-9 W=286.2E-6 AD=171.72E-12 
+AS=171.72E-12 PD=573.6E-6 PS=573.6E-6 M=1 
MP2 NET234 B VDD! VDD!  TSMC25DP  L=240E-9 W=286.2E-6 AD=171.72E-12 
+AS=171.72E-12 PD=573.6E-6 PS=573.6E-6 M=1 
MN33 NET0205 NET0123 NET0208 0  TSMC25DN  L=240E-9 W=14.4E-6 AD=8.64E-12 
+AS=8.64E-12 PD=30E-6 PS=30E-6 M=1 
MN34 B NET0211 NET0208 0  TSMC25DN  L=240E-9 W=14.4E-6 AD=8.64E-12 AS=8.64E-12 
+PD=30E-6 PS=30E-6 M=1 
MN39 NET0261 NB1 0 0  TSMC25DN  L=240E-9 W=28.8E-6 AD=17.28E-12 AS=17.28E-12 
+PD=58.8E-6 PS=58.8E-6 M=1 
MN40 NET0208 NB2 NET0261 0  TSMC25DN  L=240E-9 W=28.8E-6 AD=17.28E-12 
+AS=17.28E-12 PD=58.8E-6 PS=58.8E-6 M=1 
MN26 NB2 NET0232 NB1 0  TSMC25DN  L=720E-9 W=960E-9 AD=576E-15 AS=576E-15 
+PD=3.12E-6 PS=3.12E-6 M=1 
MN22 NB1 NB1 0 0  TSMC25DN  L=240E-9 W=960E-9 AD=576E-15 AS=576E-15 PD=3.12E-6 
+PS=3.12E-6 M=1 
MN23 NET0232 NET0232 NB2 0  TSMC25DN  L=240E-9 W=960E-9 AD=576E-15 AS=576E-15 
+PD=3.12E-6 PS=3.12E-6 M=1 
MN15 NET241 NB2 NET0173 0  TSMC25DN  L=240E-9 W=100.2E-6 AD=60.12E-12 
+AS=60.12E-12 PD=201.6E-6 PS=201.6E-6 M=1 
MN10 NET164 NB1 0 0  TSMC25DN  L=240E-9 W=50.1E-6 AD=30.06E-12 AS=30.06E-12 
+PD=101.4E-6 PS=101.4E-6 M=1 
MN9 NET202 NB1 0 0  TSMC25DN  L=240E-9 W=50.1E-6 AD=30.06E-12 AS=30.06E-12 
+PD=101.4E-6 PS=101.4E-6 M=1 
MN8 NET220 NET226 0 0  TSMC25DN  L=240E-9 W=50.1E-6 AD=30.06E-12 AS=30.06E-12 
+PD=101.4E-6 PS=101.4E-6 M=1 
MN7 NET210 NET212 0 0  TSMC25DN  L=240E-9 W=50.1E-6 AD=30.06E-12 AS=30.06E-12 
+PD=101.4E-6 PS=101.4E-6 M=1 
MN6 VOUTN NET210 NET212 0  TSMC25DN  L=240E-9 W=50.1E-6 AD=30.06E-12 
+AS=30.06E-12 PD=101.4E-6 PS=101.4E-6 M=1 
MN5 VOUTP NET220 NET226 0  TSMC25DN  L=240E-9 W=50.1E-6 AD=30.06E-12 
+AS=30.06E-12 PD=101.4E-6 PS=101.4E-6 M=1 
MN4 NET212 NB1 0 0  TSMC25DN  L=240E-9 W=50.1E-6 AD=30.06E-12 AS=30.06E-12 
+PD=101.4E-6 PS=101.4E-6 M=1 
MN3 NET226 NB1 0 0  TSMC25DN  L=240E-9 W=50.1E-6 AD=30.06E-12 AS=30.06E-12 
+PD=101.4E-6 PS=101.4E-6 M=1 
MN2 NET0173 NB1 0 0  TSMC25DN  L=240E-9 W=100.2E-6 AD=60.12E-12 AS=60.12E-12 
+PD=201.6E-6 PS=201.6E-6 M=1 
MN1 NET234 VINN NET241 0  TSMC25DN  L=240E-9 W=50.1E-6 AD=30.06E-12 
+AS=30.06E-12 PD=101.4E-6 PS=101.4E-6 M=1 
MN0 NET238 VINP NET241 0  TSMC25DN  L=240E-9 W=50.1E-6 AD=30.06E-12 
+AS=30.06E-12 PD=101.4E-6 PS=101.4E-6 M=1 
   
.lib "/nfs/guille/u1/c/cdsmgr/cdsmgr/pdk/CDK1.4/local/models/hspice/public/publicModel/tsmc25dN" NMOS 
.lib "/nfs/guille/u1/c/cdsmgr/cdsmgr/pdk/CDK1.4/local/models/hspice/public/publicModel/tsmc25dP" PMOS 
   
* INCLUDE FILES
   

* END OF NETLIST
.TEMP    27.0000    
.OP
.save
.OPTION POST
$.ac dec 100 1e3 1e9
.DC V6 START=-.2m STOP=.2m STEP=1e-6
.meas ac frequnityn when VDB(VOUTN)=0
.meas ac frequnityp when VDB(VOUTP)=0
*Scan out to unity gain frequency to find open loop gain
.meas ac Pgain max vdb(VOUTP) FROM=10 TO=frequnityp
.meas ac Ngain max vdb(VOUTN) FROM=10 TO=frequnityn
.meas ac min_phasen MIN vp(VOUTN) FROM=1 TO=frequnityn
.meas ac min_phasep MIN vp(VOUTP) FROM=1 TO=frequnityp
.meas ac PM = param('180+min_phasep')
.END
