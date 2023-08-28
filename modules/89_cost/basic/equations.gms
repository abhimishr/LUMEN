*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

q89_cost_glo ..
                    vm_cost_glo
                    =e=
                    sum(fpu2, v89_cost_fpu(fpu2)) / 1e6
                    ;

q89_cost_fpu(fpu2) ..
                    v89_cost_fpu(fpu2)
                    =e=
                    vm_land_cost(fpu2)
                    +
                    vm_cost_land_transition(fpu2) 
                    +
                    sum(activity_crop, vm_crop_production_cost(fpu2, activity_crop))
                    +
                    sum((fpu2iso3(iso,fpu2), commodity), v31_commodity_production_free(iso, commodity) * 1e5)
                    ;
