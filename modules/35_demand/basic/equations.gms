*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

q35_commodity_demand(iso, commodity) ..
                                        sum((activity2commodity(activity_crop, commodity), fpu2iso3(iso, fpu2)),
                                        v31_production(fpu2, activity_crop, commodity))
                                        +
                                        vm_commodity_production_free(iso, commodity)
                                        =e=
                                        sum(ct, p35_commodity_demand_agriculture(ct, iso, commodity))
                                        ;
