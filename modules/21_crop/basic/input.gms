*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

parameter fm_crop_yield(fpu, activity, irr) Parameter for yield (t per ha)
/
$ondelim
$include "./modules/21_crop/input/yld00.cs4"
$offdelim
/
;
fm_crop_yield(fpu, activity, irr) = round(fm_crop_yield(fpu, activity, irr) ,3);

parameter fm_crop_area(fpu, activity, irr) Parameter for yield (t per ha)
/
$ondelim
$include "./modules/21_crop/input/AREA00.cs4"
$offdelim
/
;
fm_crop_area(fpu, activity, irr) = round(fm_crop_area(fpu, activity, irr),3);
