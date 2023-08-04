*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0
*** |  you are granted additional permissions described in the License
*** |  Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

loop(t_all,
    pm_pop("2005", iso, hh) = fm_pop_household_base(iso, hh);
    pm_pop(t_all+1, iso, hh)$(ord(t_all) < card(t_all)) = pm_pop(t_all, iso, hh) * (fm_growth_pop_household(t_all+1, iso, hh) + 1);

    pm_gdp("2005", iso, hh) = fm_gdp_household_base(iso, hh);
    pm_gdp(t_all+1, iso, hh)$(ord(t_all) < card(t_all)) = pm_gdp(t_all, iso, hh) * (fm_growth_gdp_household(t_all+1, iso, hh) + 1);
);
