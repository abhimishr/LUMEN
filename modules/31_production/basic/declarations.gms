*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

scalar
s31_seed
;

parameters
p31_crop_production_cost(fpu, activity_crop)            Unit production cost for crops(USD per tDM)
p31_crop_yield(t, fpu, activity_crop, irr)              Time specific optimized crop yiels (tDM per ha)
p31_iomat(iso, commodity, activity_crop)                Dummy paraeter for testing (1)
p31_iomat_fpu(fpu, activity, commodity)                 Dummy par (1)
;

positive variables
vm_crop_yield(fpu, activity_crop, irr)                      Crop production yield (tDM per ha)
vm_crop_production(fpu, activity_crop)                      Crop production area (000 ha)
v31_commodity_production(fpu, activity_crop, commodity)     commodity production (000 tDM)
;

equations
q31_crop_production(fpu, activity_crop)                     Crop production (000 tDM)
q31_commodity_production(fpu, activity_crop, commodity)     commodity production (000 tDM)
;

*########### Begin R section ###########
parameters
ov_crop_yield(t, fpu, activity_crop, irr, type)                     Crop production yield (tDM per ha)
ov_crop_production(t, fpu, activity_crop, type)                     Crop production area (000 ha)
ov31_commodity_production(t, fpu, activity_crop, commodity, type)    commodity production (000 tDM)
oq31_crop_production(t, fpu, activity_crop, type)                    Crop production (000 tDM)
oq31_commodity_production(t, fpu, activity_crop, commodity, type)    commodity production (000 tDM)
;
*########### End R section   ###########
