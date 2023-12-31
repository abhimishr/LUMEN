*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

q10_land(fpu2) ..
                sum(land_class_agg, vm_land(fpu2, land_class_agg))
                =e=
                sum(land_class_agg, p10_luh_init(fpu2, land_class_agg))
                ;

q10_land_cost(fpu2) ..
                vm_land_cost(fpu2)
                =e=
                sum(land_class_agg, vm_land(fpu2, land_class_agg) * p10_land_cost(fpu2, land_class_agg))
                ;
