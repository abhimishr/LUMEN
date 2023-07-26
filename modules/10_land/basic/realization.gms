*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use model 
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  License Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

*' @description The basic realization does basic land use stuff

*' @limitations No competition for land

$Ifi "%phase%" == "sets" $include "./modules/10_land/basic/sets.gms"
$Ifi "%phase%" == "declarations" $include "./modules/10_land/basic/declarations.gms"
$Ifi "%phase%" == "input" $include "./modules/10_land/basic/input.gms"
$Ifi "%phase%" == "equations" $include "./modules/10_land/basic/equations.gms"
*$Ifi "%phase%" == "scaling" $include "./modules/10_land/basic/scaling.gms"
*$Ifi "%phase%" == "start" $include "./modules/10_land/basic/start.gms"
$Ifi "%phase%" == "preloop" $include "./modules/10_land/basic/preloop.gms"
$Ifi "%phase%" == "presolve" $include "./modules/10_land/basic/presolve.gms"
*$Ifi "%phase%" == "postsolve" $include "./modules/10_land/basic/postsolve.gms"
