*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

parameters
p10_luh_init(fpu, land_class_agg)   Land use initialization dataset (000 ha)
p10_land_cost(fpu, land_class_agg)  Cost of land use (USD per ha)
pcm_land(fpu, land_class_agg)        Land use from previous year (000 ha)
p10_land_glo(t, land_class_agg)     Global land pool (000 ha)
p10_land_total(t)                   Global land total (000 ha)
;

positive variables
vm_land(fpu, land_class_agg)        Land use variable (000 ha)
vm_land_cost(fpu)                  Cost of land use (000 USD)
;

equations
q10_land(fpu)                       Equation for land use (000 ha)
q10_land_cost(fpu)                  Cost of land use (USD per ha)
;

*########### Begin R section ###########
parameters
ov_land(t, fpu, land_class_agg, type)       Land use variable (000 ha)
ov_land_cost(t, fpu, type)                 Cost of land use (000 USD)
oq10_land(t, fpu, type)                      Equation for land use (000 ha)
oq10_land_cost(t, fpu, type)                 Cost of land use (USD per ha)
;
*########### End R section   ###########
