*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

positive variables
v41_global_trade_pool(iso, commodity)   Global trade pool from exporting countries (000 tDM)
v41_trade_cost(iso, commodity)          Cost of trade to nearest city (000 USD)
v41_trade_supply(iso, commodity)        Global trade pool in self sufficiency pool (000 tDM)
;

equations
q41_trade_glo(commodity)                Global trade akin to commodity production (000 tDM)
q41_global_trade_pool(iso, commodity)   Global trade pool from exporting countries (000 tDM)
q41_trade_cost(iso, commodity)          Cost of trade to nearest city (000 USD)
q41_global_trade(iso, commodity)        Global trade to hypothetical global warehouse (000 tDM)
;
