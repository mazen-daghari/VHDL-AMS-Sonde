//*************************************************************************************************
//                                               SML-File                                         *
//              			 created by Simplorer Schematic 			  *
//                                      SIMPLORER SIMULATION CENTER 7.0                           *
//                                                                                                *
//*************************************************************************************************

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Natural Constants %%
#define MATH_PI		3.141592654		// PI
#define MATH_E		2.718281828		// Euler constant
#define PHYS_E0		8.85419E-12		// Permittivity of vacuum
#define PHYS_MU0	1.25664E-06		// Permeability of vacuum
#define PHYS_K		1.38066E-23		// Boltzmann constant	
#define PHYS_Q		1.60217733E-19		// Elementary charge	
#define PHYS_C		299792458		// Speed of Light
#define PHYS_G		9.80665			// Acceleration due to gravitiy
#define PHYS_H		6.6260755E-34		// Planck constant
#define PHYS_T0		-273.15			// Absolute zero
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%







INTERN  E 	E1   N1:=GND,  N2:=N0007  ( EMF := 12, PARTDERIV := 1, SPC := 0 , AC_PHASE := 0, AC_MAG := 1m  );
INTERN  R   R1   N1:=N0007,  N2:=N0002  ( R := 50  ) ;
INTERN  R   R2   N1:=N0007,  N2:=N0005  ( R := 1k  ) ;
INTERN  R   R3   N1:=N0007,  N2:=N0003  ( R := 1k  ) ;
INTERN  R   R4   N1:=N0007,  N2:=N0004  ( R := 50  ) ;
INTERN  C   C1   N1:=N0002,  N2:=N0005  ( C := 3.3u, V0 := 5  ) ;
INTERN  C   C2   N1:=N0004,  N2:=N0003  ( C := 3.3u, V0 := 0  ) ;
UMODEL SPICE_NPN SPICE_NPN2 COLLECTOR:=N0004, BASE:=N0005, EMITTER:=GND  ( OFF:=0, ICVBE:=0, ICVCE:=0, AREA:=1, TEMP:=27, IS:=1e-016, BF:=0.1k, NF:=1, VAF:=1e+308, IKF:=1e+308, ISE:=0, NE:=1.5, BR:=1, NR:=1, VAR:=1e+308, IKR:=1e+308, ISC:=0, NC:=2, RB:=0, IRB:=1e+308, RBM:=0, RE:=0, RC:=0, CJE:=0, VJE:=0.75, MJE:=0.33, TF:=0, XTF:=0, VTF:=1e+308, ITF:=0, PTF:=0, CJC:=0, VJC:=0.75, MJC:=0.33, XCJC:=1, TR:=0, CJS:=0, CCS:=0, VJS:=0.75, MJS:=0, XTB:=0, EG:=1.11, XTI:=3, FC:=0.5, TNOM:=27, KF:=0, AF:=1) SRC: DLL( File:="MaxwellSpice.dll") ;
UMODEL SPICE_NPN SPICE_NPN1 COLLECTOR:=N0002, BASE:=N0003, EMITTER:=GND  ( OFF:=0, ICVBE:=0, ICVCE:=0, AREA:=1, TEMP:=27, IS:=1e-016, BF:=0.1k, NF:=1, VAF:=1e+308, IKF:=1e+308, ISE:=0, NE:=1.5, BR:=1, NR:=1, VAR:=1e+308, IKR:=1e+308, ISC:=0, NC:=2, RB:=0, IRB:=1e+308, RBM:=0, RE:=0, RC:=0, CJE:=0, VJE:=0.75, MJE:=0.33, TF:=0, XTF:=0, VTF:=1e+308, ITF:=0, PTF:=0, CJC:=0, VJC:=0.75, MJC:=0.33, XCJC:=1, TR:=0, CJS:=0, CCS:=0, VJS:=0.75, MJS:=0, XTB:=0, EG:=1.11, XTI:=3, FC:=0.5, TNOM:=27, KF:=0, AF:=1) SRC: DLL( File:="MaxwellSpice.dll") ;



SIMCTL SimCtl1
{

SIMCFG SECM SECM1 ( Solver := 1, LDF := 0.1, Iteratmax := 160, IEmax := 10n, VEmax := 1u );
SIMCFG SIMPLORER_TR Simplorer1 ( Tend := 10m, Hmin := 10u, Hmax := 1m );
SIMCFG SIMPLORER_AC Simplorer2 ( Fstart := 1, Fend := 1Meg, Fstep := 0.1k, ACSweepType := 0, Iteratmax := 40, EMaxAC := 1u );
SIMCFG SIMPLORER_DC Simplorer3 ( Iteratmax := 100, EMaxDC := 1p, Relaxmax := 10 );
SIMCFG SIMPLORER Simplorer4 ( Theta := 27, BDMold := 1);
}

OUTCTL OutCtl1
{

OUTCFG VIEWTOOL Out1 ( Xmin := 0, Xmax := Tend, Ymin := -0.4k, Ymax := 0.4k );

RESULT SDB SDB_0(  C2.V );
RESULT VIEW VANALOG_1 (  C2.V, Type:=ANALOG );
RESULT SDB SDB_2(  C1.V );
RESULT VIEW VANALOG_3 (  C1.V, Type:=ANALOG );
RESULT SDB SDB_4(  R4.V );
RESULT VIEW VANALOG_5 (  R4.V, Type:=ANALOG );
RESULT SDB SDB_6(  R1.I );
RESULT VIEW VANALOG_7 (  R1.I, Type:=ANALOG );
RESULT VIEW VANALOG_8 (  R2.I, Type:=ANALOG );
RESULT VIEW VANALOG_9 (  R3.V, Type:=ANALOG );
RESULT VIEW VANALOG_10 (  R3.I, Type:=ANALOG );
RESULT SDB SDB_11(  R3.I );
RESULT SDB SDB_12(  R2.I );
RESULT SDB SDB_13(  N0005.V );
RESULT VIEW VANALOG_14 (  N0005.V, Type:=ANALOG );
RESULT SDB SDB_15(  N0003.V );
RESULT VIEW VANALOG_16 (  N0003.V, Type:=ANALOG );
RESULT VIEW VANALOG_17 (  C1.I, Type:=ANALOG );
RESULT SDB SDB_18(  C1.I );
RESULT VIEW VANALOG_19 (  C2.I, Type:=ANALOG );
RESULT SDB SDB_20(  C2.I );
RESULT SDB SDB_21(  N0002.V );
RESULT VIEW VANALOG_22 (  N0002.V, Type:=ANALOG );
RESULT SDB SDB_23(  N0004.V );
RESULT VIEW VANALOG_24 (  N0004.V, Type:=ANALOG );
RESULT SDB SDB_25(  N0003.V );
RESULT VIEW VANALOG_26 (  N0003.V, Type:=ANALOG );
RESULT SDB SDB_27(  N0005.V );
RESULT VIEW VANALOG_28 (  N0005.V, Type:=ANALOG );
RESULT SDB SDB_29(  N0003.V );
RESULT VIEW VANALOG_30 (  N0003.V, Type:=ANALOG );
RESULT SDB SDB_31(  N0004.V );
RESULT VIEW VANALOG_32 (  N0004.V, Type:=ANALOG );
RESULT SDB SDB_33(  N0002.V );
RESULT VIEW VANALOG_34 (  N0002.V, Type:=ANALOG );
RESULT SDB SDB_35(  R3.V );





OUTCFG SimplorerDB DB1 ( Xmin := 0, Xmax := Tend, Reduce := 0, StepNo := 2, StepWidth := 10u, RelChange := 0.0 );
}


RUN ( Model:=, Out := OutCtl1, Sim := SimCtl1 );


