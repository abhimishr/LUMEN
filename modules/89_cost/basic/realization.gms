*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0
*** |  you are granted additional permissions described in the License
*** |  Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

*' @description The basic realization does basic land use stuff

*' @limitations No competition for land

*########### Begin R section ###########
$Ifi "%phase%" ==  "sets" $include "./modules/89_cost/basic/sets.gms"
$Ifi "%phase%" ==  "declarations" $include "./modules/89_cost/basic/declarations.gms"
$Ifi "%phase%" ==  "input" $include "./modules/89_cost/basic/input.gms"
$Ifi "%phase%" ==  "equations" $include "./modules/89_cost/basic/equations.gms"
$Ifi "%phase%" ==  "preloop" $include "./modules/89_cost/basic/preloop.gms"
$Ifi "%phase%" ==  "presolve" $include "./modules/89_cost/basic/presolve.gms"
*########### End R section   ###########
