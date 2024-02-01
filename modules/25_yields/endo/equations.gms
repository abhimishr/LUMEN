*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

q25_yield_crop(fpu2, activity_crop, irr_agr)..
                                        vm_crop_yield(fpu2, activity_crop, irr_agr)
                                        =e=
                                        p25_yields_lag(fpu2, activity_crop, irr_agr)
                                        *
                                        v25_productivity_growth(fpu2, activity_crop, irr_agr)
                                        ;

q25_intensification_cost(fpu2, activity_crop, irr_agr)..
                                        vm_intensification_cost(fpu2, activity_crop, irr_agr)
                                        =e=
                                        v25_productivity_growth(fpu2, activity_crop, irr_agr)
                                        *
                                        p25_intensification_cost(fpu2, activity_crop, irr_agr)
                                        ;
