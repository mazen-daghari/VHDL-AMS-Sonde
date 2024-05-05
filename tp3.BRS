[TR]
P=11
P000=Tend,1,0,50u
P001=Hmin,1,0,0.01u
P002=Hmax,1,0,0.02u
P003=Theta,1,0,27
P004=UseIVals,1,0,0
P005=IValsFile,1,0,
P006=Solver,1,0,1
P007=LDF,1,0,1
P008=Iteratmax,1,0,40
P009=IEmax,1,0,0.001
P010=VEmax,1,0,0.001
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
P001=Fend,1,0,1k
P002=Fstep,1,0,10
P003=ACSweepType,1,0,1
P004=Theta,1,0,27
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
P000=Theta,1,0,27
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
[Graphic]
P=4
P000=Xmin,1,0,0
P001=Xmax,1,0,Tend
P002=Ymin,1,0,-400
P003=Ymax,1,0,400
C=0
O=0
E=4
E000=Xmin,1,Start value for output
E001=Xmax,1,End value for output
E002=Ymin,1,Min. value for display
E003=Ymax,1,Max. value for display
G=1
G000=/Grafik//0/0/
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
[R1]
P=8
P000=R,1,0,50
P001=CH,1,0,
P002=CH_FILE,1,0,
P003=CH_STRG,1,0,
P004=V,2,0,0
P005=I,2,0,0
P006=dV,2,0,0
P007=dI,2,0,0
C=2
C000=N1,N0009
C001=N2,GND
O=0
E=5
E000=R1.R,1,Resistance
E001=R1.V,2,Voltage
E002=R1.I,2,Current
E003=R1.dV,2,Derivative of Voltage
E004=R1.dI,2,Derivative of Current
G=1
G000=/R/C:\ANSOFT\SIMPLORER70\LIB\BASIC_ELEMENTS.SMD/30/0/
[C1]
P=11
P000=C,1,0,5n
P001=V0,1,0,
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
C000=N1,N0009
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
G000=/C/C:\ANSOFT\SIMPLORER70\LIB\BASIC_ELEMENTS.SMD/32/0/
[D1]
P=13
P000=V,2,0,0
P001=I,2,0,0
P002=G,2,0,0
P003=dV,2,0,0
P004=CH,1,0,
P005=VF,1,0,0.8
P006=RB,1,0,1m
P007=RR,1,0,100k
P008=ISAT,1,0,1p
P009=VT,1,0,35m
P010=FILE,1,0,Sheet1__D1.mdx
P011=FILE_STRG,1,0,
P012=dI,2,0,0
C=2
C000=A,N0006
C001=C,N0009
O=0
E=10
E000=D1.V,2,Voltage
E001=D1.I,2,Current
E002=D1.G,2,Conductance
E003=D1.dV,2,Derivative of Voltage
E004=D1.VF,1,Forward Voltage
E005=D1.RB,1,Bulk Resistance
E006=D1.RR,1,Reverse Resistance
E007=D1.ISAT,1,Saturation Current
E008=D1.VT,1,Thermal Voltage
E009=D1.dI,2,Derivative of Current
G=1
G000=/D/C:\ANSOFT\SIMPLORER70\LIB\BASIC_ELEMENTS.SMD/15/0/
[R2]
P=8
P000=R,1,0,1k
P001=CH,1,0,
P002=CH_FILE,1,0,
P003=CH_STRG,1,0,
P004=V,2,0,0
P005=I,2,0,0
P006=dV,2,0,0
P007=dI,2,0,0
C=2
C000=N1,N0002
C001=N2,GND
O=0
E=5
E000=R2.R,1,Resistance
E001=R2.V,2,Voltage
E002=R2.I,2,Current
E003=R2.dV,2,Derivative of Voltage
E004=R2.dI,2,Derivative of Current
G=1
G000=/R/C:\ANSOFT\SIMPLORER70\LIB\.\BASIC_ELEMENTS.SMD/30/0/
[N0002]
P=0
C=0
O=0
E=0
G=1
G000=///0/0/
[N0003]
P=0
C=0
O=0
E=0
G=1
G000=///0/0/
[N0004]
P=0
C=0
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
G000=///0/0/
[N0006]
P=0
C=0
O=0
E=0
G=1
G000=///0/0/
[N0009]
P=0
C=0
O=0
E=0
G=1
G000=///0/0/
[GND]
P=0
C=1
C000=P,
O=0
E=0
G=1
G000=///0/1/
[GND]
P=0
C=1
C000=P,
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
G000=///0/0/
[N0015]
P=0
C=0
O=0
E=0
G=1
G000=///0/2/
[filtre]
P=2
P000=qsi,1,0,0.7
P001=fn,1,0,1e6
C=2
C000=e,N0009
C001=s,N0002
O=1
O000=RESULT VIEW VANALOG_5 (  filtre.vs, Type:=ANALOG );
E=2
E000=filtre.qsi,1,
E001=filtre.fn,1,
G=1
G000=/filtre//0/0/
[derivateur]
P=1
P000=a,1,0,10e-7
C=2
C000=e,N0005
C001=s,N0006
O=1
O000=RESULT VIEW VANALOG_4 (  derivateur.vs, Type:=ANALOG );
E=1
E000=derivateur.a,1,
G=1
G000=/derivateur//0/0/
[Limiteur]
P=1
P000=seuil,1,0,90e-3
C=2
C000=e,N0004
C001=s,N0005
O=1
O000=RESULT VIEW VANALOG_3 (  Limiteur.vs, Type:=ANALOG );
E=1
E000=Limiteur.seuil,1,
G=1
G000=/limiteur//0/0/
[amplificateur]
P=1
P000=a,1,0,10
C=2
C000=e,N0003
C001=s,N0004
O=1
O000=RESULT VIEW VANALOG_2 (  amplificateur.vs, Type:=ANALOG );
E=1
E000=amplificateur.a,1,
G=1
G000=/ampli//0/0/
[CONST1]
P=7
P000=CONST,1,0,200000
P001=TS,1,0,0
P002=AC_MAG,1,0,1m
P003=AC_PHASE,1,0,0
P004=AC_RE,1,0,1m
P005=AC_IM,1,0,0
P006=VAL,2,1,0
C=0
O=0
E=7
E000=CONST1.CONST,1,Constant Value
E001=CONST1.TS,1,Sample Time
E002=CONST1.AC_MAG,1,Source Current Magnitude (AC)
E003=CONST1.AC_PHASE,1,Phase Shift Source Current (AC)
E004=CONST1.AC_RE,1,Real Part of Source Current (AC)
E005=CONST1.AC_IM,1,Imaginery Part of Source Current (AC)
E006=CONST1.VAL,2,Value
G=1
G000=/CONST/C:\ANSOFT\SIMPLORER70\LIB\BASIC_ELEMENTS.SMD/69/0/
[Sonde]
P=5
P000=ap,1,0,10e-3
P001=am,1,0,100e-3
P002=mf,1,0,5
P003=fp,1,0,6e6
P004=fm,1,1,CONST1.VAL
C=1
C000=e,N0003
O=2
O000=RESULT VIEW VANALOG_1 (  Sonde.vfm, Type:=ANALOG );
O001=RESULT VIEW VANALOG_0 (  Sonde.vrcf, Type:=ANALOG );
E=5
E000=Sonde.ap,1,
E001=Sonde.am,1,
E002=Sonde.mf,1,
E003=Sonde.fp,1,
E004=Sonde.fm,1,
G=1
G000=/sonde//0/0/
[/D/C:\ANSOFT\SIMPLORER70\LIB\BASIC_ELEMENTS.SMD/15/0/]
N=1
N000=D
D=1
D000=C:\ANSOFT\SIMPLORER70\LIB\BASIC_ELEMENTS.SMD,15
[/CONST/C:\ANSOFT\SIMPLORER70\LIB\BASIC_ELEMENTS.SMD/69/0/]
N=1
N000=CONST
D=1
D000=C:\ANSOFT\SIMPLORER70\LIB\BASIC_ELEMENTS.SMD,69
[/filtre//0/0/]
N=1
N000=filtre
D=0
[/C/C:\ANSOFT\SIMPLORER70\LIB\BASIC_ELEMENTS.SMD/32/0/]
N=1
N000=C
D=1
D000=C:\ANSOFT\SIMPLORER70\LIB\BASIC_ELEMENTS.SMD,32
[/Grafik//0/0/]
N=1
N000=Grafik
D=0
[/AC//0/0/]
N=1
N000=AC
D=0
[/R/C:\ANSOFT\SIMPLORER70\LIB\BASIC_ELEMENTS.SMD/30/0/]
N=1
N000=R
D=1
D000=C:\ANSOFT\SIMPLORER70\LIB\BASIC_ELEMENTS.SMD,30
[/DC//0/0/]
N=1
N000=DC
D=0
[/derivateur//0/0/]
N=1
N000=derivateur
D=0
[/R/C:\ANSOFT\SIMPLORER70\LIB\.\BASIC_ELEMENTS.SMD/30/0/]
N=1
N000=R
D=1
D000=C:\ANSOFT\SIMPLORER70\LIB\.\BASIC_ELEMENTS.SMD,30
[/SDBCTRL//0/0/]
N=1
N000=SDBCTRL
D=0
[///0/2/]
N=1
N000=
D=0
[/TR//0/0/]
N=1
N000=TR
D=0
[/limiteur//0/0/]
N=1
N000=limiteur
D=0
[///0/1/]
N=1
N000=
D=0
[/ampli//0/0/]
N=1
N000=ampli
D=0
[///0/0/]
N=1
N000=
D=0
[/GENERAL//0/0/]
N=1
N000=GENERAL
D=0
[/sonde//0/0/]
N=1
N000=sonde
D=0
