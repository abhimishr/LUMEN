*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

* Initialize Yields lower bound
vm_crop_yield.lo(fpu, activity_crop, irr_agr)        = f25_crop_yield(fpu, activity_crop, irr_agr);

* Initiate intensification
v25_productivity_growth.l(fpu, activity_crop, irr_agr) = 1;

* Initialize growth
p25_productivity_growth("2015", fpu, activity_crop, irr_agr) = v25_productivity_growth.l(fpu, activity_crop, irr_agr);

* Set lower bound as previous growth
v25_productivity_growth.lo(fpu, activity_crop, irr_agr)$(ord(t) > 1) = p25_productivity_growth(t-1, fpu, activity_crop, irr_agr);