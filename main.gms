*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use model 
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  License Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

*************************** Begin Module Settings ******************************
$setglobal land             basic
$setglobal cost             basic
$setglobal optimization     nlp
*************************** End Module Settings ********************************

***************************PREDEFINED MACROS************************************
$include "./core/macros.gms"
********************************************************************************

***************************BASIC SETS INDICES***********************************
$include "./core/sets.gms"
$batinclude "./modules/include.gms" sets
********************************************************************************

**********INTRODUCE CALCULATION PARAMETERS, VARIABLES AND EQUATIONS*************
*$include "./core/declarations.gms"
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