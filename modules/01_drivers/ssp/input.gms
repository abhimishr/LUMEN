*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0
*** |  you are granted additional permissions described in the License
*** |  Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

parameter fm_gdp_household_base(iso, hh)                 base year household GDP (billion USD)
/
$ondelim
$include "./modules/01_drivers/input/gdp_household.cs4"
$offdelim
/
;

table fm_growth_gdp_household(t_all, iso, hh)       Growth in household GDP (percentage points)
$ondelim
$include "./modules/01_drivers/input/growth_gdp_household.cs3"
$offdelim
;

parameter fm_pop_household_base(iso, hh)                 Base year household population (million)
/
$ondelim
$include "./modules/01_drivers/input/pop_household.cs4"
$offdelim
/
;

table fm_growth_pop_household(t_all, iso, hh)       Growth in household ppopulation (percentage points)
$ondelim
$include "./modules/01_drivers/input/growth_pop_household.cs3"
$offdelim
;

* Some rounding
fm_gdp_household_base(iso, hh)               = round(fm_gdp_household_base(iso, hh)               , 3);
fm_growth_gdp_household(t_all, iso, hh) = round(fm_growth_gdp_household(t_all, iso, hh) , 3);
fm_pop_household_base(iso, hh)               = round(fm_pop_household_base(iso, hh)               , 3);
fm_growth_pop_household(t_all, iso, hh) = round(fm_growth_pop_household(t_all, iso, hh) , 3);
