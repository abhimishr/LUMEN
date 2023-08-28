*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

table f35_income_elasticity(t_all, iso, commodity, hh) Income elasticity for commodities (1)
$ondelim
$include "./modules/35_demand/input/demand_income_elasticity_hh.cs3"
$offdelim
;

parameter f35_base_demand(iso, commodity) Base year demand for commodities (000 tDM)
/
$ondelim
$include "./modules/35_demand/input/base_commodity_demand.cs4"
$offdelim
/
;

f35_income_elasticity(t_all, iso, commodity, hh) = round(f35_income_elasticity(t_all, iso, commodity, hh), 3);
f35_base_demand(iso, commodity) = round(f35_base_demand(iso, commodity), 3);