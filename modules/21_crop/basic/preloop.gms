*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0
*** |  you are granted additional permissions described in the License
*** |  Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

p21_crop_area_agg(fpu) = sum((activity_crop2,irr2), f21_crop_area(fpu, activity_crop2, irr2));
p21_initial_crop(fpu, activity_crop, irr)$(p21_crop_area_agg(fpu) > 0) = f21_crop_area(fpu, activity_crop, irr) / p21_crop_area_agg(fpu);
