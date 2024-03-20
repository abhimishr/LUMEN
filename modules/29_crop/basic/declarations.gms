*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

parameters
p29_crop_area_agg(fpu)                  Aggregated area for crops (000 ha)
p29_initial_crop(fpu, activity, irr)    Initial distribution of crop (1)
p29_crop_yield(fpu, activity_crop, irr)   Agricultural production area from previous year (000 ha)
;

positive variables
vm_crop_area(fpu, activity_crop, irr)   Agricultural production area (000 ha)
;

equations
q29_cropland_change(fpu)                Change in cropland (000 ha)
q29_cropland_area(fpu)                  Cropland allocation (000 ha)
;

*########### Begin R section ###########
parameters
ov_crop_area(t, fpu, activity_crop, irr, type)  Agricultural production area (000 ha)
oq29_cropland_change(t, fpu, type)               Change in cropland (000 ha)
oq29_cropland_area(t, fpu, type)                 Cropland allocation (000 ha)
;
*########### End R section   ###########
