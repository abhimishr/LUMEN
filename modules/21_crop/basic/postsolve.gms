*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

pm_crop_area(fpu, activity_crop, irr) = vm_crop_area.l(fpu, activity_crop, irr);

*########### Begin R section ###########
ov_crop_area(t, fpu, activity_crop, irr, "marginal")      = vm_crop_area.m(fpu, activity_crop, irr);
oq21_cropland_change(t, fpu, "marginal")                  = q21_cropland_change.m(fpu);
ov_crop_area(t, fpu, activity_crop, irr, "level")         = vm_crop_area.l(fpu, activity_crop, irr);
oq21_cropland_change(t, fpu, "level")                     = q21_cropland_change.l(fpu);
ov_crop_area(t, fpu, activity_crop, irr, "upper")         = vm_crop_area.up(fpu, activity_crop, irr);
oq21_cropland_change(t, fpu, "upper")                     = q21_cropland_change.up(fpu);
ov_crop_area(t, fpu, activity_crop, irr, "lower")         = vm_crop_area.lo(fpu, activity_crop, irr);
oq21_cropland_change(t, fpu, "lower")                     = q21_cropland_change.lo(fpu);
;
*########### End R section   ###########
