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
  sum(iso2, vm_commodity_production(iso2, commodity) + v41_trade_supply(iso2, commodity))
  =g=
  sum((ct, iso2), pm_commodity_demand_agriculture(ct, iso2, commodity))
  ;

$ontext
q41_global_trade_pool(iso2, commodity)$[sum(ct, f41_export_ratio(ct, iso2, commodity)>0]..
    v41_global_trade_pool(iso2, commodity)
    =e=
    vm_commodity_production(iso2, commodity) * sum(ct, f41_export_ratio(ct, iso2, commodity))
    ;

q41_global_trade(iso2, commodity)$[sum(ct, f41_selfsuff(ct, iso2, commodity)) < 1]..
    v41_trade_supply(iso2, commodity)
    =e=
    v41_global_trade_pool(iso2, commodity) * sum(ct, 1 - f41_selfsuff(ct, iso2, commodity))
    ;

q41_trade_cost(iso2, commodity)..
    vm_trade_cost(iso2, commodity)
    =e=
    v41_trade_supply(iso2, commodity) * sum(fpu2iso3(iso2, fpu2), f41_city_time(fpu2,"median"))
    ;
$offtext

q41_global_trade_pool(iso2, c_trade)$[sum(ct, f41_export_ratio(ct, iso2, c_trade))>0]..
    v41_global_trade_pool(iso2, c_trade)
    =e=
    vm_commodity_production(iso2, c_trade) * sum(ct, f41_export_ratio(ct, iso2, c_trade))
    ;

q41_global_trade(iso2, c_trade)$[sum(ct, f41_selfsuff(ct, iso2, c_trade)) < 1]..
    v41_trade_supply(iso2, c_trade)
    =e=
    v41_global_trade_pool(iso2, c_trade) * sum(ct, 1 - f41_selfsuff(ct, iso2, c_trade))
    ;

$ontext
*' Excess production

q41_export_production(iso2, c_trade)$[sum(ct, f41_selfsuff(ct, iso2, c_trade)) > 1]..
    v41_export_production(iso2, c_trade)
    =e=
    vm_commodity_production(iso2, c_trade) * * sum(ct, f41_selfsuff(ct, iso2, c_trade) - 1)
    ;
*' Trade demand

q41_import_demand(iso2, c_trade)$[sum(ct, f41_selfsuff(ct, iso2, c_trade)) < 1]..
    v41_import_demand(iso2, c_trade)
    =e=
    vm_commodity_production(iso2, c_trade) * * sum(ct, 1 - f41_selfsuff(ct, iso2, c_trade))
    ;
$offtext

*' Trade cost

q41_trade_cost(iso2, c_trade)..
    vm_trade_cost(iso2, c_trade)
    =e=
    v41_trade_supply(iso2, c_trade) * sum(fpu2iso3(iso2, fpu2), f41_city_time(fpu2,"median"))
    ;
