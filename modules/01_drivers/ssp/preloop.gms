*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

loop(t_all,
    p01_pop("2005", iso, hh) = f01_pop_household_base(iso, hh);
    p01_pop(t_all+1, iso, hh)$(ord(t_all) < card(t_all)) = p01_pop(t_all, iso, hh) * (fm_growth_pop_household(t_all+1, iso, hh) + 1);

    p01_gdp("2005", iso, hh) = f01_gdp_household_base(iso, hh);
    p01_gdp(t_all+1, iso, hh)$(ord(t_all) < card(t_all)) = p01_gdp(t_all, iso, hh) * (fm_growth_gdp_household(t_all+1, iso, hh) + 1);
);
