*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0
*** |  you are granted additional permissions described in the License
*** |  Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

table luh_init(fpu,land_class) Initial LUH Area (000 ha)
$ondelim
$include "./modules/10_land/input/luh_init.cs3"
$offdelim
;  

parameter yield(fpu, activity, irr) Parameter for yield (t per ha)
/
$ondelim
$include "./modules/10_land/input/yld00.cs4"
$offdelim
/
;