*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

*########### Begin R section ###########
ov41_trade(t, iso,importer,commodity, "marginal")           = v41_trade.m(iso,importer,commodity);
ov41_cost_tariff_iso(t, iso, commodity, "marginal")         = v41_cost_tariff_iso.m(iso, commodity);
ov41_cost_margin_iso(t, iso, commodity, "marginal")         = v41_cost_margin_iso.m(iso, commodity);
ov41_excess_dem(t, commodity, "marginal")                   = v41_excess_dem.m(commodity);
ov41_excess_prod(t, iso, commodity, "marginal")             = v41_excess_prod.m(iso, commodity);
ov_cost_tr_cities(t, iso,commodity, "marginal")             = v41_cost_tr_cities.m(iso,commodity);
ov_cost_tr_ports(t, iso,commodity, "marginal")              = v41_cost_tr_ports.m(iso,commodity);
ov_cost_trade_iso(t, iso,commodity, "marginal")             = v41_cost_trade_iso.m(iso,commodity);
oq41_trade_glo(t, commodity, "marginal")                    = q41_trade_glo.m(commodity);
oq41_excess_dem(t, commodity, "marginal")                   = q41_excess_dem.m(commodity);
oq41_excess_production(t, iso, commodity, "marginal")       = q41_excess_production.m(iso, commodity);
oq41_costs_tariffs(t, iso, commodity, "marginal")           = q41_costs_tariffs.m(iso, commodity);
oq41_costs_margin(t, iso, commodity, "marginal")            = q41_costs_margin.m(iso, commodity);
oq41_cost_transport(t, iso,commodity, "marginal")           = q41_cost_transport.m(iso,commodity);
oq41_cost_transport_port(t, iso,commodity, "marginal")      = q41_cost_transport_port.m(iso,commodity);
oq41_cost_trade_iso(t, iso,commodity, "marginal")           = q41_cost_trade_iso.m(iso,commodity);
ov41_trade(t, iso,importer,commodity, "level")              = v41_trade.l(iso,importer,commodity);
ov41_cost_tariff_iso(t, iso, commodity, "level")            = v41_cost_tariff_iso.l(iso, commodity);
ov41_cost_margin_iso(t, iso, commodity, "level")            = v41_cost_margin_iso.l(iso, commodity);
ov41_excess_dem(t, commodity, "level")                      = v41_excess_dem.l(commodity);
ov41_excess_prod(t, iso, commodity, "level")                = v41_excess_prod.l(iso, commodity);
ov_cost_tr_cities(t, iso,commodity, "level")                = v41_cost_tr_cities.l(iso,commodity);
ov_cost_tr_ports(t, iso,commodity, "level")                 = v41_cost_tr_ports.l(iso,commodity);
ov_cost_trade_iso(t, iso,commodity, "level")                = v41_cost_trade_iso.l(iso,commodity);
oq41_trade_glo(t, commodity, "level")                       = q41_trade_glo.l(commodity);
oq41_excess_dem(t, commodity, "level")                      = q41_excess_dem.l(commodity);
oq41_excess_production(t, iso, commodity, "level")          = q41_excess_production.l(iso, commodity);
oq41_costs_tariffs(t, iso, commodity, "level")              = q41_costs_tariffs.l(iso, commodity);
oq41_costs_margin(t, iso, commodity, "level")               = q41_costs_margin.l(iso, commodity);
oq41_cost_transport(t, iso,commodity, "level")              = q41_cost_transport.l(iso,commodity);
oq41_cost_transport_port(t, iso,commodity, "level")         = q41_cost_transport_port.l(iso,commodity);
oq41_cost_trade_iso(t, iso,commodity, "level")              = q41_cost_trade_iso.l(iso,commodity);
ov41_trade(t, iso,importer,commodity, "upper")              = v41_trade.up(iso,importer,commodity);
ov41_cost_tariff_iso(t, iso, commodity, "upper")            = v41_cost_tariff_iso.up(iso, commodity);
ov41_cost_margin_iso(t, iso, commodity, "upper")            = v41_cost_margin_iso.up(iso, commodity);
ov41_excess_dem(t, commodity, "upper")                      = v41_excess_dem.up(commodity);
ov41_excess_prod(t, iso, commodity, "upper")                = v41_excess_prod.up(iso, commodity);
ov_cost_tr_cities(t, iso,commodity, "upper")                = v41_cost_tr_cities.up(iso,commodity);
ov_cost_tr_ports(t, iso,commodity, "upper")                 = v41_cost_tr_ports.up(iso,commodity);
ov_cost_trade_iso(t, iso,commodity, "upper")                = v41_cost_trade_iso.up(iso,commodity);
oq41_trade_glo(t, commodity, "upper")                       = q41_trade_glo.up(commodity);
oq41_excess_dem(t, commodity, "upper")                      = q41_excess_dem.up(commodity);
oq41_excess_production(t, iso, commodity, "upper")          = q41_excess_production.up(iso, commodity);
oq41_costs_tariffs(t, iso, commodity, "upper")              = q41_costs_tariffs.up(iso, commodity);
oq41_costs_margin(t, iso, commodity, "upper")               = q41_costs_margin.up(iso, commodity);
oq41_cost_transport(t, iso,commodity, "upper")              = q41_cost_transport.up(iso,commodity);
oq41_cost_transport_port(t, iso,commodity, "upper")         = q41_cost_transport_port.up(iso,commodity);
oq41_cost_trade_iso(t, iso,commodity, "upper")              = q41_cost_trade_iso.up(iso,commodity);
ov41_trade(t, iso,importer,commodity, "lower")              = v41_trade.lo(iso,importer,commodity);
ov41_cost_tariff_iso(t, iso, commodity, "lower")            = v41_cost_tariff_iso.lo(iso, commodity);
ov41_cost_margin_iso(t, iso, commodity, "lower")            = v41_cost_margin_iso.lo(iso, commodity);
ov41_excess_dem(t, commodity, "lower")                      = v41_excess_dem.lo(commodity);
ov41_excess_prod(t, iso, commodity, "lower")                = v41_excess_prod.lo(iso, commodity);
ov_cost_tr_cities(t, iso,commodity, "lower")                = v41_cost_tr_cities.lo(iso,commodity);
ov_cost_tr_ports(t, iso,commodity, "lower")                 = v41_cost_tr_ports.lo(iso,commodity);
ov_cost_trade_iso(t, iso,commodity, "lower")                = v41_cost_trade_iso.lo(iso,commodity);
oq41_trade_glo(t, commodity, "lower")                       = q41_trade_glo.lo(commodity);
oq41_excess_dem(t, commodity, "lower")                      = q41_excess_dem.lo(commodity);
oq41_excess_production(t, iso, commodity, "lower")          = q41_excess_production.lo(iso, commodity);
oq41_costs_tariffs(t, iso, commodity, "lower")              = q41_costs_tariffs.lo(iso, commodity);
oq41_costs_margin(t, iso, commodity, "lower")               = q41_costs_margin.lo(iso, commodity);
oq41_cost_transport(t, iso,commodity, "lower")              = q41_cost_transport.lo(iso,commodity);
oq41_cost_transport_port(t, iso,commodity, "lower")         = q41_cost_transport_port.lo(iso,commodity);
oq41_cost_trade_iso(t, iso,commodity, "lower")              = q41_cost_trade_iso.lo(iso,commodity);
;
*########### End R section   ###########
