*#################################################################
* SSP
*#################################################################
parameters
ov_land(t, fpu, land_class_agg, type)       Land use variable (000 ha)
ov_land_cost(t, fpu, type)                 Cost of land use (000 USD)
oq10_land(t, fpu, type)                      Equation for land use (000 ha)
oq10_land_cost(t, fpu, type)                 Cost of land use (USD per ha)
;



*#################################################################
*  Land
*#################################################################
parameters
ov_land(t, fpu, land_class_agg, type)       Land use variable (000 ha)
ov_land_cost(t, fpu, type)                 Cost of land use (000 USD)
oq10_land(t, fpu, type)                      Equation for land use (000 ha)
oq10_land_cost(t, fpu, type)                 Cost of land use (USD per ha)
;



*#################################################################
*  Land conversion
*#################################################################
parameters
ov11_landexpansion(t, fpu, land_class_agg, type)              Land expansion (mio. ha)
ov11_landreduction(t, fpu, land_class_agg, type)              Land reduction (mio. ha)
ov_cost_land_transition(t, fpu, type)                       Costs for lu transitions (mio. USD05MER per yr)
ov11_lu_transitions(t, fpu, land_from,land_to, type)          Land transitions between time steps (mio. ha)
ov11_balance_positive(t, fpu, type)                          Balance variable for land transitions (mio. ha)
ov11_balance_negative(t, fpu, type)                          Balance variable for land transitions (mio. ha)
ov11_landreduction_cost(t, fpu, land_class_agg, type)    Additional costs for lu transitions (000 USD per yr)
oq11_transition_matrix(t, fpu, type)                     Land transition constraint cell area (000 ha)
oq11_transition_to(t, fpu,land_to, type)                 Land transition constraint to (000 ha)
oq11_transition_from(t, fpu,land_from, type)             Land transition constraint from (000 ha)
oq11_landexpansion(t, fpu,land_to, type)                 Land expansion constraint (000 ha)
oq11_landreduction(t, fpu,land_from, type)               Land reduction constraint (000 ha)
oq11_cost(t, fpu, type)                                  Costs for lu transitions (000 USD per yr)
oq11_cost_reduction(t, fpu, land_class_agg, type)   Additional costs for lu transitions (000 USD per yr)
;



*#################################################################
*  Crop
*#################################################################
parameters
ov_crop_area(t, fpu, activity_crop, irr, type)  Agricultural production area (000 ha)
oq21_cropland_change(t, fpu, type)               Change in cropland (000 ha)
oq21_cropland_area(t, fpu, type)                 Cropland allocation (000 ha)
;



*#################################################################
*  Production
*#################################################################
parameters
ov_crop_yield(t, fpu, activity_crop, irr, type)                     Crop production yield (tDM per ha)
ov_crop_production(t, fpu, activity_crop, type)                     Crop production area (000 tDM)
ov_commodity_production(t, iso, commodity, type)                   Commodity production (000 tDM)
ov_crop_production_cost(t, fpu, activity_crop, type)                Crop production cost (000 USD)
ov_commodity_production_free(t, iso, commodity, type)              Commodity production from heaven free variable (000 tDM)
ov31_production(t, fpu, activity_crop, commodity, type)              Commodity production from activities (000 tDM)
oq31_crop_production(t, fpu, activity_crop, type)                    Crop production (000 tDM)
oq31_commodity_production(t, iso, commodity, type)                   commodity production (000 tDM)
oq31_crop_production_cost(t, fpu, activity_crop, type)               Crop production cost (000 USD)
oq31_production(t, fpu, activity_crop, commodity, type)             commodity production from activities (000 tDM)
;


*#################################################################
*  Demand
*#################################################################
parameters
oq35_commodity_demand(t, iso, commodity, type)                   Commodity demand (000 tDM)
;


*#################################################################
*  Trade
*#################################################################
parameters
ov41_global_trade_pool(t, iso, commodity, type)  Global trade pool from exporting countries (000 tDM)
ov41_trade_cost(t, iso, commodity, type)         Cost of trade to nearest city (000 USD)
ov41_trade_supply(t, iso, commodity, type)       Global trade pool in self sufficiency pool (000 tDM)
oq41_trade_glo(t, commodity, type)               Global trade akin to commodity production (000 tDM)
oq41_global_trade_pool(t, iso, commodity, type)  Global trade pool from exporting countries (000 tDM)
oq41_trade_cost(t, iso, commodity, type)         Cost of trade to nearest city (000 USD)
oq41_global_trade(t, iso, commodity, type)       Global trade to hypothetical global warehouse (000 tDM)
;



*#################################################################
*  Cost
*#################################################################
parameters
ov_cost_glo(t, type)        Global level LU cost (billion USD)
ov89_cost_fpu(t, fpu, type)  Fpu level cost (000 USD)
ov89_cost_iso(t, iso, type)  iso level cost (000 USD)
oq89_cost_glo(t, type)                   Global level LU cost (000 USD)
oq89_cost_fpu(t, fpu, type)              Fpu level cost (000 USD)
oq89_cost_iso(t, iso, type)              iso level cost (000 USD)
;