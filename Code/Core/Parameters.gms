


*#################################################################
* SSP
*#################################################################
parameter
pm_pop(t_all, iso, hh)          Population by household (million)
pm_gdp(t_all, iso, hh)          GDP by household (billion USD)
;



*#################################################################
*  Land
*#################################################################
parameters
p10_luh_init(fpu, land_class_agg)   Land use initialization dataset (000 ha)
p10_land_cost(fpu, land_class_agg)  Cost of land use (USD per ha)
pcm_land(fpu, land_class_agg)        Land use from previous year (000 ha)
p10_land_glo(t, land_class_agg)     Global land pool (000 ha)
p10_land_total(t)                   Global land total (000 ha)
;



*#################################################################
*  Land conversion
*#################################################################
parameters  
p11_conversion_cost(fpu, land_class_agg)       Additional costs for lu transitions (USD per ha)
;
scalars
s11_cost_balance Artificial cost for balance variable (USD05MER per ha) / 1e+04 /
;



*#################################################################
*  Crop
*#################################################################
parameters
p21_crop_area_agg(fpu)                  Aggregated area for crops (000 ha)
p21_initial_crop(fpu, activity, irr)    Initial distribution of crop (1)
pm_crop_area(fpu, activity_crop, irr)   Agricultural production area from previous year (000 ha)
;



*#################################################################
*  Production
*#################################################################
scalar
s31_seed
;

parameters
p31_crop_production_cost(fpu, activity_crop)            Unit production cost for crops(USD per tDM)
p31_crop_yield(t, fpu, activity_crop, irr)              Time specific optimized crop yiels (tDM per ha)
p31_iomat(iso, commodity, activity_crop)                Dummy paraeter for testing (1)
p31_iomat_fpu(fpu, activity, commodity)                 Dummy par (1)
f31_jcratio(iso, activity, commodity)                 Activity commodity ratio (1)
f31_iomat(iso, commodity, activity)                   Input output matrix (1)
f31_IO_combined(iso, activity, commodity)  Combined Input output matrix (1)
f31_multicropping(fpu, activity, irr);

;





*#################################################################
*  Demand
*#################################################################
parameter
p35_commodity_demand(t_all, iso, commodity)                 Commodity demand (000 tDM)
p35_commodity_demand_agriculture(t_all, iso, commodity)     Commodity demand from agriculural commodities (000 tDM)
p35_demand_change(t_all, iso, commodity, hh)                Income change (000 USD)
;



*#################################################################
*  Trade
*#################################################################
parameters
i41_global_imports(t_all, commodity, reporter)       Global imports from FAO food balance (000 tDM)
i41_global_exports(t_all, commodity, reporter)       Global exports from FAO food balance (000 tDM)
f41_selfsuff(t_all, iso_all, commodity) "self suff ratio (1)"
f41_export_ratio(t_all, iso_all, commodity) Export ratio (1)
f41_city_time(fpu,statistical_id)  Estimated travel time in minutes to the nearest urban area in 2015 (minutes)
f41_port_time(fpu,statistical_id)  Estimated travel time in minutes to the nearest port in 2015 (minutes)
f41_export_qty(t_all,reporter, commodity, partner)  Export quantity (tonne)
f41_import_qty(t_all,reporter, commodity, partner)  Bilateral trade quantity (tonne)
f41_transport_costs(commodity)    Cost of Transportation (USD per tDM per min)


;

*#################################################################
*  Cost
*#################################################################
