*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

parameters
p25_climate_shock(t_all, fpu, activity_crop, irr)           Climate change impact or shock to yields (unitless index)
p25_intensification_cost(fpu, activity_crop, irr)           Cost of intensification (000 USD)
p25_yields_lag(fpu, activity_crop, irr)                     Lag of Crop production yield (tDM per ha)
p25_productivity_growth(t_all, fpu, activity_crop, irr)     Crop productivity over time (unitless index)
;

positive variables
vm_crop_yield(fpu, activity_crop, irr)                      Crop production yield (tDM per ha)
v25_productivity_growth(fpu, activity_crop, irr)            Change in crop productivity over time (unitless index)
vm_intensification_cost(fpu, activity_crop, irr)            Cost of intensification (000 USD)
;

equations
q25_yield_crop(fpu, activity_crop, irr)                     Crop production yield (tDM per ha)
q25_intensification_cost(fpu, activity_crop, irr)           Cost of intensification (000 USD)
;

*########### Begin R section ###########
parameters
ov_crop_yield(t, fpu, activity_crop, irr, type)                     Crop production yield (tDM per ha)
ov25_productivity_growth(t, fpu, activity_crop, irr, type)           Change in crop productivity over time (unitless index)
ov_intensification_cost(t, fpu, activity_crop, irr, type)           Cost of intensification (000 USD)
oq25_yield_crop(t, fpu, activity_crop, irr, type)                    Crop production yield (tDM per ha)
oq25_intensification_cost(t, fpu, activity_crop, irr, type)          Cost of intensification (000 USD)
;
*########### End R section   ###########
