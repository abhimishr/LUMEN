*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

*########### Begin R section ###########
oq35_commodity_demand(t, iso, commodity, "marginal")      = q35_commodity_demand.m(iso, commodity);
oq35_commodity_demand(t, iso, commodity, "level")         = q35_commodity_demand.l(iso, commodity);
oq35_commodity_demand(t, iso, commodity, "upper")         = q35_commodity_demand.up(iso, commodity);
oq35_commodity_demand(t, iso, commodity, "lower")         = q35_commodity_demand.lo(iso, commodity);
;
*########### End R section   ###########
