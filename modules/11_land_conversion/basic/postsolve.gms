*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0
*** |  you are granted additional permissions described in the License
*** |  Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

*########### Begin R section ###########
ov11_landexpansion(t, fpu, land_class_agg, "marginal")           = v11_landexpansion.m(fpu, land_class_agg);
ov11_landreduction(t, fpu, land_class_agg, "marginal")           = v11_landreduction.m(fpu, land_class_agg);
ov_cost_land_transition(t, fpu, "marginal")                      = vm_cost_land_transition.m(fpu);
ov11_lu_transitions(t, fpu, land_from,land_to, "marginal")       = v11_lu_transitions.m(fpu, land_from,land_to);
ov11_balance_positive(t, fpu, "marginal")                        = v11_balance_positive.m(fpu);
ov11_balance_negative(t, fpu, "marginal")                        = v11_balance_negative.m(fpu);
ov11_landreduction_cost(t, fpu, land_class_agg, "marginal")      = v11_landreduction_cost.m(fpu, land_class_agg);
oq11_transition_matrix(t, fpu, "marginal")                       = q11_transition_matrix.m(fpu);
oq11_transition_to(t, fpu,land_to, "marginal")                   = q11_transition_to.m(fpu,land_to);
oq11_transition_from(t, fpu,land_from, "marginal")               = q11_transition_from.m(fpu,land_from);
oq11_landexpansion(t, fpu,land_to, "marginal")                   = q11_landexpansion.m(fpu,land_to);
oq11_landreduction(t, fpu,land_from, "marginal")                 = q11_landreduction.m(fpu,land_from);
oq11_cost(t, fpu, "marginal")                                    = q11_cost.m(fpu);
oq11_cost_reduction(t, fpu, land_class_agg, "marginal")          = q11_cost_reduction.m(fpu, land_class_agg);
ov11_landexpansion(t, fpu, land_class_agg, "level")              = v11_landexpansion.l(fpu, land_class_agg);
ov11_landreduction(t, fpu, land_class_agg, "level")              = v11_landreduction.l(fpu, land_class_agg);
ov_cost_land_transition(t, fpu, "level")                         = vm_cost_land_transition.l(fpu);
ov11_lu_transitions(t, fpu, land_from,land_to, "level")          = v11_lu_transitions.l(fpu, land_from,land_to);
ov11_balance_positive(t, fpu, "level")                           = v11_balance_positive.l(fpu);
ov11_balance_negative(t, fpu, "level")                           = v11_balance_negative.l(fpu);
ov11_landreduction_cost(t, fpu, land_class_agg, "level")         = v11_landreduction_cost.l(fpu, land_class_agg);
oq11_transition_matrix(t, fpu, "level")                          = q11_transition_matrix.l(fpu);
oq11_transition_to(t, fpu,land_to, "level")                      = q11_transition_to.l(fpu,land_to);
oq11_transition_from(t, fpu,land_from, "level")                  = q11_transition_from.l(fpu,land_from);
oq11_landexpansion(t, fpu,land_to, "level")                      = q11_landexpansion.l(fpu,land_to);
oq11_landreduction(t, fpu,land_from, "level")                    = q11_landreduction.l(fpu,land_from);
oq11_cost(t, fpu, "level")                                       = q11_cost.l(fpu);
oq11_cost_reduction(t, fpu, land_class_agg, "level")             = q11_cost_reduction.l(fpu, land_class_agg);
ov11_landexpansion(t, fpu, land_class_agg, "upper")              = v11_landexpansion.up(fpu, land_class_agg);
ov11_landreduction(t, fpu, land_class_agg, "upper")              = v11_landreduction.up(fpu, land_class_agg);
ov_cost_land_transition(t, fpu, "upper")                         = vm_cost_land_transition.up(fpu);
ov11_lu_transitions(t, fpu, land_from,land_to, "upper")          = v11_lu_transitions.up(fpu, land_from,land_to);
ov11_balance_positive(t, fpu, "upper")                           = v11_balance_positive.up(fpu);
ov11_balance_negative(t, fpu, "upper")                           = v11_balance_negative.up(fpu);
ov11_landreduction_cost(t, fpu, land_class_agg, "upper")         = v11_landreduction_cost.up(fpu, land_class_agg);
oq11_transition_matrix(t, fpu, "upper")                          = q11_transition_matrix.up(fpu);
oq11_transition_to(t, fpu,land_to, "upper")                      = q11_transition_to.up(fpu,land_to);
oq11_transition_from(t, fpu,land_from, "upper")                  = q11_transition_from.up(fpu,land_from);
oq11_landexpansion(t, fpu,land_to, "upper")                      = q11_landexpansion.up(fpu,land_to);
oq11_landreduction(t, fpu,land_from, "upper")                    = q11_landreduction.up(fpu,land_from);
oq11_cost(t, fpu, "upper")                                       = q11_cost.up(fpu);
oq11_cost_reduction(t, fpu, land_class_agg, "upper")             = q11_cost_reduction.up(fpu, land_class_agg);
ov11_landexpansion(t, fpu, land_class_agg, "lower")              = v11_landexpansion.lo(fpu, land_class_agg);
ov11_landreduction(t, fpu, land_class_agg, "lower")              = v11_landreduction.lo(fpu, land_class_agg);
ov_cost_land_transition(t, fpu, "lower")                         = vm_cost_land_transition.lo(fpu);
ov11_lu_transitions(t, fpu, land_from,land_to, "lower")          = v11_lu_transitions.lo(fpu, land_from,land_to);
ov11_balance_positive(t, fpu, "lower")                           = v11_balance_positive.lo(fpu);
ov11_balance_negative(t, fpu, "lower")                           = v11_balance_negative.lo(fpu);
ov11_landreduction_cost(t, fpu, land_class_agg, "lower")         = v11_landreduction_cost.lo(fpu, land_class_agg);
oq11_transition_matrix(t, fpu, "lower")                          = q11_transition_matrix.lo(fpu);
oq11_transition_to(t, fpu,land_to, "lower")                      = q11_transition_to.lo(fpu,land_to);
oq11_transition_from(t, fpu,land_from, "lower")                  = q11_transition_from.lo(fpu,land_from);
oq11_landexpansion(t, fpu,land_to, "lower")                      = q11_landexpansion.lo(fpu,land_to);
oq11_landreduction(t, fpu,land_from, "lower")                    = q11_landreduction.lo(fpu,land_from);
oq11_cost(t, fpu, "lower")                                       = q11_cost.lo(fpu);
oq11_cost_reduction(t, fpu, land_class_agg, "lower")             = q11_cost_reduction.lo(fpu, land_class_agg);
;
*########### End R section   ###########
