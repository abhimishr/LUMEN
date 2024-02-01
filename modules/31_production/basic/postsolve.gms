*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

p31_crop_yield(t, fpu, activity_crop, irr) =   vm_crop_yield.l(fpu, activity_crop, irr);

*########### Begin R section ###########
ov_crop_production(t, fpu, activity_crop, "marginal")              = vm_crop_production.m(fpu, activity_crop);
ov_commodity_production(t, iso, commodity, "marginal")             = vm_commodity_production.m(iso, commodity);
ov_crop_production_cost(t, fpu, activity_crop, "marginal")         = vm_crop_production_cost.m(fpu, activity_crop);
ov_commodity_production_free(t, iso, commodity, "marginal")        = vm_commodity_production_free.m(iso, commodity);
ov31_production(t, fpu, activity_crop, commodity, "marginal")      = v31_production.m(fpu, activity_crop, commodity);
oq31_crop_production(t, fpu, activity_crop, "marginal")            = q31_crop_production.m(fpu, activity_crop);
oq31_commodity_production(t, iso, commodity, "marginal")           = q31_commodity_production.m(iso, commodity);
oq31_crop_production_cost(t, fpu, activity_crop, "marginal")       = q31_crop_production_cost.m(fpu, activity_crop);
oq31_production(t, fpu, activity_crop, commodity, "marginal")      = q31_production.m(fpu, activity_crop, commodity);
ov_crop_production(t, fpu, activity_crop, "level")                 = vm_crop_production.l(fpu, activity_crop);
ov_commodity_production(t, iso, commodity, "level")                = vm_commodity_production.l(iso, commodity);
ov_crop_production_cost(t, fpu, activity_crop, "level")            = vm_crop_production_cost.l(fpu, activity_crop);
ov_commodity_production_free(t, iso, commodity, "level")           = vm_commodity_production_free.l(iso, commodity);
ov31_production(t, fpu, activity_crop, commodity, "level")         = v31_production.l(fpu, activity_crop, commodity);
oq31_crop_production(t, fpu, activity_crop, "level")               = q31_crop_production.l(fpu, activity_crop);
oq31_commodity_production(t, iso, commodity, "level")              = q31_commodity_production.l(iso, commodity);
oq31_crop_production_cost(t, fpu, activity_crop, "level")          = q31_crop_production_cost.l(fpu, activity_crop);
oq31_production(t, fpu, activity_crop, commodity, "level")         = q31_production.l(fpu, activity_crop, commodity);
ov_crop_production(t, fpu, activity_crop, "upper")                 = vm_crop_production.up(fpu, activity_crop);
ov_commodity_production(t, iso, commodity, "upper")                = vm_commodity_production.up(iso, commodity);
ov_crop_production_cost(t, fpu, activity_crop, "upper")            = vm_crop_production_cost.up(fpu, activity_crop);
ov_commodity_production_free(t, iso, commodity, "upper")           = vm_commodity_production_free.up(iso, commodity);
ov31_production(t, fpu, activity_crop, commodity, "upper")         = v31_production.up(fpu, activity_crop, commodity);
oq31_crop_production(t, fpu, activity_crop, "upper")               = q31_crop_production.up(fpu, activity_crop);
oq31_commodity_production(t, iso, commodity, "upper")              = q31_commodity_production.up(iso, commodity);
oq31_crop_production_cost(t, fpu, activity_crop, "upper")          = q31_crop_production_cost.up(fpu, activity_crop);
oq31_production(t, fpu, activity_crop, commodity, "upper")         = q31_production.up(fpu, activity_crop, commodity);
ov_crop_production(t, fpu, activity_crop, "lower")                 = vm_crop_production.lo(fpu, activity_crop);
ov_commodity_production(t, iso, commodity, "lower")                = vm_commodity_production.lo(iso, commodity);
ov_crop_production_cost(t, fpu, activity_crop, "lower")            = vm_crop_production_cost.lo(fpu, activity_crop);
ov_commodity_production_free(t, iso, commodity, "lower")           = vm_commodity_production_free.lo(iso, commodity);
ov31_production(t, fpu, activity_crop, commodity, "lower")         = v31_production.lo(fpu, activity_crop, commodity);
oq31_crop_production(t, fpu, activity_crop, "lower")               = q31_crop_production.lo(fpu, activity_crop);
oq31_commodity_production(t, iso, commodity, "lower")              = q31_commodity_production.lo(iso, commodity);
oq31_crop_production_cost(t, fpu, activity_crop, "lower")          = q31_crop_production_cost.lo(fpu, activity_crop);
oq31_production(t, fpu, activity_crop, commodity, "lower")         = q31_production.lo(fpu, activity_crop, commodity);
;
*########### End R section   ###########
