*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

* Save previous yields
p25_yields_lag(fpu, activity_crop, irr_agr)                 = vm_crop_yield.l(fpu, activity_crop, irr_agr);
p25_productivity_growth(t, fpu, activity_crop, irr_agr)     = v25_productivity_growth.l(fpu, activity_crop, irr_agr);

*########### Begin R section ###########
ov_crop_yield(t, fpu, activity_crop, irr_agr, "marginal")                  = vm_crop_yield.m(fpu, activity_crop, irr_agr);
ov25_productivity_growth(t, fpu, activity_crop, irr_agr, "marginal")       = v25_productivity_growth.m(fpu, activity_crop, irr_agr);
ov_intensification_cost(t, fpu, activity_crop, irr_agr, "marginal")        = vm_intensification_cost.m(fpu, activity_crop, irr_agr);
oq25_yield_crop(t, fpu, activity_crop, irr_agr, "marginal")                = q25_yield_crop.m(fpu, activity_crop, irr_agr);
oq25_intensification_cost(t, fpu, activity_crop, irr_agr, "marginal")      = q25_intensification_cost.m(fpu, activity_crop, irr_agr);
ov_crop_yield(t, fpu, activity_crop, irr_agr, "level")                     = vm_crop_yield.l(fpu, activity_crop, irr_agr);
ov25_productivity_growth(t, fpu, activity_crop, irr_agr, "level")          = v25_productivity_growth.l(fpu, activity_crop, irr_agr);
ov_intensification_cost(t, fpu, activity_crop, irr_agr, "level")           = vm_intensification_cost.l(fpu, activity_crop, irr_agr);
oq25_yield_crop(t, fpu, activity_crop, irr_agr, "level")                   = q25_yield_crop.l(fpu, activity_crop, irr_agr);
oq25_intensification_cost(t, fpu, activity_crop, irr_agr, "level")         = q25_intensification_cost.l(fpu, activity_crop, irr_agr);
ov_crop_yield(t, fpu, activity_crop, irr_agr, "upper")                     = vm_crop_yield.up(fpu, activity_crop, irr_agr);
ov25_productivity_growth(t, fpu, activity_crop, irr_agr, "upper")          = v25_productivity_growth.up(fpu, activity_crop, irr_agr);
ov_intensification_cost(t, fpu, activity_crop, irr_agr, "upper")           = vm_intensification_cost.up(fpu, activity_crop, irr_agr);
oq25_yield_crop(t, fpu, activity_crop, irr_agr, "upper")                   = q25_yield_crop.up(fpu, activity_crop, irr_agr);
oq25_intensification_cost(t, fpu, activity_crop, irr_agr, "upper")         = q25_intensification_cost.up(fpu, activity_crop, irr_agr);
ov_crop_yield(t, fpu, activity_crop, irr_agr, "lower")                     = vm_crop_yield.lo(fpu, activity_crop, irr_agr);
ov25_productivity_growth(t, fpu, activity_crop, irr_agr, "lower")          = v25_productivity_growth.lo(fpu, activity_crop, irr_agr);
ov_intensification_cost(t, fpu, activity_crop, irr_agr, "lower")           = vm_intensification_cost.lo(fpu, activity_crop, irr_agr);
oq25_yield_crop(t, fpu, activity_crop, irr_agr, "lower")                   = q25_yield_crop.lo(fpu, activity_crop, irr_agr);
oq25_intensification_cost(t, fpu, activity_crop, irr_agr, "lower")         = q25_intensification_cost.lo(fpu, activity_crop, irr_agr);
;
*########### End R section   ###########
