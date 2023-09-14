*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

*########### Begin R section ###########
ov41_global_trade_pool(t, iso, commodity, "marginal")      = v41_global_trade_pool.m(iso, commodity);
ov41_trade_cost(t, iso, commodity, "marginal")             = v41_trade_cost.m(iso, commodity);
ov41_trade_supply(t, iso, commodity, "marginal")           = v41_trade_supply.m(iso, commodity);
oq41_trade_glo(t, commodity, "marginal")                   = q41_trade_glo.m(commodity);
oq41_global_trade_pool(t, iso, commodity, "marginal")      = q41_global_trade_pool.m(iso, commodity);
oq41_trade_cost(t, iso, commodity, "marginal")             = q41_trade_cost.m(iso, commodity);
oq41_global_trade(t, iso, commodity, "marginal")           = q41_global_trade.m(iso, commodity);
ov41_global_trade_pool(t, iso, commodity, "level")         = v41_global_trade_pool.l(iso, commodity);
ov41_trade_cost(t, iso, commodity, "level")                = v41_trade_cost.l(iso, commodity);
ov41_trade_supply(t, iso, commodity, "level")              = v41_trade_supply.l(iso, commodity);
oq41_trade_glo(t, commodity, "level")                      = q41_trade_glo.l(commodity);
oq41_global_trade_pool(t, iso, commodity, "level")         = q41_global_trade_pool.l(iso, commodity);
oq41_trade_cost(t, iso, commodity, "level")                = q41_trade_cost.l(iso, commodity);
oq41_global_trade(t, iso, commodity, "level")              = q41_global_trade.l(iso, commodity);
ov41_global_trade_pool(t, iso, commodity, "upper")         = v41_global_trade_pool.up(iso, commodity);
ov41_trade_cost(t, iso, commodity, "upper")                = v41_trade_cost.up(iso, commodity);
ov41_trade_supply(t, iso, commodity, "upper")              = v41_trade_supply.up(iso, commodity);
oq41_trade_glo(t, commodity, "upper")                      = q41_trade_glo.up(commodity);
oq41_global_trade_pool(t, iso, commodity, "upper")         = q41_global_trade_pool.up(iso, commodity);
oq41_trade_cost(t, iso, commodity, "upper")                = q41_trade_cost.up(iso, commodity);
oq41_global_trade(t, iso, commodity, "upper")              = q41_global_trade.up(iso, commodity);
ov41_global_trade_pool(t, iso, commodity, "lower")         = v41_global_trade_pool.lo(iso, commodity);
ov41_trade_cost(t, iso, commodity, "lower")                = v41_trade_cost.lo(iso, commodity);
ov41_trade_supply(t, iso, commodity, "lower")              = v41_trade_supply.lo(iso, commodity);
oq41_trade_glo(t, commodity, "lower")                      = q41_trade_glo.lo(commodity);
oq41_global_trade_pool(t, iso, commodity, "lower")         = q41_global_trade_pool.lo(iso, commodity);
oq41_trade_cost(t, iso, commodity, "lower")                = q41_trade_cost.lo(iso, commodity);
oq41_global_trade(t, iso, commodity, "lower")              = q41_global_trade.lo(iso, commodity);
;
*########### End R section   ###########
