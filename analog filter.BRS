[Graphic]
P=4
P000=Xmin,1,0,0
P001=Xmax,1,0,Tend
P002=Ymin,1,0,-0.4k
P003=Ymax,1,0,0.4k
C=0
O=0
E=4
E000=Xmin,1,Start value for output
E001=Xmax,1,End value for output
E002=Ymin,1,Min. value for display
E003=Ymax,1,Max. value for display
G=1
G000=/Grafik//0/0/
[E1]
P=21
P000=EMF,1,0,1
P001=FREQ,1,0,50
P002=TPERIO,1,0,20m
P003=AMPL,1,0,0.326k
P004=PHASE,1,0,0
P005=PERIO,1,0,1
P006=OFF,1,0,0
P007=TDELAY,1,0,0
P008=TRISE,1,0,5m
P009=TFALL,1,0,10m
P010=PWIDTH,1,0,5m
P011=PARTDERIV,1,0,1
P012=AC_MAG,1,0,1m
P013=AC_PHASE,1,0,0
P014=AC_RE,1,0,1m
P015=AC_IM,1,0,0
P016=SPC,1,0,0 
P017=V,2,0,0
P018=I,2,0,0
P019=dV,2,0,0
P020=dI,2,0,0
C=2
C000=N1,GND
C001=N2,N0001
O=0
E=21
E000=E1.EMF,1,EMF Value
E001=E1.FREQ,1,Frequency
E002=E1.TPERIO,1,Period
E003=E1.AMPL,1,Amplitude
E004=E1.PHASE,1,Phase
E005=E1.PERIO,1,Periodical
E006=E1.OFF,1,Offset
E007=E1.TDELAY,1,Initial Delay
E008=E1.TRISE,1,Rise Time
E009=E1.TFALL,1,Fall Time
E010=E1.PWIDTH,1,Pulse Width
E011=E1.PARTDERIV,1,Partial Derivation
E012=E1.AC_MAG,1,Magnitude of EMF (AC)
E013=E1.AC_PHASE,1,Phase Shift of EMF (AC)
E014=E1.AC_RE,1,Real Part of EMF (AC)
E015=E1.AC_IM,1,Imaginery Part of EMF (AC)
E016=E1.SPC,1,Spice compatibility
E017=E1.V,2,Voltage
E018=E1.I,2,Current
E019=E1.dV,2,Derivative of Voltage
E020=E1.dI,2,Derivative of Current
G=1
G000=/E/C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD/24/0/
[R1]
P=8
P000=R,1,0,2.5Meg
P001=CH,1,0,
P002=CH_FILE,1,0,
P003=CH_STRG,1,0,
P004=V,2,0,0
P005=I,2,0,0
P006=dV,2,0,0
P007=dI,2,0,0
C=2
C000=N1,N0002
C001=N2,N0001
O=0
E=5
E000=R1.R,1,Resistance
E001=R1.V,2,Voltage
E002=R1.I,2,Current
E003=R1.dV,2,Derivative of Voltage
E004=R1.dI,2,Derivative of Current
G=1
G000=/R/C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD/30/0/
[C1]
P=11
P000=C,1,0,1u
P001=V0,1,0,0
P002=CH,1,0,
P003=CH_FILE,1,0,
P004=CH_STRG,1,0,
P005=V,2,0,0
P006=I,2,0,0
P007=Q,2,0,0
P008=dV,2,0,0
P009=dI,2,0,0
P010=dQ,2,0,0
C=2
C000=N1,N0002
C001=N2,GND
O=0
E=8
E000=C1.C,1,Capacitance
E001=C1.V0,1,Initial Voltage
E002=C1.V,2,Voltage
E003=C1.I,2,Current
E004=C1.Q,2,Charge
E005=C1.dV,2,Derivative of Voltage
E006=C1.dI,2,Derivative of Current
E007=C1.dQ,2,Derivative of Charge
G=1
G000=/C/C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD/32/0/
[GND]
P=0
C=1
C000=P,
O=0
E=0
G=1
G000=///0/0/
[N0001]
P=0
C=0
O=0
E=0
G=1
G000=///0/1/
[N0002]
P=0
C=0
O=0
E=0
G=1
G000=///0/1/
[GND]
P=0
C=0
O=0
E=0
G=1
G000=///0/1/
[ET1]
P=21
P000=EMF,1,0,C1.V
P001=FREQ,1,0,50
P002=TPERIO,1,0,20m
P003=AMPL,1,0,0.326k
P004=PHASE,1,0,0
P005=PERIO,1,0,1
P006=OFF,1,0,0
P007=TDELAY,1,0,0
P008=TRISE,1,0,5m
P009=TFALL,1,0,10m
P010=PWIDTH,1,0,5m
P011=PARTDERIV,1,0,1
P012=AC_MAG,1,0,1m
P013=AC_PHASE,1,0,0
P014=AC_RE,1,0,1m
P015=AC_IM,1,0,0
P016=SPC,1,0,0 
P017=V,2,0,0
P018=I,2,0,0
P019=dV,2,0,0
P020=dI,2,0,0
C=2
C000=N1,GND
C001=N2,N0005
O=0
E=21
E000=ET1.EMF,1,EMF Value
E001=ET1.FREQ,1,Frequency
E002=ET1.TPERIO,1,Period
E003=ET1.AMPL,1,Amplitude
E004=ET1.PHASE,1,Phase
E005=ET1.PERIO,1,Periodical
E006=ET1.OFF,1,Offset
E007=ET1.TDELAY,1,Initial Delay
E008=ET1.TRISE,1,Rise Time
E009=ET1.TFALL,1,Fall Time
E010=ET1.PWIDTH,1,Pulse Width
E011=ET1.PARTDERIV,1,Partial Derivation
E012=ET1.AC_MAG,1,Magnitude of EMF (AC)
E013=ET1.AC_PHASE,1,Phase Shift of EMF (AC)
E014=ET1.AC_RE,1,Real Part of EMF (AC)
E015=ET1.AC_IM,1,Imaginery Part of EMF (AC)
E016=ET1.SPC,1,Spice compatibility
E017=ET1.V,2,Voltage
E018=ET1.I,2,Current
E019=ET1.dV,2,Derivative of Voltage
E020=ET1.dI,2,Derivative of Current
G=1
G000=/E/C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD/24/0/
[R2]
P=8
P000=R,1,0,2.5Meg
P001=CH,1,0,
P002=CH_FILE,1,0,
P003=CH_STRG,1,0,
P004=V,2,0,0
P005=I,2,0,0
P006=dV,2,0,0
P007=dI,2,0,0
C=2
C000=N1,N0006
C001=N2,N0005
O=0
E=5
E000=R2.R,1,Resistance
E001=R2.V,2,Voltage
E002=R2.I,2,Current
E003=R2.dV,2,Derivative of Voltage
E004=R2.dI,2,Derivative of Current
G=1
G000=/R/C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD/30/0/
[C2]
P=11
P000=C,1,0,1u
P001=V0,1,0,0
P002=CH,1,0,
P003=CH_FILE,1,0,
P004=CH_STRG,1,0,
P005=V,2,0,0
P006=I,2,0,0
P007=Q,2,0,0
P008=dV,2,0,0
P009=dI,2,0,0
P010=dQ,2,0,0
C=2
C000=N1,N0006
C001=N2,GND
O=2
O000=RESULT VIEW VANALOG_5 (  C2.V, Type:=ANALOG, 1,0 );
O001=RESULT SDB SDB_4(  C2.V );
E=8
E000=C2.C,1,Capacitance
E001=C2.V0,1,Initial Voltage
E002=C2.V,2,Voltage
E003=C2.I,2,Current
E004=C2.Q,2,Charge
E005=C2.dV,2,Derivative of Voltage
E006=C2.dI,2,Derivative of Current
E007=C2.dQ,2,Derivative of Charge
G=1
G000=/C/C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD/32/0/
[GND]
P=0
C=1
C000=P,
O=0
E=0
G=1
G000=///0/0/
[N0005]
P=0
C=0
O=0
E=0
G=1
G000=///0/1/
[N0006]
P=0
C=0
O=0
E=0
G=1
G000=///0/1/
[N0007]
P=0
C=0
O=0
E=0
G=1
G000=///0/2/
[Filter_Equation]
P=6
P000=Name,1,0,x2p:=0.16 * (-E1.V) - 0.8 * xp - 0.16 * x
P001=x2p,2,0,
P002=Name,1,0,xp:=integ(x2p)
P003=xp,2,0,
P004=Name,1,0,x:=integ(xp)
P005=x,2,0,
C=0
O=3
O000=RESULT SDB SDB_8(  x );
O001=RESULT VIEW VANALOG_1 (  x, Type:=ANALOG, 1,0 );
O002=RESULT SDB SDB_0(  x );
E=3
E000=x2p,2,Dynamic Variable Output (x2p)
E001=xp,2,Dynamic Variable Output (xp)
E002=x,2,Dynamic Variable Output (x)
G=1
G000=/FML/C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD/101/0/
[VA11]
P=2
P000=Name,1,0,inp:=b1 * -E1.V
P001=inp,2,0,
C=0
O=0
E=1
E000=inp,2,Dynamic Variable Output (inp)
G=1
G000=/FML/C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD/101/0/
[ICA1]
P=8
P000=Name,1,0,a0:=1
P001=a0,2,0,
P002=Name,1,0,a1:=5
P003=a1,2,0,
P004=Name,1,0,a2:=6.25
P005=a2,2,0,
P006=Name,1,0,b1:=1
P007=b1,2,0,
C=0
O=0
E=4
E000=a0,2,Dynamic Variable Output (%s)
E001=a1,2,Dynamic Variable Output (%s)
E002=a2,2,Dynamic Variable Output (%s)
E003=b1,2,Dynamic Variable Output (%s)
G=1
G000=/FML_INIT/C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD/100/0/
[SdbControl]
P=6
P000=Xmin,1,0,0
P001=Xmax,1,0,Tend
P002=Reduce,1,0,0
P003=StepNo,1,0,2
P004=StepWidth,1,0,10u
P005=RelChange,1,0,0.0
C=0
O=0
E=6
E000=Xmin,1,Start value for output
E001=Xmax,1,End value for output
E002=Reduce,1,Dynamic reduction Off/Step/Timestep
E003=StepNo,1,Output every ... steps
E004=StepWidth,1,Output step size
E005=RelChange,1,Maximum Change (in %)
G=1
G000=/SDBCTRL//0/0/
[filter_DES]
P=5
P000=DIM,1,0,1
P001=ORD,1,0,2
P002=SV[0,0],2,0,Value
P003=SV[0,1],2,0,Value
P004=SV[0,2],2,0,Value
C=0
O=2
O000=RESULT VIEW VANALOG_7 (  filter_DES.SV[0,0], Type:=ANALOG, 1,0 );
O001=RESULT SDB SDB_6(  filter_DES.SV[0,0] );
E=5
E000=filter_DES.DIM,1,Dimension of Equation System
E001=filter_DES.ORD,1,Order of Equation System
E002=filter_DES.SV[0,0],2,Solution Vector Element [0,0]
E003=filter_DES.SV[0,1],2,Solution Vector Element [0,0]
E004=filter_DES.SV[0,2],2,Solution Vector Element [0,1]
G=1
G000=/DES/C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD/127/0/
[TR]
P=11
P000=Tend,1,0,30
P001=Hmin,1,0,1m
P002=Hmax,1,0,30m
P003=Theta,1,0,23
P004=UseIVals,1,0,0
P005=IValsFile,1,0,
P006=Solver,1,0,0
P007=LDF,1,0,1
P008=Iteratmax,1,0,20
P009=IEmax,1,0,1m
P010=VEmax,1,0,1m
C=0
O=0
E=11
E000=Tend,1,Simulation end time
E001=Hmin,1,Min. timestep
E002=Hmax,1,Max. timestep
E003=Theta,1,Global temperature
E004=UseIVals,1,
E005=IValsFile,1,Name of the optional Initial Values File (*.aws)
E006=Solver,1,Integration formula
E007=LDF,1,Local discretization error
E008=Iteratmax,1,Max. number of iterations
E009=IEmax,1,Max. current error
E010=VEmax,1,Max. voltage error
G=1
G000=/TR//0/0/
[AC]
P=8
P000=Fstart,1,0,1
P001=Fend,1,0,1Meg
P002=Fstep,1,0,0.1k
P003=ACSweepType,1,0,0
P004=Theta,1,0,23
P005=IteratmaxAC,1,0,40
P006=EMaxAC,1,0,1u
P007=Relaxmax,1,0,1u
C=0
O=0
E=8
E000=Fstart,1,Start frequency
E001=Fend,1,Stop frequency
E002=Fstep,1,Frequency stepwidth
E003=ACSweepType,1,AC Sweep Type
E004=Theta,1,Global temperature
E005=IteratmaxAC,1,Max. number of iterations
E006=EMaxAC,1,Maximum Error
E007=Relaxmax,1,Maximum Number of Relaxations
G=1
G000=/AC//0/0/
[DC]
P=4
P000=Theta,1,0,23
P001=Iteratmax,1,0,50
P002=EMaxDC,1,0,1m
P003=Relaxmax,1,0,10
C=0
O=0
E=4
E000=Theta,1,Global temperature
E001=Iteratmax,1,Max. number of iterations
E002=EMaxDC,1,Maximum Error
E003=Relaxmax,1,Maximum Number of Relaxations
G=1
G000=/DC//0/0/
[General]
P=2
P000=Theta,1,0,27
P001=BDMold,1,0,0
C=0
O=0
E=2
E000=Theta,1,Global temperature
E001=BDMold,1,Specifies whether the sequential or the DES-based BDM Simulator will be used.
G=1
G000=/GENERAL//0/0/
[2DGraphSel1]
P=0
C=0
O=0
E=0
G=1
G000=/2DGraphSel/C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\DISPLAY.SMD/2/0/
[EXT1]
P=4
P000=INPUT,1,0,E1.V
P001=KP,1,0,-1
P002=TS,1,0,0
P003=VAL,2,1,0
C=0
O=0
E=4
E000=EXT1.INPUT,1,Input Signal
E001=EXT1.KP,1,Proportional Gain
E002=EXT1.TS,1,Sample Time
E003=EXT1.VAL,2,Value
G=1
G000=/GAIN/C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD/78/0/
[Filter]
P=10
P000=INPUT,1,1,EXT1.VAL
P001=N,1,0,0
P002=D,1,0,2
P003=SUM0,1,0,0
P004=TS,1,0,0
P005=VAL,2,0,
P006=B[0],1,0,1
P007=A[0],1,0,1
P008=A[1],1,0,5
P009=A[2],1,0,6.25
C=0
O=2
O000=RESULT VIEW VANALOG_3 (  Filter.VAL, Type:=ANALOG, 1,0 );
O001=RESULT SDB SDB_2(  Filter.VAL );
E=10
E000=Filter.INPUT,1,Input Signal
E001=Filter.N,1,Numerator Dimension
E002=Filter.D,1,Denominator Dimension
E003=Filter.SUM0,1,Sum of Initial Values
E004=Filter.TS,1,Sample Time
E005=Filter.VAL,2,Value
E006=Filter.B[0],1,Denominator Coefficients
E007=Filter.A[0],1,Numerator Coefficients
E008=Filter.A[1],1,Numerator Coefficients
E009=Filter.A[2],1,Numerator Coefficients
G=1
G000=/GS/C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD/77/0/
[/FML/C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD/101/0/]
N=1
N000=FML
D=1
D000=C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD,101
[/FML_INIT/C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD/100/0/]
N=1
N000=FML_INIT
D=1
D000=C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD,100
[/GAIN/C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD/78/0/]
N=1
N000=GAIN
D=1
D000=C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD,78
[/E/C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD/24/0/]
N=1
N000=E
D=1
D000=C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD,24
[/GS/C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD/77/0/]
N=1
N000=GS
D=1
D000=C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD,77
[/2DGraphSel/C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\DISPLAY.SMD/2/0/]
N=1
N000=2DGraphSel
D=1
D000=C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\DISPLAY.SMD,2
[/AC//0/0/]
N=1
N000=AC
D=0
[/Grafik//0/0/]
N=1
N000=Grafik
D=0
[/DC//0/0/]
N=1
N000=DC
D=0
[/C/C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD/32/0/]
N=1
N000=C
D=1
D000=C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD,32
[/DES/C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD/127/0/]
N=1
N000=DES
D=1
D000=C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD,127
[/SDBCTRL//0/0/]
N=1
N000=SDBCTRL
D=0
[/TR//0/0/]
N=1
N000=TR
D=0
[///0/2/]
N=1
N000=
D=0
[///0/1/]
N=1
N000=
D=0
[///0/0/]
N=1
N000=
D=0
[/GENERAL//0/0/]
N=1
N000=GENERAL
D=0
[/R/C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD/30/0/]
N=1
N000=R
D=1
D000=C:\ANSOFT\SIMPLORER70 STUDENT VERSION\LIB\BASIC_ELEMENTS.SMD,30
