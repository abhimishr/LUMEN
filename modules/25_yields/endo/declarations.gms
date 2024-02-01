*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

positive variables
vm_crop_yield(fpu, activity_crop, irr)                      Crop production yield (tDM per ha)
;

*########### Begin R section ###########
parameters
ov_crop_yield(t, fpu, activity_crop, irr, type)                     Crop production yield (tDM per ha)
;
*########### End R section   ###########
