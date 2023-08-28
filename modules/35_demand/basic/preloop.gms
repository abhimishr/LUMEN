*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

p35_demand_change(t_all, iso, commodity, hh) = f35_base_demand(iso, commodity)
                                                * 
                                                (1 + fm_growth_gdp_household(t_all, iso, hh))**f35_income_elasticity(t_all, iso, commodity, hh) 
                                                * 
                                                (fm_growth_pop_household(t_all, iso, hh));

*' Initialize for 2005 values
p35_commodity_demand("2005", iso, commodity) = f35_base_demand(iso, commodity);

loop(t_all$(t_all.val > 2005 and t_all.val <= 2050),
    p35_commodity_demand(t_all, iso, commodity) =       p35_commodity_demand(t_all - 1, iso, commodity) 
                                                        +
                                                        sum(hh, p35_demand_change(t_all, iso, commodity, hh))/card(hh)
                                                        ;
); 

p35_commodity_demand_agriculture(t_all, iso, commodity)$(sum(activity_crop, f31_IO_combined(iso, activity_crop, commodity))) = p35_commodity_demand(t_all, iso, commodity);
