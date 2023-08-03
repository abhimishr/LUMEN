*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0
*** |  you are granted additional permissions described in the License
*** |  Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

q31_crop_production(fpu2, activity_crop) ..
                    vm_crop_production(fpu2, activity_crop)
                    =e=
                    sum(irr, 
                        vm_crop_yield(fpu2, activity_crop, irr) 
                        * 
                        vm_crop_area(fpu2, activity_crop, irr)
                        * 
                        f31_multicropping(fpu2, activity_crop, irr)
                        )
                    ;

q31_commodity_production(fpu2, activity_crop, commodity)$(p31_iomat_fpu(fpu2, activity_crop, commodity)) ..
                    v31_commodity_production(fpu2, activity_crop, commodity)
                    =e=
                    vm_crop_production(fpu2, activity_crop)
                    / 
                    sum(fpu2iso3(iso, fpu2), f31_IO_combined(iso, activity_crop, commodity))
                    ;