SET VAR_TYPE "GAMS variable attribute used for the output" / level, marginal, upper, lower / ;

SET STAT_ID "Type of statistical indicator" / mean, median, min, max / ;

SET IRR "All irrigation types" / air, arf, gir, grf / ;

SET IRR_AGR(IRR) "Agricultural Irrigation" / air, arf /;
ALIAS(IRR, IRR2);


SET YEARS "All years" / 2015*2100 / ;
ALIAS(YEARS,YEARS2);

SET YRS(YEARS) "Years considered" / 2015*2020 / ;
ALIAS(YRS,YRS2);


SET CYRS(YRS) "Current time period" ;

set PYRS(YRS) "Previous time period" ;

SETS HH "Household type" / urban, rural / ;