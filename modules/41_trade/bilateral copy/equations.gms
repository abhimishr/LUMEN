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
  vm_commodity_production(fpu2, activity_crop, commodity))
  =g=
  sum((ct, iso), p35_commodity_demand_agriculture(ct, iso, commodity))
  ;

*' The global excess demand of each tradable good `v41_excess_demad` equals to
*' the sum over all the imports of importing regions.

 q41_excess_dem(commodity)..
                        v41_excess_dem(commodity)
                        =g=
                        sum(iso,
                            sum(ct, p35_commodity_demand_agriculture(ct, iso, commodity))
                            *
                            (1 - sum(ct, f41_selfsuff(ct, iso, commodity)))$(sum(ct, f41_selfsuff(ct, iso, commodity)) < 1))
                        ;

*' Distributing the global excess demand to exporting regions is based on regional export shares derived from FAO data.
*' Export shares are are 0 for importing regions.

q41_excess_production(iso, commodity)..
                                    v41_excess_prod(iso, commodity) 
                                    =e=
                                    v41_excess_dem(commodity)
                                    *
                                    sum(ct,f41_export_ratio(ct,iso,commodity));

*' Trade tariffs are associated with exporting regions. They are dependent on net exports and tariff levels.
q41_costs_tariffs(iso, commodity)..
                                    v41_cost_tariff_iso(iso, commodity) 
                                    =g=
                                    0;
*                                    sum(importer, 
*                                        sum(ct, p41_trade_tariff(ct, iso, importer, commodity)) 
*                                        * 
*                                        v41_trade(iso,importer,commodity));

*' Trade margins costs assigned currently to exporting region. Margins at region level 
q41_costs_margin(iso,commodity)..
                            v41_cost_margin_iso(iso,commodity) 
                            =g=
                            0;
*                           sum(importer, 
*                                   sum(ct, p41_trade_margin(ct, iso,importer,commodity))
*                                   * 
*                                   v41_trade(iso,importer,commodity));

*' Transportation costs

q41_cost_transport(iso,commodity) ..
                            vm_cost_tr_cities(iso,commodity) 
                            =g= 
                            0;
*                            sum((activity2commodity(activity_crop, commodity), fpu2iso3(iso, fpu2)),
*                            vm_commodity_production(fpu2, activity_crop, commodity)
*                            *
*                            f41_city_time(fpu2, "median"))
*                            * 
*                            f41_transport_costs(commodity);

q41_cost_transport_port(iso,commodity) ..
                            vm_cost_tr_ports(iso,commodity) 
                            =g= 
                            0;
*                            sum((activity2commodity(activity_crop, commodity), fpu2iso3(iso, fpu2)),
*                            vm_commodity_production(fpu2, activity_crop, commodity) 
*                            * 
*                            f41_port_time(fpu2,"median"))
*                            * 
*                            f41_transport_costs(commodity);

*' Country level transport costs are the sum of trade margin, tariff costs and transport cost
q41_cost_trade_iso(iso,commodity)..
                                vm_cost_trade_iso(iso,commodity) 
                                =g=
                                v41_cost_tariff_iso(iso,commodity) 
                                + 
                                v41_cost_margin_iso(iso,commodity)
                                +
                                vm_cost_tr_cities(iso,commodity)
                                ;
