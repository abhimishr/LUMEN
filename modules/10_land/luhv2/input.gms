*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

table f10_luh_init(fpu,land_class) Initial LUH Area (000 ha)
$ondelim
$include "./modules/10_land/input/luh_init.cs3"
$offdelim
;

f10_luh_init(fpu,land_class) = round(f10_luh_init(fpu,land_class), 4);
