*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

*** |  (C) 2008-2023 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

*' @equations
*' In the comparative advantage pool, the active constraint ensures that superregional and thus global supply is larger or equal to demand.
*' This means that production can be freely allocated globally based on comparative advantages.

 q41_trade_glo(commodity)..
  sum((activity2commodity(activity_crop, commodity), fpu2),
  vm_commodity_production(fpu2, activity_crop, commodity))
  =g=
  sum((ct, iso), p35_commodity_demand_agriculture(ct, iso, commodity))
  ;

*' The global excess demand of each tradable good `v41_excess_demad` equals to
*' the sum over all the imports of importing regions.

 q41_excess_dem(iso, commodity)..
                        v41_excess_dem(iso, commodity) 
                        =g=
                        sum(iso, 
                            sum(ct, p35_commodity_demand_agriculture(ct, iso, commodity))
                            *
                            (1 - sum(ct, f41_selfsuff(ct, iso, commodity)))$(sum(ct, f41_selfsuff(ct, iso, commodity)) < 1)
                            )
                        ;

*' Distributing the global excess demand to exporting regions is based on regional export shares [@schmitz_trading_2012].
*' Export shares are derived from FAO data (see @schmitz_trading_2012 for details). They are 0 for importing regions.

 q41_excess_supply(iso, commodity)..
                                    v41_excess_prod(iso, commodity) 
                                    =e=
                                    v41_excess_dem(iso, commodity)
                                    *
                                    sum(ct,f41_exp_shr(ct,iso,commodity));

*' Trade tariffs are associated with exporting regions. They are dependent on net exports and tariff levels.
 q41_costs_tariffs(iso, commodity)..
                                    v41_cost_tariff_reg(iso, commodity) 
                                    =g=
                                    sum(i_im, 
                                        sum(ct, i41_trade_tariff(ct, iso, i_im, commodity)) 
                                        * 
                                        v41_trade(iso,i_im,commodity));