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
vm_crop_production(fpu, activity_crop)                      Crop production area (000 tDM)
vm_commodity_production(iso, commodity)                    Commodity production (000 tDM)
vm_crop_production_cost(fpu, activity_crop)                 Crop production cost (000 USD)
vm_commodity_production_free(iso, commodity)               Commodity production from heaven free variable (000 tDM)
v31_production(fpu, activity_crop, commodity)               Commodity production from activities (000 tDM)
;

equations
q31_crop_production(fpu, activity_crop)                     Crop production (000 tDM)
q31_commodity_production(iso, commodity)                    commodity production (000 tDM)
q31_crop_production_cost(fpu, activity_crop)                Crop production cost (000 USD)
q31_production(fpu, activity_crop, commodity)              commodity production from activities (000 tDM)
;

*########### Begin R section ###########
parameters
ov_crop_production(t, fpu, activity_crop, type)                     Crop production area (000 tDM)
ov_commodity_production(t, iso, commodity, type)                   Commodity production (000 tDM)
ov_crop_production_cost(t, fpu, activity_crop, type)                Crop production cost (000 USD)
ov_commodity_production_free(t, iso, commodity, type)              Commodity production from heaven free variable (000 tDM)
ov31_production(t, fpu, activity_crop, commodity, type)              Commodity production from activities (000 tDM)
oq31_crop_production(t, fpu, activity_crop, type)                    Crop production (000 tDM)
oq31_commodity_production(t, iso, commodity, type)                   commodity production (000 tDM)
oq31_crop_production_cost(t, fpu, activity_crop, type)               Crop production cost (000 USD)
oq31_production(t, fpu, activity_crop, commodity, type)             commodity production from activities (000 tDM)
;
*########### End R section   ###########
