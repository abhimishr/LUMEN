*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

parameter
p35_commodity_demand(t_all, iso, commodity)                 Commodity demand (000 tDM)
p35_commodity_demand_agriculture(t_all, iso, commodity)     Commodity demand from agriculural commodities (000 tDM)
p35_demand_change(t_all, iso, commodity, hh)                Income change (000 USD)
;

equations
q35_commodity_demand(iso, commodity)                    Commodity demand (000 tDM)
;

*########### Begin R section ###########
parameters
oq35_commodity_demand(t, iso, commodity, type)                   Commodity demand (000 tDM)
;
*########### End R section   ###########
