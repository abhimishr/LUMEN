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
  sum((fpu2, activity_crop), vm_commodity_production(fpu2, activity_crop, commodity))
  =g=
  sum((ct, iso), p35_commodity_demand_agriculture(ct, iso, commodity))
  ;
