*--------------------------------------------------------------------------*
*         PROJECT PREAMBLE: OVERRIDES PREAMBLES IN INCLUDED SCRIPTS        *
*--------------------------------------------------------------------------*

$SETGLOBAL WRAPPER "Y"
$SETGLOBAL DATA_PREP "N"

$SETGLOBAL ISO_SEL "GRC,KEN"


$INCLUDE config.gms
*------------------------------ PREAMBLE END ------------------------------*







***************************PREDEFINED MACROS************************************
*$include "./core/macros.gms"
********************************************************************************

*  Loading sets
$INCLUDE "%SETS_DIR%/Activities.gms"
$INCLUDE "%SETS_DIR%/Commodities.gms"
$INCLUDE "%SETS_DIR%/Costs.gms"
$INCLUDE "%SETS_DIR%/Land.gms"
$INCLUDE "%SETS_DIR%/Other.gms"
$INCLUDE "%SETS_DIR%/Regions.gms"
$INCLUDE "%SETS_DIR%/Mappings.gms"
;


$IFTHENI.dataprep %DATA_PREP% == Y
PUT_UTILITY 'msglog'  / 'DATA PREPARATION' / ;

$  INCLUDE "%CODE_DIR%/Data/DataPrep.gms"

$ELSE.dataprep
PUT_UTILITY 'msglog' / 'MODEL RUN' / ;

$  INCLUDE "%CORE_DIR%/Parameters.gms"
$  INCLUDE "%CORE_DIR%/DataLoad.gms"
$  INCLUDE "%CORE_DIR%/Model.gms"

$ENDIF.dataprep

$STOP
$  INCLUDE "%CORE_DIR%/Reporting.gms"









***************************BASIC SETS INDICES***********************************
$include "./core/sets.gms"
$batinclude "./modules/include.gms" sets
********************************************************************************



**********INTRODUCE CALCULATION PARAMETERS, VARIABLES AND EQUATIONS*************
$batinclude "./modules/include.gms" declarations
********************************************************************************

*****************************IMPORT DATA FILES**********************************
$batinclude "./modules/include.gms" input
********************************************************************************

********************OBJECTIVE FUNCTION & CONSTRAINTS****************************
$batinclude "./modules/include.gms" equations
********************************************************************************

*******************MODEL DEFINITION & SOLVER OPTIONS****************************
model LUMEN / all /;

option iterlim    = 1000000 ;
option reslim     = 1000000 ;
option sysout     = Off ;
option limcol     = 0 ;
option limrow     = 0 ;
option decimals   = 3 ;
option savepoint  = 1 ;
********************************************************************************

*****************************VARIABLE SCALING***********************************
$batinclude "./modules/include.gms" scaling
********************************************************************************

***************************GENERAL CALCULATIONS*********************************
$include "./core/calculations.gms"
********************************************************************************
