*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0
*** |  you are granted additional permissions described in the License
*** |  Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

q21_cropland(fpu2) ..
                    sum((activity_crop,irr), vm_area(fpu2,activity_crop,irr)) 
                    =e= 
                    vm_land(fpu2,"agric")
                    ;

q21_cropland_change(fpu2) ..
                    vm_land(fpu2, "agric")
                    =e=
                    pcm_land(fpu2, "agric") * 1.05
                    ; 
