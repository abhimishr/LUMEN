*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use model 
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  License Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

*' @description 

*' @limitations 

$Ifi "%phase%" == "declarations" $include "./modules/99_optimization/nlp/declarations.gms"
$Ifi "%phase%" == "input" $include "./modules/99_optimization/nlp/input.gms"
$Ifi "%phase%" == "solve" $include "./modules/99_optimization/nlp/solve.gms"
