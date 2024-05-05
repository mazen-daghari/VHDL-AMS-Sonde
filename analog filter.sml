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







INTERN  E 	E1   N1:=GND,  N2:=N0001  ( EMF := 1, PARTDERIV := 1, SPC := 0 , AC_PHASE := 0, AC_MAG := 1m  );
INTERN  R   R1   N1:=N0002,  N2:=N0001  ( R := 2.5Meg  ) ;
INTERN  C   C1   N1:=N0002,  N2:=GND  ( C := 1u, V0 := 0  ) ;
INTERN  E 	ET1   N1:=GND,  N2:=N0005  ( EMF := C1.V, PARTDERIV := 1, SPC := 0 , AC_PHASE := 0, AC_MAG := 1m  );
INTERN  R   R2   N1:=N0006,  N2:=N0005  ( R := 2.5Meg  ) ;
INTERN  C   C2   N1:=N0006,  N2:=GND  ( C := 1u, V0 := 0  ) ;
INTERN EQU { x2p:=0.16 * (-E1.V) - 0.8 * xp - 0.16 * x ;
	xp:=integ(x2p) ;
	x:=integ(xp) ;} DST: SIM(Type:=SSGM, Sequ:=PRE );
INTERN EQU { inp:=b1 * -E1.V ;} DST: SIM(Type:=SSGM, Sequ:=PRE );
INTERN EQU {a0:=1 ;
	a1:=5 ;
	a2:=6.25 ;
	b1:=1 ; } DST: SIM(Type:=SFML, Sequ:=INIT);
///%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
///%%%    DES Solver           %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
///%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
COUPL  DES  filter_DES   (ORD:=2,DIM:=1,SYSTEM:=
			{
							{{a2}}
							,{{a1}}
							,{{a0}}
			}
,RS:=
				{inp}
,IC:=
			{
						{0,0}
			}
,INTEGRATOR:=0,ErrMAX:=10m)  DST: SIM(Type:=DESSolver, Inst:=DES1) ;
INTERN  GAIN  EXT1   ( INPUT:=E1.V,KP:=-1,TS:=0) ;
INTERN  GS  Filter   ( INPUT:=EXT1.VAL,N:=0,D:=2,SUM0:=0,TS:=0,B[0]:=1,A[0]:=1,A[1]:=5,A[2]:=6.25) ;



SIMCTL SimCtl1
{

SIMCFG SECM SECM1 ( Solver := 0, LDF := 1, Iteratmax := 20, IEmax := 1m, VEmax := 1m );
SIMCFG SIMPLORER_TR Simplorer1 ( Tend := 30, Hmin := 1m, Hmax := 30m );
SIMCFG SIMPLORER_AC Simplorer2 ( Fstart := 1, Fend := 1Meg, Fstep := 0.1k, ACSweepType := 0, Iteratmax := 40, EMaxAC := 1u );
SIMCFG SIMPLORER_DC Simplorer3 ( Iteratmax := 50, EMaxDC := 1m, Relaxmax := 10 );
SIMCFG SIMPLORER Simplorer4 ( Theta := 27, BDMold := 1);
}

OUTCTL OutCtl1
{

OUTCFG VIEWTOOL Out1 ( Xmin := 0, Xmax := Tend, Ymin := -0.4k, Ymax := 0.4k );

RESULT SDB SDB_0(  x );
RESULT VIEW VANALOG_1 (  x, Type:=ANALOG, 1,0 );
RESULT SDB SDB_2(  Filter.VAL );
RESULT VIEW VANALOG_3 (  Filter.VAL, Type:=ANALOG, 1,0 );
RESULT SDB SDB_4(  C2.V );
RESULT VIEW VANALOG_5 (  C2.V, Type:=ANALOG, 1,0 );
RESULT SDB SDB_6(  filter_DES.SV[0,0] );
RESULT VIEW VANALOG_7 (  filter_DES.SV[0,0], Type:=ANALOG, 1,0 );
RESULT SDB SDB_8(  x );

OUTCFG SimplorerDB DB1 ( Xmin := 0, Xmax := Tend, Reduce := 0, StepNo := 2, StepWidth := 10u, RelChange := 0.0 );
}


RUN ( Model:=, Out := OutCtl1, Sim := SimCtl1 );


