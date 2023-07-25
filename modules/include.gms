*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use model 
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  License Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

$setglobal phase %1
$onrecurse
* ########################################################################
$include "./modules/10_land/module.gms"
$include "./modules/89_cost/module.gms"
$include "./modules/99_optimization/module.gms"
* ########################################################################
$offrecurse

*** EOF include.gms ***
