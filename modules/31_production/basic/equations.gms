*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

q31_crop_production_cost(fpu2, activity_crop) ..
                    vm_crop_production_cost(fpu2, activity_crop)
                    =e=
                    vm_crop_production(fpu2, activity_crop) * p31_crop_production_cost(fpu2, activity_crop) 
                    ;

q31_crop_production(fpu2, activity_crop) ..
                    vm_crop_production(fpu2, activity_crop)
                    =e=
                    sum(irr_agr, 
                        vm_crop_yield(fpu2, activity_crop, irr_agr) 
                        * 
                        vm_crop_area(fpu2, activity_crop, irr_agr)
                        * 
                        f31_multicropping(fpu2, activity_crop, irr_agr)
                        )
                    ;

q31_production(fpu2, activity_crop, commodity)$(p31_iomat_fpu(fpu2, activity_crop, commodity)) ..
                    v31_production(fpu2, activity_crop, commodity)
                    =e=
                    vm_crop_production(fpu2, activity_crop)
                    / 
                    sum(fpu2iso3(iso, fpu2), f31_IO_combined(iso, activity_crop, commodity))
                    ;

q31_commodity_production(iso, commodity) ..
                                        vm_commodity_production(iso, commodity)
                                        =e=
                                        sum((activity2commodity(activity_crop, commodity), fpu2iso3(iso, fpu2)),
                                        v31_production(fpu2, activity_crop, commodity))
                                        ;
