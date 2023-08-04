*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

$ifthen "%c99_solver%" == "conopt3"
  option nlp        = conopt ;
$elseif "%c99_solver%" == "conopt4"
  option nlp        = conopt4;
$else
  abort "c99_solver setting not supported in nlp realization!";
$endif

solve LUMEN USING nlp MINIMIZING vm_cost_glo;
