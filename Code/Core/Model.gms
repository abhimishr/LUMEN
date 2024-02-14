*#################################################################
*  Land
*#################################################################
positive variables
vm_land(fpu, land_class_agg)        Land use variable (000 ha)
vm_land_cost(fpu)                  Cost of land use (000 USD)
;

equations
q10_land(fpu)                       Equation for land use (000 ha)
q10_land_cost(fpu)                  Cost of land use (USD per ha)
;

q10_land(fpu2) ..
                sum(land_class_agg, vm_land(fpu2, land_class_agg))
                =e=
                sum(land_class_agg, p10_luh_init(fpu2, land_class_agg))
                ;

q10_land_cost(fpu2) ..
                vm_land_cost(fpu2)
                =e=
                sum(land_class_agg, vm_land(fpu2, land_class_agg) * p10_land_cost(fpu2, land_class_agg))





*#################################################################
*  Land conversion
*#################################################################
positive variables
v11_landexpansion(fpu, land_class_agg)               Land expansion (mio. ha)
v11_landreduction(fpu, land_class_agg)               Land reduction (mio. ha)
vm_cost_land_transition(fpu)                        Costs for lu transitions (mio. USD05MER per yr)
v11_lu_transitions(fpu, land_from,land_to)           Land transitions between time steps (mio. ha)
v11_balance_positive(fpu)                           Balance variable for land transitions (mio. ha)
v11_balance_negative(fpu)                           Balance variable for land transitions (mio. ha)
v11_landreduction_cost(fpu, land_class_agg)     Additional costs for lu transitions (000 USD per yr)
;

equations
q11_transition_matrix(fpu)                      Land transition constraint cell area (000 ha)
q11_transition_to(fpu,land_to)                  Land transition constraint to (000 ha)
q11_transition_from(fpu,land_from)              Land transition constraint from (000 ha)
q11_landexpansion(fpu,land_to)                  Land expansion constraint (000 ha)
q11_landreduction(fpu,land_from)                Land reduction constraint (000 ha)
q11_cost(fpu)                                   Costs for lu transitions (000 USD per yr)
q11_cost_reduction(fpu, land_class_agg)    Additional costs for lu transitions (000 USD per yr)
;

* Current year's total land use is equal to last year's land use +/- the change
*** THANASIS: what is the meaning of the balance? shouldn't it go to the RHS?
q11_transition_matrix(fpu2) ..
                sum((land_from,land_to), v11_lu_transitions(fpu2,land_from,land_to))
                + 
                v11_balance_positive(fpu2) 
                - 
                v11_balance_negative(fpu2) 
                =e=
                sum(land_class_agg, pcm_land(fpu2,land_class_agg))
                ;


q11_transition_to(fpu2,land_to) ..
               sum(land_from, v11_lu_transitions(fpu2,land_from,land_to)) 
               =e=
               vm_land(fpu2,land_to)
               ;

q11_transition_from(fpu2,land_from) ..
               sum(land_to, v11_lu_transitions(fpu2,land_from,land_to)) 
               =e=
               pcm_land(fpu2,land_from)
               ;

q11_landexpansion(fpu2,land_to) ..
               v11_landexpansion(fpu2,land_to) 
               =e=
               sum(land_from$(not sameas(land_from,land_to)), v11_lu_transitions(fpu2,land_from,land_to));

q11_landreduction(fpu2,land_from) ..
               v11_landreduction(fpu2,land_from) 
               =e=
               sum(land_to$(not sameas(land_from,land_to)), v11_lu_transitions(fpu2,land_from,land_to));

*' Small costs of 1 $ per ha on gross land-use change avoid unrealistic patterns in the land_class_agg transition matrix

q11_cost(fpu2) ..
                vm_cost_land_transition(fpu2) 
                =e=
                sum(land_class_agg, v11_landexpansion(fpu2,land_class_agg) + v11_landreduction(fpu2,land_class_agg)) * 1
                + 
                (v11_balance_positive(fpu2) + v11_balance_negative(fpu2)) 
                * 
                s11_cost_balance
                ;

q11_cost_reduction(fpu2, land_class_agg) ..
                v11_landreduction_cost(fpu2, land_class_agg)
                =e=
                v11_landreduction(fpu2, land_class_agg) * p11_conversion_cost(fpu2, land_class_agg)
                ;


*#################################################################
*  Crop
*#################################################################
positive variables
vm_crop_area(fpu, activity_crop, irr)   Agricultural production area (000 ha)
;

equations
q21_cropland_change(fpu)                Change in cropland (000 ha)
q21_cropland_area(fpu)                  Cropland allocation (000 ha)
;

* THANASIS: I assume agric land growth (5%) is a placeholder for now?
q21_cropland_change(fpu2) ..
                    vm_land(fpu2, "agric")
                    =e=
                    pcm_land(fpu2, "agric") * 1.05
                    ; 

* Ag land balance: sum of crop-speific area cannot exceed total ag land
q21_cropland_area(fpu2) ..
                    sum((activity_crop, irr_agr), 
                    vm_crop_area(fpu2, activity_crop, irr_agr))
                    =e=
                    vm_land(fpu2, "agric")
                    ;
                    


*#################################################################
*  Production
*#################################################################
positive variables
vm_crop_yield(fpu, activity_crop, irr)                      Crop production yield (tDM per ha)
vm_crop_production(fpu, activity_crop)                      Crop production area (000 tDM)
vm_commodity_production(iso, commodity)                    Commodity production (000 tDM)
vm_crop_production_cost(fpu, activity_crop)                 Crop production cost (000 USD)
vm_commodity_production_free(iso, commodity)               Commodity production from heaven free variable (000 tDM)
v31_production(fpu, activity_crop, commodity)               Commodity production from activities (000 tDM)
;

equations
q31_crop_production(fpu, activity_crop)                     Crop production (000 tDM)
q31_commodity_production(iso, commodity)                    commodity production (000 tDM)
q31_crop_production_cost(fpu, activity_crop)                Crop production cost (000 USD)
q31_production(fpu, activity_crop, commodity)              commodity production from activities (000 tDM)
;


* Total crop production costs
q31_crop_production_cost(fpu2, activity_crop) ..
                    vm_crop_production_cost(fpu2, activity_crop)
                    =e=
                    vm_crop_production(fpu2, activity_crop) * p31_crop_production_cost(fpu2, activity_crop) 
                    ;

* Total production per crop = area*yields
q31_crop_production(fpu2, activity_crop) ..
                    vm_crop_production(fpu2, activity_crop)
                    =e=
                    sum(irr_agr, 
                        vm_crop_yield(fpu2, activity_crop, irr_agr) 
                        * 
                        vm_crop_area(fpu2, activity_crop, irr_agr)
                        * 
                        f31_multicropping(fpu2, activity_crop, irr_agr)
                        )
                    ;

q31_production(fpu2, activity_crop, commodity)$(p31_iomat_fpu(fpu2, activity_crop, commodity)) ..
                    v31_production(fpu2, activity_crop, commodity)
                    =e=
                    vm_crop_production(fpu2, activity_crop)
                    / 
                    sum(fpu2iso3(iso, fpu2), f31_IO_combined(iso, activity_crop, commodity))
                    ;

q31_commodity_production(iso, commodity) ..
                                        vm_commodity_production(iso, commodity)
                                        =e=
                                        sum((activity2commodity(activity_crop, commodity), fpu2iso3(iso, fpu2)),
                                        v31_production(fpu2, activity_crop, commodity))
                                        ;
                                        



*#################################################################
*  Demand
*#################################################################
equations
q35_commodity_demand(iso, commodity)                    Commodity demand (000 tDM)
;

q35_commodity_demand(iso, commodity) ..
                                        sum((activity2commodity(activity_crop, commodity), fpu2iso3(iso, fpu2)),
                                        v31_production(fpu2, activity_crop, commodity))
                                        +
                                        vm_commodity_production_free(iso, commodity)
                                        =e=
                                        sum(ct, p35_commodity_demand_agriculture(ct, iso, commodity))
                                        ;


*#################################################################
*  Trade
*#################################################################
positive variables
v41_global_trade_pool(iso, commodity)   Global trade pool from exporting countries (000 tDM)
v41_trade_cost(iso, commodity)          Cost of trade to nearest city (000 USD)
v41_trade_supply(iso, commodity)        Global trade pool in self sufficiency pool (000 tDM)
;

equations
q41_trade_glo(commodity)                Global trade akin to commodity production (000 tDM)
q41_global_trade_pool(iso, commodity)   Global trade pool from exporting countries (000 tDM)
q41_trade_cost(iso, commodity)          Cost of trade to nearest city (000 USD)
q41_global_trade(iso, commodity)        Global trade to hypothetical global warehouse (000 tDM)
;

*' Ensuring that global supply is larger or equal to demand.
*' Production can be freely allocated globally.

q41_trade_glo(commodity)..
  sum(iso, vm_commodity_production(iso, commodity) + v41_trade_supply(iso, commodity))
  =g=
  sum((ct, iso), p35_commodity_demand_agriculture(ct, iso, commodity))
  ;

$ontext
q41_global_trade_pool(iso, commodity)$[sum(ct, f41_export_ratio(ct, iso, commodity)>0]..
    v41_global_trade_pool(iso, commodity)
    =e=
    vm_commodity_production(iso, commodity) * sum(ct, f41_export_ratio(ct, iso, commodity))
    ;

q41_global_trade(iso, commodity)$[sum(ct, f41_selfsuff(ct, iso, commodity)) < 1]..
    v41_trade_supply(iso, commodity)
    =e=
    v41_global_trade_pool(iso, commodity) * sum(ct, 1 - f41_selfsuff(ct, iso, commodity))
    ;

q41_trade_cost(iso, commodity)..
    v41_trade_cost(iso, commodity)
    =e=
    v41_trade_supply(iso, commodity) * sum(fpu2iso3(iso, fpu2), f41_city_time(fpu2,"median"))
    ;
$offtext

q41_global_trade_pool(iso, c_trade)$[sum(ct, f41_export_ratio(ct, iso, c_trade))>0]..
    v41_global_trade_pool(iso, c_trade)
    =e=
    vm_commodity_production(iso, c_trade) * sum(ct, f41_export_ratio(ct, iso, c_trade))
    ;

q41_global_trade(iso, c_trade)$[sum(ct, f41_selfsuff(ct, iso, c_trade)) < 1]..
    v41_trade_supply(iso, c_trade)
    =e=
    v41_global_trade_pool(iso, c_trade) * sum(ct, 1 - f41_selfsuff(ct, iso, c_trade))
    ;

$ontext
*' Excess production

q41_export_production(iso, c_trade)$[sum(ct, f41_selfsuff(ct, iso, c_trade)) > 1]..
    v41_export_production(iso, c_trade)
    =e=
    vm_commodity_production(iso, c_trade) * * sum(ct, f41_selfsuff(ct, iso, c_trade) - 1)
    ;
*' Trade demand

q41_import_demand(iso, c_trade)$[sum(ct, f41_selfsuff(ct, iso, c_trade)) < 1]..
    v41_import_demand(iso, c_trade)
    =e=
    vm_commodity_production(iso, c_trade) * * sum(ct, 1 - f41_selfsuff(ct, iso, c_trade))
    ;
$offtext

*' Trade cost

q41_trade_cost(iso, c_trade)..
    v41_trade_cost(iso, c_trade)
    =e=
    v41_trade_supply(iso, c_trade) * sum(fpu2iso3(iso, fpu2), f41_city_time(fpu2,"median"))
    ;
    


*#################################################################
*  Cost
*#################################################################
variables
vm_cost_glo         Global level LU cost (billion USD)
v89_cost_fpu(fpu)   Fpu level cost (000 USD)
v89_cost_iso(iso)   iso level cost (000 USD)
;

equations
q89_cost_glo                    Global level LU cost (000 USD)
q89_cost_fpu(fpu)               Fpu level cost (000 USD)
q89_cost_iso(iso)               iso level cost (000 USD)
;

q89_cost_glo ..
                    vm_cost_glo
                    =e=
                    sum(fpu2, v89_cost_fpu(fpu2)) / 1e6
                    +
                    sum(iso, v89_cost_iso(iso)) / 1e6
                    ;

q89_cost_fpu(fpu2) ..
                    v89_cost_fpu(fpu2)
                    =e=
                    vm_land_cost(fpu2)
                    +
                    vm_cost_land_transition(fpu2) 
                    +
                    sum(activity_crop, vm_crop_production_cost(fpu2, activity_crop))
                    ;

q89_cost_iso(iso) ..
                    v89_cost_iso(iso)
                    =e=
                    sum(commodity, vm_commodity_production_free(iso, commodity) * 1e5)
                    +
                    sum(commodity, v41_trade_cost(iso, commodity))
                    ;