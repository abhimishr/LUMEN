*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use model 
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  License Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

*' @description 

*' @limitations 

$Ifi "%phase%" == "sets" $include "./modules/99_optimization/nlp/sets.gms"
$Ifi "%phase%" == "declarations" $include "./modules/99_optimization/nlp/declarations.gms"
$Ifi "%phase%" == "input" $include "./modules/99_optimization/nlp/input.gms"
$Ifi "%phase%" == "solve" $include "./modules/99_optimization/nlp/solve.gms"
*$Ifi "%phase%" == "equations" $include "./modules/99_optimization/nlp/equations.gms"
*$Ifi "%phase%" == "scaling" $include "./modules/99_optimization/nlp/scaling.gms"
*$Ifi "%phase%" == "start" $include "./modules/99_optimization/nlp/start.gms"
$Ifi "%phase%" == "preloop" $include "./modules/99_optimization/nlp/preloop.gms"
$Ifi "%phase%" == "presolve" $include "./modules/99_optimization/nlp/presolve.gms"
*$Ifi "%phase%" == "postsolve" $include "./modules/99_optimization/nlp/postsolve.gms"