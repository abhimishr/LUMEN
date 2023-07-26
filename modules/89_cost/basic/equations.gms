*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use model 
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  License Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

q89_cost_glo ..
                    vm_cost_glo
                    =e=
                    sum(fpu2, v89_cost_fpu(fpu2))
                    ;

q89_cost_fpu(fpu2) ..
                    v89_cost_fpu(fpu2)
                    =e=
                    v10_land_cost(fpu2)
                    ;
