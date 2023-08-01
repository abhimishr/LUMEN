*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0
*** |  you are granted additional permissions described in the License
*** |  Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

p31_crop_yield(t, fpu, activity_crop, irr) =   vm_crop_yield.l(fpu, activity_crop, irr);

*########### Begin R section ###########
ov_crop_yield(t, fpu, activity_crop, irr, "marginal")        = vm_crop_yield.m(fpu, activity_crop, irr);
ov_crop_production(t, fpu, activity_crop, "marginal")        = vm_crop_production.m(fpu, activity_crop);
ov_crop_production_cost(t, fpu, "marginal")                  = vm_crop_production_cost.m(fpu);
oq31_crop_production(t, fpu, activity_crop, "marginal")      = q31_crop_production.m(fpu, activity_crop);
oq31_crop_production_cost(t, fpu, "marginal")                = q31_crop_production_cost.m(fpu);
ov_crop_yield(t, fpu, activity_crop, irr, "level")           = vm_crop_yield.l(fpu, activity_crop, irr);
ov_crop_production(t, fpu, activity_crop, "level")           = vm_crop_production.l(fpu, activity_crop);
ov_crop_production_cost(t, fpu, "level")                     = vm_crop_production_cost.l(fpu);
oq31_crop_production(t, fpu, activity_crop, "level")         = q31_crop_production.l(fpu, activity_crop);
oq31_crop_production_cost(t, fpu, "level")                   = q31_crop_production_cost.l(fpu);
ov_crop_yield(t, fpu, activity_crop, irr, "upper")           = vm_crop_yield.up(fpu, activity_crop, irr);
ov_crop_production(t, fpu, activity_crop, "upper")           = vm_crop_production.up(fpu, activity_crop);
ov_crop_production_cost(t, fpu, "upper")                     = vm_crop_production_cost.up(fpu);
oq31_crop_production(t, fpu, activity_crop, "upper")         = q31_crop_production.up(fpu, activity_crop);
oq31_crop_production_cost(t, fpu, "upper")                   = q31_crop_production_cost.up(fpu);
ov_crop_yield(t, fpu, activity_crop, irr, "lower")           = vm_crop_yield.lo(fpu, activity_crop, irr);
ov_crop_production(t, fpu, activity_crop, "lower")           = vm_crop_production.lo(fpu, activity_crop);
ov_crop_production_cost(t, fpu, "lower")                     = vm_crop_production_cost.lo(fpu);
oq31_crop_production(t, fpu, activity_crop, "lower")         = q31_crop_production.lo(fpu, activity_crop);
oq31_crop_production_cost(t, fpu, "lower")                   = q31_crop_production_cost.lo(fpu);
;
*########### End R section   ###########
