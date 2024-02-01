*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

*' @description The endo realization does endo land use stuff

*' @limitations No competition for land

*########### Begin R section ###########
$Ifi "%phase%" ==  "sets" $include "./modules/25_yields/endo/sets.gms"
$Ifi "%phase%" ==  "declarations" $include "./modules/25_yields/endo/declarations.gms"
$Ifi "%phase%" ==  "input" $include "./modules/25_yields/endo/input.gms"
$Ifi "%phase%" ==  "equations" $include "./modules/25_yields/endo/equations.gms"
$Ifi "%phase%" ==  "preloop" $include "./modules/25_yields/endo/preloop.gms"
$Ifi "%phase%" ==  "presolve" $include "./modules/25_yields/endo/presolve.gms"
$Ifi "%phase%" ==  "postsolve" $include "./modules/25_yields/endo/postsolve.gms"
*########### End R section   ###########
