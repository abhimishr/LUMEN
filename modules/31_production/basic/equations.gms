*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0
*** |  you are granted additional permissions described in the License
*** |  Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

q31_crop_production(fpu2, activity_crop) ..
                    vm_crop_production(fpu2, activity_crop)
                    =e=
                    sum(irr, vm_crop_yield(fpu2, activity_crop, irr) 
                                * vm_crop_area(fpu2, activity_crop, irr))
                    ;

q31_crop_production_cost(fpu2) ..
                    vm_crop_production_cost(fpu2)
                    =e=
                    sum(activity_crop,
                                vm_crop_production(fpu2, activity_crop)
                                *
                                p31_crop_production_cost(fpu2, activity_crop)
                    )
                    ;

q31_crop_yield_update(fpu2, activity_crop, irr) ..
                    vm_crop_yield(fpu2, activity_crop, irr) 
                    =g=
                    fm_crop_yield(fpu2, activity_crop, irr) 
                    ;