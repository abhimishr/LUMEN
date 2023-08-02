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
p31_crop_yield(t, fpu, activity_crop, irr)              Time specific optimized crop yiels (tDM per ha)
p31_iomat(iso, commodity, activity_crop)                Dummy paraeter for testing (1)
p31_iomat_fpu(fpu, commodity, activity_crop)            Dummy par (1)
;

positive variables
vm_crop_yield(fpu, activity_crop, irr)                      Crop production yield (tDM per ha)
vm_crop_production(fpu, activity_crop)                      Crop production area (000 ha)
;

equations
q31_crop_production(fpu, activity_crop)                     Crop production (000 tDM)
;

*########### Begin R section ###########
parameters
ov_crop_yield(t, fpu, activity_crop, irr, type)                     Crop production yield (tDM per ha)
ov_crop_production(t, fpu, activity_crop, type)                     Crop production area (000 ha)
oq31_crop_production(t, fpu, activity_crop, type)                    Crop production (000 tDM)
;
*########### End R section   ###########
