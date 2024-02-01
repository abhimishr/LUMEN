*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

pm_crop_area(fpu, activity_crop, irr_agr) = vm_crop_area.l(fpu, activity_crop, irr_agr);

*########### Begin R section ###########
ov_crop_area(t, fpu, activity_crop, irr, "marginal")      = vm_crop_area.m(fpu, activity_crop, irr);
oq29_cropland_change(t, fpu, "marginal")                  = q29_cropland_change.m(fpu);
oq29_cropland_area(t, fpu, "marginal")                    = q29_cropland_area.m(fpu);
ov_crop_area(t, fpu, activity_crop, irr, "level")         = vm_crop_area.l(fpu, activity_crop, irr);
oq29_cropland_change(t, fpu, "level")                     = q29_cropland_change.l(fpu);
oq29_cropland_area(t, fpu, "level")                       = q29_cropland_area.l(fpu);
ov_crop_area(t, fpu, activity_crop, irr, "upper")         = vm_crop_area.up(fpu, activity_crop, irr);
oq29_cropland_change(t, fpu, "upper")                     = q29_cropland_change.up(fpu);
oq29_cropland_area(t, fpu, "upper")                       = q29_cropland_area.up(fpu);
ov_crop_area(t, fpu, activity_crop, irr, "lower")         = vm_crop_area.lo(fpu, activity_crop, irr);
oq29_cropland_change(t, fpu, "lower")                     = q29_cropland_change.lo(fpu);
oq29_cropland_area(t, fpu, "lower")                       = q29_cropland_area.lo(fpu);
;
*########### End R section   ###########
