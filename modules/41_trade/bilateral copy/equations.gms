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
  sum((activity2commodity(activity_crop, commodity), fpu2),
  vm_production(fpu2, activity_crop, commodity))
  =g=
  sum((ct, iso2), pm_commodity_demand_agriculture(ct, iso2, commodity))
  ;

*' The global excess demand of each tradable good `v41_excess_demad` equals to
*' the sum over all the imports of importing regions.

 q41_excess_dem(commodity)..
                        v41_excess_dem(commodity)
                        =g=
                        sum(iso2,
                            sum(ct, pm_commodity_demand_agriculture(ct, iso2, commodity))
                            *
                            (1 - sum(ct, f41_selfsuff(ct, iso2, commodity)))$(sum(ct, f41_selfsuff(ct, iso2, commodity)) < 1))
                        ;

*' Distributing the global excess demand to exporting regions is based on regional export shares derived from FAO data.
*' Export shares are are 0 for importing regions.

q41_excess_production(iso2, commodity)..
                                    v41_excess_prod(iso2, commodity) 
                                    =e=
                                    v41_excess_dem(commodity)
                                    *
                                    sum(ct,f41_export_ratio(ct,iso2,commodity));

*' Trade tariffs are associated with exporting regions. They are dependent on net exports and tariff levels.
q41_costs_tariffs(iso2, commodity)..
                                    v41_cost_tariff_iso(iso2, commodity) 
                                    =g=
                                    0;
*                                    sum(importer, 
*                                        sum(ct, p41_trade_tariff(ct, iso2, importer, commodity)) 
*                                        * 
*                                        v41_trade(iso2,importer,commodity));

*' Trade margins costs assigned currently to exporting region. Margins at region level 
q41_costs_margin(iso2,commodity)..
                            v41_cost_margin_iso(iso2,commodity) 
                            =g=
                            0;
*                           sum(importer, 
*                                   sum(ct, p41_trade_margin(ct, iso2,importer,commodity))
*                                   * 
*                                   v41_trade(iso2,importer,commodity));

*' Transportation costs

q41_cost_transport(iso2,commodity) ..
                            v41_cost_tr_cities(iso2,commodity) 
                            =g= 
                            0;
*                            sum((activity2commodity(activity_crop, commodity), fpu2iso3(iso2, fpu2)),
*                            vm_production(fpu2, activity_crop, commodity)
*                            *
*                            f41_city_time(fpu2, "median"))
*                            * 
*                            f41_transport_costs(commodity);

q41_cost_transport_port(iso2,commodity) ..
                            v41_cost_tr_ports(iso2,commodity) 
                            =g= 
                            0;
*                            sum((activity2commodity(activity_crop, commodity), fpu2iso3(iso2, fpu2)),
*                            vm_production(fpu2, activity_crop, commodity) 
*                            * 
*                            f41_port_time(fpu2,"median"))
*                            * 
*                            f41_transport_costs(commodity);

*' Country level transport costs are the sum of trade margin, tariff costs and transport cost
q41_cost_trade_iso(iso2,commodity)..
                                v41_cost_trade_iso(iso2,commodity) 
                                =g=
                                v41_cost_tariff_iso(iso2,commodity) 
                                + 
                                v41_cost_margin_iso(iso2,commodity)
                                +
                                v41_cost_tr_cities(iso2,commodity)
                                ;
