*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0
*** |  you are granted additional permissions described in the License
*** |  Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

q11_transition_matrix(fpu2) ..
                sum((land_from,land_to), v11_lu_transitions(fpu2,land_from,land_to))
                + 
                v11_balance_positive(fpu2) 
                - 
                v11_balance_negative(fpu2) 
                =e=
                sum(land_class_agg, pcm_land(fpu2,land_class_agg))
                ;

q11_transition_to(fpu2,land_to) ..
               sum(land_from, v11_lu_transitions(fpu2,land_from,land_to)) 
               =e=
               vm_land(fpu2,land_to)
               ;

q11_transition_from(fpu2,land_from) ..
               sum(land_to, v11_lu_transitions(fpu2,land_from,land_to)) 
               =e=
               pcm_land(fpu2,land_from)
               ;

q11_landexpansion(fpu2,land_to) ..
               v11_landexpansion(fpu2,land_to) 
               =e=
               sum(land_from$(not sameas(land_from,land_to)), v11_lu_transitions(fpu2,land_from,land_to));

q11_landreduction(fpu2,land_from) ..
               v11_landreduction(fpu2,land_from) 
               =e=
               sum(land_to$(not sameas(land_from,land_to)), v11_lu_transitions(fpu2,land_from,land_to));

*' Small costs of 1 $ per ha on gross land-use change avoid unrealistic patterns in the land_class_agg transition matrix

q11_cost(fpu2) ..
                vm_cost_land_transition(fpu2) 
                =e=
                sum(land_class_agg, v11_landexpansion(fpu2,land_class_agg) + v11_landreduction(fpu2,land_class_agg)) * 1
                + 
                (v11_balance_positive(fpu2) + v11_balance_negative(fpu2)) 
                * 
                s11_cost_balance
                ;

q11_cost_reduction(fpu2, land_class_agg) ..
                v11_landreduction_cost(fpu2, land_class_agg)
                =e=
                v11_landreduction(fpu2, land_class_agg) * p11_conversion_cost(fpu2, land_class_agg)
                ;
