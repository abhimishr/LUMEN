sets

land_class 
/primf, primn, secdf, secdn, urban, c3ann, c4ann, c3per, c4per, c3nfx, pastr, range,
 nonforest, agric, agric_final, ag_pa_ra/

impact_land_categories(land_class)
/primf, secdf, nonforest, urban, agric, agric_final, pastr, range, ag_pa_ra/

impact_land(impact_land_categories)
/primf, secdf, nonforest, urban, agric, pastr, range/

impact_land_non_agr(impact_land)
/primf, secdf, nonforest, urban, pastr, range/

impact_natural_land(impact_land)
/secdf, nonforest/

impact_land_backup(impact_land)
/secdf, nonforest, pastr, range/

impact_to_luh(impact_land_categories, land_class)

/
primf . (primf)
secdf . (secdf)
nonforest . (primn, secdn)
urban . (urban)
agric . (c3ann, c4ann, c3per, c4per, c3nfx)
pastr . (pastr)
range . (range)
/

;

table luh_init(fpu,land_class) LUH Area (000 ha)
$ondelim
$include "./InputData/luh_init.cs3"
$offdelim;

display luh_init;

parameter

luh_mod(fpu, impact_land_categories)
LUH00(fpu, impact_land_categories)
area_share(j,fpu,lnd)
area_sum_fpu(fpu)
luh_mod_chk(fpu)
luh_dist_area(j,fpu,lnd)
luh_area_diff(j,fpu,lnd)
AREA00_ORIGINAL(j,fpu,lnd)
luh_sum
area00_sum
;

luh_mod(fpu, impact_land_categories) = sum(impact_to_luh(impact_land_categories,land_class), luh_init(fpu, land_class));
LUH00(fpu, impact_land_categories) = luh_mod(fpu, impact_land_categories);

display luh_mod;

area_sum_fpu(fpu) = sum((j,lnd),AREA00(j,fpu,lnd));
*area_share(j,fpu,lnd) = (AREA00(j,fpu,lnd)/area_sum_fpu(fpu))$(area_sum_fpu(fpu)>0);
area_share(j,fpu,lnd) = (AREA00(j,fpu,lnd)/area_sum_fpu(fpu))$(area_sum_fpu(fpu)>0);

* DISTRIBUTE IT
luh_dist_area(j,fpu,lnd) = luh_mod(fpu, "agric") * area_share(j,fpu,lnd);

luh_area_diff(j,fpu,lnd) = luh_dist_area(j,fpu,lnd) - AREA00(j,fpu,lnd);

AREA00_ORIGINAL(j,fpu,lnd) = AREA00(j,fpu,lnd);

*AREA00(j,fpu,lnd) = luh_dist_area(j,fpu,lnd)$(luh_dist_area(j,fpu,lnd)>0);

area00_sum  = sum((j, fpu, lnd), AREA00(j, fpu, lnd));
luh_sum     = sum((j, fpu, lnd), luh_dist_area(j, fpu, lnd));

sets
agr_lnd(lnd) 
/air,arf/
;

parameter
fpu_area_luh(fpu)
fpi_area_impact(fpu)
glo_area_luh
luh_diff_agric(fpu)
luh_diff_agric_final(fpu)

nat_land_sum(fpu)
nat_land_sum_extended(fpu)
luh_redist_weight(fpu, impact_land_categories)

;

nat_land_sum(fpu)           = sum(impact_natural_land, LUH00(fpu, impact_natural_land));
nat_land_sum_extended(fpu)  = sum(impact_land_backup, LUH00(fpu, impact_land_backup));

luh_diff_agric(fpu) = sum(sameas(lnd, agr_lnd), QFS00(fpu,lnd)) - luh_mod(fpu, "agric");

luh_redist_weight(fpu, impact_natural_land)$(nat_land_sum(fpu) > 0) = LUH00(fpu, impact_natural_land) / nat_land_sum(fpu);
luh_redist_weight(fpu, impact_land_backup)$(nat_land_sum(fpu) < luh_diff_agric(fpu)) = LUH00(fpu, impact_land_backup) / nat_land_sum_extended(fpu);

LUH00(fpu, impact_land_categories) = LUH00(fpu, impact_land_categories) - (luh_diff_agric(fpu) * luh_redist_weight(fpu, impact_land_categories));

luh_mod(fpu, "agric_final") = luh_mod(fpu, "agric");
luh_mod(fpu, "agric_final") = luh_mod(fpu, "agric") + luh_diff_agric(fpu);

* Redo agricultural land in mod2 as this was untouched in mod2 - set it to real luh which was adjusted above
LUH00(fpu, "agric") = luh_mod(fpu, "agric_final") ;

luh_diff_agric_final(fpu) = sum(sameas(lnd, agr_lnd), QFS00(fpu,lnd)) - luh_mod(fpu, "agric_final");
LUH00(fpu, impact_land_categories)$(abs(LUH00(fpu, impact_land_categories)) < 1e-3) = 0;
LUH00(fpu, impact_land_categories)$(LUH00(fpu, impact_land_categories) < 0) = 0;

parameter
p_luh_pool(fpu, impact_land_categories)
p_luh_pool_opt(fpu,impact_land_categories,yrs) 
;

p_luh_pool(fpu, impact_land_categories) = LUH00(fpu, impact_land_categories);

variable
LUHV(fpu, impact_land)
v_luh_pool2(fpu, impact_land)
v_luh_pool_limit(fpu)
v_agr_pool(fpu)
;

equation
q_luh_pool(fpu)
q_luh_pool_limit(fpu)
;

parameter
p_luh_pool_limit(fpu)
;

p_luh_pool_limit(fpu1) = sum(impact_land, LUH00(fpu1, impact_land)); 

variable
*RELLANDV(fpu)
RELLANDV(fpu, lnd)
;

*RELLANDV.L(fpu) = 1;
RELLANDV.L(fpu, lnd) = 1;

parameter
RELLANDV00(fpu, impact_land_non_agr)
LUH_NONAG_SHR(fpu, impact_land_non_agr)
LUH_NONAG_TOTAL(fpu)
;

RELLANDV00(fpu, impact_land_non_agr) = LUH00(fpu,impact_land_non_agr);

LUH_NONAG_TOTAL(fpu1) = sum(impact_land_non_agr, LUH00(fpu1,impact_land_non_agr));
LUH_NONAG_SHR(fpu1, impact_land_non_agr) = LUH00(fpu1,impact_land_non_agr)/LUH_NONAG_TOTAL(fpu1);

equation
*LandSup2Eqn(fpu) Non agricultural land supply equation with LUH land classes
LandSup2Eqn(fpu, lnd) Non agricultural land supply equation with LUH land classes
;

parameter
NONAGElas(fpu, impact_land_non_agr)
NONAGElasDummy(impact_land_non_agr)
;

NONAGElasDummy("primf")     = 0.0001 ;
NONAGElasDummy("secdf")     = 0.0050 ;
NONAGElasDummy("nonforest") = 0.3900 ;
NONAGElasDummy("urban")     = 0.0001 ;
NONAGElasDummy("pastr")     = 0.5000 ;
NONAGElasDummy("range")     = 0.8000 ;

NONAGElas(fpu, impact_land_non_agr) = NONAGElasDummy(impact_land_non_agr);