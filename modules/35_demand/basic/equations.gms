*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

q35_commodity_demand(iso2, commodity) ..
                                        sum((activity2commodity(activity_crop, commodity), fpu2iso3(iso2, fpu2)),
                                        vm_production(fpu2, activity_crop, commodity))
                                        +
                                        vm_commodity_production_free(iso2, commodity)
                                        =e=
                                        sum(ct, pm_commodity_demand_agriculture(ct, iso2, commodity))
                                        ;
