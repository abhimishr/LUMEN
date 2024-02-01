*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

q29_cropland_change(fpu2) ..
                    vm_land(fpu2, "agric")
                    =e=
                    pcm_land(fpu2, "agric") * 1.05
                    ; 

q29_cropland_area(fpu2) ..
                    sum((activity_crop, irr_agr), 
                    vm_crop_area(fpu2, activity_crop, irr_agr))
                    =e=
                    vm_land(fpu2, "agric")
                    ;
