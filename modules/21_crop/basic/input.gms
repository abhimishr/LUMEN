*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0
*** |  you are granted additional permissions described in the License
*** |  Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

parameter f21_crop_yield(fpu, activity, irr) Parameter for yield (t per ha)
/
$ondelim
$include "./modules/21_crop/input/yld00.cs4"
$offdelim
/
;

parameter f21_crop_area(fpu, activity, irr) Parameter for yield (t per ha)
/
$ondelim
$include "./modules/21_crop/input/AREA00.cs4"
$offdelim
/
;
