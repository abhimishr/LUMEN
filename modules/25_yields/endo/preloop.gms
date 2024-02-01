*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

loop(t_all,
p25_yields_lag(fpu, activity_crop, irr_agr)$[t_all.val <= 2015] = fm_crop_yield(fpu, activity_crop, irr_agr);
);

* Dummy costs
p25_intensification_cost(fpu, activity_crop, 'air')  = 0.2;
p25_intensification_cost(fpu, activity_crop, 'arf')  = 0.3;
