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







#extsim (SimVHDL, VHDLA)
library ieee;
use ieee.electrical_systems.all;
use ieee.math_real.all;

entity sonde is
generic(ap,am,mf,fp:real);
port(terminal e:electrical;quantity fm:real);
end;
architecture arch of sonde is
quantity vrcf across i through e to electrical_ref;
quantity vfm :real;
begin
vfm == am*cos(2.0*math_pi*fm'integ);
vrcf== ap*cos(2.0*math_pi*fp*now +(mf*2.0*math_pi*fm/am)*vfm'integ);
end;
#endextsim


#extsim (SimVHDL, VHDLA)
library ieee;
use ieee.electrical_systems.all;
entity ampli is
generic(a:real);
port(terminal e,s:electrical);
end;
architecture arch of ampli is
quantity ve across e to electrical_ref;
quantity vs across ib through s to electrical_ref;
begin
vs==a*ve;
	
end;
#endextsim


#extsim (SimVHDL, VHDLA)
library ieee;
use ieee.electrical_systems.all;

entity limiteur is
generic(seuil:real);
port(terminal e,s:electrical);
end;

architecture arch of limiteur is
quantity ve across e to electrical_ref;
quantity vs across ib through s to electrical_ref;

begin
	if (ve'above(seuil)) use
		vs==seuil;
	elsif not (ve'above(-seuil)) use
		vs==-seuil;
	else
		vs==vs;
	end use;
end;
#endextsim


#extsim (SimVHDL, VHDLA)
library ieee;
use ieee.electrical_systems.all;

entity derivateur is
generic(a:real);
port(terminal e,s:electrical);
end;

architecture arch of derivateur is
quantity ve across e to electrical_ref;
quantity vs across ib through s to electrical_ref;

begin

	vs== a*ve'dot;
	
end;
#endextsim


#extsim (SimVHDL, VHDLA)
library ieee;
use ieee.electrical_systems.all;
use ieee.math_real.all;

entity filtre is
generic(qsi,fn:real);
port(terminal e,s:electrical);
end;

architecture arch of filtre is
quantity ve across e to electrical_ref;
quantity vs across i through s to electrical_ref;
constant wn:real:=2.0*math_pi*fn;
constant a: real:=(2.0*qsi)/wn;
constant b:real := 1.0/wn;
constant n: real_vector(0 to 2):=(1.0,0.0,0.0);
constant d: real_vector(0 to 2):=(1.0,a,b);
begin
vs == ve'Ltf(n,d); 	
end;	
#endextsim


INTERN  R   R1   N1:=N0009,  N2:=GND  ( R := 50  ) ;
INTERN  C   C1   N1:=N0009,  N2:=GND  ( C := 5n, V0 :=   ) ;
INTERN DEQUL   D1  A:= N0006,  C:=N0009   ( VF:=0.8,RB:=1m,RR:=100k) ;
INTERN  R   R2   N1:=N0002,  N2:=GND  ( R := 1k  ) ;
COUPL filtre filtre e:=N0009, s:=N0002  ( qsi:=0.7, fn:=1e6 ) DST: SIM(Type:=SimVHDL, Inst:=SimVHDL) ;
COUPL derivateur derivateur e:=N0005, s:=N0006  ( a:=10e-7 ) DST: SIM(Type:=SimVHDL, Inst:=SimVHDL) ;
COUPL limiteur Limiteur e:=N0004, s:=N0005  ( seuil:=90e-3 ) DST: SIM(Type:=SimVHDL, Inst:=SimVHDL) ;
COUPL ampli amplificateur e:=N0003, s:=N0004  ( a:=10 ) DST: SIM(Type:=SimVHDL, Inst:=SimVHDL) ;
INTERN  CONST  CONST1   ( CONST := 200000, TS := 0, AC_PHASE := 0, AC_MAG := 1m ) ;
COUPL sonde Sonde e:=N0003  ( ap:=10e-3, am:=100e-3, mf:=5, fp:=6e6, fm:=CONST1.VAL ) DST: SIM(Type:=SimVHDL, Inst:=SimVHDL) ;



SIMCTL SimCtl1
{

SIMCFG SECM SECM1 ( Solver := 1, LDF := 1, Iteratmax := 40, IEmax := 0.001, VEmax := 0.001 );
SIMCFG SIMPLORER_TR Simplorer1 ( Tend := 50u, Hmin := 0.01u, Hmax := 0.02u );
SIMCFG SIMPLORER_AC Simplorer2 ( Fstart := 1, Fend := 1k, Fstep := 10, ACSweepType := 1, Iteratmax := 40, EMaxAC := 1u );
SIMCFG SIMPLORER_DC Simplorer3 ( Iteratmax := 50, EMaxDC := 1m, Relaxmax := 10 );
SIMCFG SIMPLORER Simplorer4 ( Theta := 27, BDMold := 1);
}

OUTCTL OutCtl1
{

OUTCFG VIEWTOOL Out1 ( Xmin := 0, Xmax := Tend, Ymin := -400, Ymax := 400 );

RESULT VIEW VANALOG_0 (  Sonde.vrcf, Type:=ANALOG );
RESULT VIEW VANALOG_1 (  Sonde.vfm, Type:=ANALOG );
RESULT VIEW VANALOG_2 (  amplificateur.vs, Type:=ANALOG );
RESULT VIEW VANALOG_3 (  Limiteur.vs, Type:=ANALOG );
RESULT VIEW VANALOG_4 (  derivateur.vs, Type:=ANALOG );
RESULT VIEW VANALOG_5 (  filtre.vs, Type:=ANALOG );

OUTCFG SimplorerDB DB1 ( Xmin := 0, Xmax := Tend, Reduce := 0, StepNo := 2, StepWidth := 10u, RelChange := 0.0 );
}


RUN ( Model:=, Out := OutCtl1, Sim := SimCtl1 );


