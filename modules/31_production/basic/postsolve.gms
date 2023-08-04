*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

p31_crop_yield(t, fpu, activity_crop, irr) =   vm_crop_yield.l(fpu, activity_crop, irr);

*########### Begin R section ###########
ov_crop_yield(t, fpu, activity_crop, irr, "marginal")                        = vm_crop_yield.m(fpu, activity_crop, irr);
ov_crop_production(t, fpu, activity_crop, "marginal")                        = vm_crop_production.m(fpu, activity_crop);
ov31_commodity_production(t, fpu, activity_crop, commodity, "marginal")      = v31_commodity_production.m(fpu, activity_crop, commodity);
oq31_crop_production(t, fpu, activity_crop, "marginal")                      = q31_crop_production.m(fpu, activity_crop);
oq31_commodity_production(t, fpu, activity_crop, commodity, "marginal")      = q31_commodity_production.m(fpu, activity_crop, commodity);
ov_crop_yield(t, fpu, activity_crop, irr, "level")                           = vm_crop_yield.l(fpu, activity_crop, irr);
ov_crop_production(t, fpu, activity_crop, "level")                           = vm_crop_production.l(fpu, activity_crop);
ov31_commodity_production(t, fpu, activity_crop, commodity, "level")         = v31_commodity_production.l(fpu, activity_crop, commodity);
oq31_crop_production(t, fpu, activity_crop, "level")                         = q31_crop_production.l(fpu, activity_crop);
oq31_commodity_production(t, fpu, activity_crop, commodity, "level")         = q31_commodity_production.l(fpu, activity_crop, commodity);
ov_crop_yield(t, fpu, activity_crop, irr, "upper")                           = vm_crop_yield.up(fpu, activity_crop, irr);
ov_crop_production(t, fpu, activity_crop, "upper")                           = vm_crop_production.up(fpu, activity_crop);
ov31_commodity_production(t, fpu, activity_crop, commodity, "upper")         = v31_commodity_production.up(fpu, activity_crop, commodity);
oq31_crop_production(t, fpu, activity_crop, "upper")                         = q31_crop_production.up(fpu, activity_crop);
oq31_commodity_production(t, fpu, activity_crop, commodity, "upper")         = q31_commodity_production.up(fpu, activity_crop, commodity);
ov_crop_yield(t, fpu, activity_crop, irr, "lower")                           = vm_crop_yield.lo(fpu, activity_crop, irr);
ov_crop_production(t, fpu, activity_crop, "lower")                           = vm_crop_production.lo(fpu, activity_crop);
ov31_commodity_production(t, fpu, activity_crop, commodity, "lower")         = v31_commodity_production.lo(fpu, activity_crop, commodity);
oq31_crop_production(t, fpu, activity_crop, "lower")                         = q31_crop_production.lo(fpu, activity_crop);
oq31_commodity_production(t, fpu, activity_crop, commodity, "lower")         = q31_commodity_production.lo(fpu, activity_crop, commodity);
;
*########### End R section   ###########
