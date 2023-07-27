* Initialize land use pool
p10_luh_init(fpu, land_class_agg) = sum(land_agg_map(land_class_agg,land_class), luh_init(fpu, land_class));

* Initialize cost of 
p10_land_cost(fpu, land_class_agg) = 10;

pm_land(fpu, land_class_agg) = p10_luh_init(fpu, land_class_agg);
