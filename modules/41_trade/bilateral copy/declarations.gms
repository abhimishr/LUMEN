*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

parameters
p41_trade_tariff(t_all, iso, importer, commodity)   Trade tariffs (USD per tDM)
p41_trade_margin(t_all, iso, importer, commodity)   Trade margins (USD per tDM)
;

variables
v41_trade(iso,importer,commodity)       Trade correspoinding to importers (000 tDM)
v41_cost_tariff_iso(iso, commodity)     Cost of trade tariff for importer (000 USD)
v41_cost_margin_iso(iso, commodity)     Cost of trade margin for importer (000 USD)
;

positive variables
v41_excess_dem(commodity)               Global Excess demand based on self sufficiency (000 tDM)
v41_excess_prod(iso, commodity)         Country level Excess production needed (000 tDM)
v41_cost_tr_cities(iso,commodity)        Cost of transportation to nearest city (000 USD)
v41_cost_tr_ports(iso,commodity)         Cost of transportation to nearest port (000 USD)
v41_cost_trade_iso(iso,commodity)        Overall cost of trade (000 USD)
;

equations
q41_trade_glo(commodity)                Global trade akin to commodity production (000 tDM)
q41_excess_dem(commodity)                   Global Excess demand based on self sufficiency (000 tDM)
q41_excess_production(iso, commodity)       Country level Excess production needed (000 tDM)
q41_costs_tariffs(iso, commodity)           Cost of trade tariff for importer (000 USD)
q41_costs_margin(iso, commodity)            Cost of trade margin for importer (000 USD)
q41_cost_transport(iso,commodity)           Cost of transportation to nearest city (000 USD)
q41_cost_transport_port(iso,commodity)      Cost of transportation to nearest port (000 USD)
q41_cost_trade_iso(iso,commodity)           Overall cost of trade (000 USD)
;

*########### Begin R section ###########
parameters
ov41_trade(t, iso,importer,commodity, type)      Trade correspoinding to importers (000 tDM)
ov41_cost_tariff_iso(t, iso, commodity, type)    Cost of trade tariff for importer (000 USD)
ov41_cost_margin_iso(t, iso, commodity, type)    Cost of trade margin for importer (000 USD)
ov41_excess_dem(t, commodity, type)              Global Excess demand based on self sufficiency (000 tDM)
ov41_excess_prod(t, iso, commodity, type)        Country level Excess production needed (000 tDM)
ov_cost_tr_cities(t, iso,commodity, type)       Cost of transportation to nearest city (000 USD)
ov_cost_tr_ports(t, iso,commodity, type)        Cost of transportation to nearest port (000 USD)
ov_cost_trade_iso(t, iso,commodity, type)       Overall cost of trade (000 USD)
oq41_trade_glo(t, commodity, type)               Global trade akin to commodity production (000 tDM)
oq41_excess_dem(t, commodity, type)                  Global Excess demand based on self sufficiency (000 tDM)
oq41_excess_production(t, iso, commodity, type)      Country level Excess production needed (000 tDM)
oq41_costs_tariffs(t, iso, commodity, type)          Cost of trade tariff for importer (000 USD)
oq41_costs_margin(t, iso, commodity, type)           Cost of trade margin for importer (000 USD)
oq41_cost_transport(t, iso,commodity, type)          Cost of transportation to nearest city (000 USD)
oq41_cost_transport_port(t, iso,commodity, type)     Cost of transportation to nearest port (000 USD)
oq41_cost_trade_iso(t, iso,commodity, type)          Overall cost of trade (000 USD)
;
*########### End R section   ###########
