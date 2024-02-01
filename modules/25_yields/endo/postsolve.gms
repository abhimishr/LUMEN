*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

*########### Begin R section ###########
ov_crop_yield(t, fpu, activity_crop, irr, "marginal")      = vm_crop_yield.m(fpu, activity_crop, irr);
ov_crop_yield(t, fpu, activity_crop, irr, "level")         = vm_crop_yield.l(fpu, activity_crop, irr);
ov_crop_yield(t, fpu, activity_crop, irr, "upper")         = vm_crop_yield.up(fpu, activity_crop, irr);
ov_crop_yield(t, fpu, activity_crop, irr, "lower")         = vm_crop_yield.lo(fpu, activity_crop, irr);
;
*########### End R section   ###########
