*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

*** Land Patterns are transferred to next timestep
pcm_land(fpu, land_class_agg)   = vm_land.l(fpu, land_class_agg);
p10_land_glo(t, land_class_agg) = sum(fpu, pcm_land(fpu, land_class_agg)) ;
p10_land_total(t)               = sum(land_class_agg, p10_land_glo(t, land_class_agg));

*########### Begin R section ###########
ov_land(t, fpu, land_class_agg, "marginal")      = vm_land.m(fpu, land_class_agg);
ov_land_cost(t, fpu, "marginal")                 = vm_land_cost.m(fpu);
oq10_land(t, fpu, "marginal")                    = q10_land.m(fpu);
oq10_land_cost(t, fpu, "marginal")               = q10_land_cost.m(fpu);
ov_land(t, fpu, land_class_agg, "level")         = vm_land.l(fpu, land_class_agg);
ov_land_cost(t, fpu, "level")                    = vm_land_cost.l(fpu);
oq10_land(t, fpu, "level")                       = q10_land.l(fpu);
oq10_land_cost(t, fpu, "level")                  = q10_land_cost.l(fpu);
ov_land(t, fpu, land_class_agg, "upper")         = vm_land.up(fpu, land_class_agg);
ov_land_cost(t, fpu, "upper")                    = vm_land_cost.up(fpu);
oq10_land(t, fpu, "upper")                       = q10_land.up(fpu);
oq10_land_cost(t, fpu, "upper")                  = q10_land_cost.up(fpu);
ov_land(t, fpu, land_class_agg, "lower")         = vm_land.lo(fpu, land_class_agg);
ov_land_cost(t, fpu, "lower")                    = vm_land_cost.lo(fpu);
oq10_land(t, fpu, "lower")                       = q10_land.lo(fpu);
oq10_land_cost(t, fpu, "lower")                  = q10_land_cost.lo(fpu);
;
*########### End R section   ###########
