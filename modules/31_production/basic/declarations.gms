*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0
*** |  you are granted additional permissions described in the License
*** |  Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

scalar
s31_seed
;

parameters
p31_crop_production_cost(fpu, activity_crop)            Unit production cost for crops(USD per tDM)
;

positive variables
vm_crop_yield(fpu, activity_crop, irr)                  Crop production yield (tDM per ha)
vm_crop_production(fpu, activity_crop)                  Crop production area (000 ha)
vm_crop_production_cost(fpu)                            Crop production cost (000 USD)
;

equations
q31_crop_production(fpu, activity_crop)                 Crop production (000 tDM)
q31_crop_production_cost(fpu)                           Crop production cost (000 USD)
;

*########### Begin R section ###########
parameters
ov_crop_yield(t, fpu, activity_crop, irr, type)                 Crop production yield (tDM per ha)
ov_crop_production(t, fpu, activity_crop, type)                 Crop production area (000 ha)
ov_crop_production_cost(t, fpu, type)                           Crop production cost (000 USD)
oq31_crop_production(t, fpu, activity_crop, type)                Crop production (000 tDM)
oq31_crop_production_cost(t, fpu, type)                          Crop production cost (000 USD)
;
*########### End R section   ###########
