*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0
*** |  you are granted additional permissions described in the License
*** |  Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

parameters
p21_crop_area_agg(fpu)                  Aggregated area for crops (000 ha)
p21_initial_crop(fpu, activity, irr)    Initial distribution of crop (1)
;

positive variables
vm_area(fpu, activity_crop, irr)                    Agricultural production area (000 ha)
;

equations
q21_cropland(fpu)                   Production area from cropland (000 ha)
q21_cropland_change(fpu)            Change in cropland (000 ha)
;

*########### Begin R section ###########
parameters
ov_area(t, fpu, activity_crop, irr, type)                   Agricultural production area (000 ha)
oq21_cropland(t, fpu, type)                  Production area from cropland (000 ha)
oq21_cropland_change(t, fpu, type)           Change in cropland (000 ha)
;
*########### End R section   ###########
