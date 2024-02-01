*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

p29_crop_area_agg(fpu) = sum((activity_crop2,irr_agr), fm_crop_area(fpu, activity_crop2, irr_agr));
p29_initial_crop(fpu, activity_crop, irr_agr)$(p29_crop_area_agg(fpu) > 0) = fm_crop_area(fpu, activity_crop, irr_agr) / p29_crop_area_agg(fpu);
