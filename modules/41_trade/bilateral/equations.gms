*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

*' Ensuring that global supply is larger or equal to demand.
*' Production can be freely allocated globally.

 q41_trade_glo(commodity)..
  sum(iso, vm_commodity_production(iso, commodity) + v41_trade_supply(iso, commodity))
  =g=
  sum((ct, iso), p35_commodity_demand_agriculture(ct, iso, commodity))
  ;

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
