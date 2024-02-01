*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

parameters  
p11_conversion_cost(fpu, land_class_agg)       Additional costs for lu transitions (USD per ha)
;

positive variables
v11_landexpansion(fpu, land_class_agg)               Land expansion (mio. ha)
v11_landreduction(fpu, land_class_agg)               Land reduction (mio. ha)
vm_cost_land_transition(fpu)                        Costs for lu transitions (mio. USD05MER per yr)
v11_lu_transitions(fpu, land_from,land_to)           Land transitions between time steps (mio. ha)
v11_balance_positive(fpu)                           Balance variable for land transitions (mio. ha)
v11_balance_negative(fpu)                           Balance variable for land transitions (mio. ha)
v11_landreduction_cost(fpu, land_class_agg)     Additional costs for lu transitions (000 USD per yr)
;

equations
q11_transition_matrix(fpu)                      Land transition constraint cell area (000 ha)
q11_transition_to(fpu,land_to)                  Land transition constraint to (000 ha)
q11_transition_from(fpu,land_from)              Land transition constraint from (000 ha)
q11_landexpansion(fpu,land_to)                  Land expansion constraint (000 ha)
q11_landreduction(fpu,land_from)                Land reduction constraint (000 ha)
q11_cost(fpu)                                   Costs for lu transitions (000 USD per yr)
q11_cost_reduction(fpu, land_class_agg)    Additional costs for lu transitions (000 USD per yr)
;

*########### Begin R section ###########
parameters
ov11_landexpansion(t, fpu, land_class_agg, type)              Land expansion (mio. ha)
ov11_landreduction(t, fpu, land_class_agg, type)              Land reduction (mio. ha)
ov_cost_land_transition(t, fpu, type)                       Costs for lu transitions (mio. USD05MER per yr)
ov11_lu_transitions(t, fpu, land_from,land_to, type)          Land transitions between time steps (mio. ha)
ov11_balance_positive(t, fpu, type)                          Balance variable for land transitions (mio. ha)
ov11_balance_negative(t, fpu, type)                          Balance variable for land transitions (mio. ha)
ov11_landreduction_cost(t, fpu, land_class_agg, type)    Additional costs for lu transitions (000 USD per yr)
oq11_transition_matrix(t, fpu, type)                     Land transition constraint cell area (000 ha)
oq11_transition_to(t, fpu,land_to, type)                 Land transition constraint to (000 ha)
oq11_transition_from(t, fpu,land_from, type)             Land transition constraint from (000 ha)
oq11_landexpansion(t, fpu,land_to, type)                 Land expansion constraint (000 ha)
oq11_landreduction(t, fpu,land_from, type)               Land reduction constraint (000 ha)
oq11_cost(t, fpu, type)                                  Costs for lu transitions (000 USD per yr)
oq11_cost_reduction(t, fpu, land_class_agg, type)   Additional costs for lu transitions (000 USD per yr)
;
*########### End R section   ###########
