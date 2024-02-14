*--------------------------------------------------------------------------*
*                 PRAEMBLE ACTIVE IF SCRIPT IS STANDALONE                  *
*--------------------------------------------------------------------------*
$IFTHENI.WrapData NOT set WRAPPER

$SETGLOBAL CODE_DIR  "C:\00_MyGAMS\LUMEN_Thanasis\Code\"
$SETGLOBAL DATA_DIR  "C:\00_MyGAMS\LUMEN_Thanasis\Data\"

$SETGLOBAL ISO_SEL "GRC,KEN"

$include "%CODE_DIR%/sets/Activities.gms"
$include "%CODE_DIR%/sets/Commodities.gms"
$include "%CODE_DIR%/sets/Costs.gms"
$include "%CODE_DIR%/sets/Land.gms"
$include "%CODE_DIR%/sets/Other.gms"
$include "%CODE_DIR%/sets/Regions.gms"
$include "%CODE_DIR%/sets/Mappings.gms"

$ELSE.WrapData

$ENDIF.WrapData
*------------------------------ PREAMBLE END ------------------------------*


$ontext
* PROSPECTIVE CODING
SET ISO_SEL(ISO)
/
$ifThenI.countries NOT set ISO_SEL
#iso
$else.countries
%ISO_SEL%, ROW
$endIf.countries
/
;
display ISO_SEL
*$STOP
$offtext


parameter f31_jcratio(iso, activity, commodity) Activity commodity ratio (1)
/
$ondelim
$include "%DATA_DIR%/jcratio.cs4"
$offdelim
/
;

parameter f31_iomat(iso, commodity, activity) Input output matrix (1)
/
$ondelim
$include "%DATA_DIR%/iomat.cs4"
$offdelim
/
;



f31_iomat(iso, commodity, activity) = round(f31_iomat(iso, commodity, activity), 4);

* Combine activity commodity sets in single parameter
parameter f31_IO_combined(iso, activity, commodity)  Combined Input output matrix (1);

loop(commodity,
    loop(activity,
        f31_IO_combined(iso, activity, commodity) = f31_iomat(iso, commodity, activity) + f31_jcratio(iso, activity, commodity);
    );
);

parameter f31_multicropping(fpu, activity, irr);
* Set multicropping value to 1 for now
f31_multicropping(fpu, activity, irr) = 1;



table f41_selfsuff(t_all, iso_all, commodity) self suff ratio (1)
$ondelim
$include "%DATA_DIR%/self_suff.cs3"
$offdelim
;

table f41_export_ratio(t_all, iso_all, commodity) Export ratio (1)
$ondelim
$include "%DATA_DIR%/export_ratio.cs3"
$offdelim
;

table f41_city_time(fpu,statistical_id)  Estimated travel time in minutes to the nearest urban area in 2015 (minutes)
$ondelim
$include "%DATA_DIR%/time_city.csv"
$offdelim
;

table f41_port_time(fpu,statistical_id)  Estimated travel time in minutes to the nearest port in 2015 (minutes)
$ondelim
$include "%DATA_DIR%/time_port.csv"
$offdelim
;

parameter f41_export_qty(t_all,reporter, commodity, partner)  Export quantity (tonne)
/
$ondelim
$include "%DATA_DIR%/export_qty.csv"
$offdelim
/
;

parameter f41_import_qty(t_all,reporter, commodity, partner)  Bilateral trade quantity (tonne)
/
$ondelim
$include "%DATA_DIR%/import_qty.csv"
$offdelim
/
;


EXECUTE_UNLOAD "%DATA_DIR%/DATA_ALL.gdx"
f31_jcratio
f31_iomat
f31_IO_combined
f31_multicropping
f41_selfsuff
f41_export_ratio
f41_city_time
f41_port_time
f41_export_qty
f41_import_qty
;



$ONTEXT
PARAMETERS
jcratio(activity, commodity)
iomat(commodity, activity)
;



LOOP(ISO_SEL,

fpu2(fpu)$Fpu2iso3(ISO_SEL,fpu) = YES;

iomat(commodity, activity) = f31_iomat(ISO_SEL, commodity, activity)

PUT_UTILITY 'gdxOut' / "%DATA_DIR%/ISO_DATA/data_" ISO_SEL.tl:0 '.gdx';
EXECUTE_UNLOAD
iomat
);




$OFFTEXT

