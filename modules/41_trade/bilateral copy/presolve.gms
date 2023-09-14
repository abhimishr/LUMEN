*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

*loop(commodity, 
*    p41_trade_tariff(t_all, iso, importer, commodity)   = uniform(10,15);
*    p41_trade_margin(t_all, iso, importer, commodity)   = uniform(5,8);
*    f41_transport_costs(commodity)                      = uniform(0.01,0.1);
*);
    p41_trade_tariff(t_all, iso, importer, commodity)   = 1;
    p41_trade_margin(t_all, iso, importer, commodity)   = 2;
    f41_transport_costs(commodity)                      = 1;

*display p41_trade_tariff, p41_trade_margin;

v41_trade.fx(iso,importer,commodity) = 0;
