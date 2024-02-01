*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

$setglobal phase %1
$onrecurse
* ########################################################################
$include "./modules/01_drivers/module.gms"
$include "./modules/10_land/module.gms"
$include "./modules/11_land_conversion/module.gms"
$include "./modules/29_crop/module.gms"
$include "./modules/31_production/module.gms"
$include "./modules/35_demand/module.gms"
$include "./modules/41_trade/module.gms"
$include "./modules/89_cost/module.gms"
$include "./modules/99_optimization/module.gms"
* ########################################################################
$offrecurse

*** EOF include.gms ***
