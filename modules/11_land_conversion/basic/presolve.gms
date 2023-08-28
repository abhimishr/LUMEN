*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

*' Conversions within natveg are not allowed
v11_lu_transitions.fx(fpu,"primf","nonforest")   = 0;

*' primf can only decrease
v11_lu_transitions.fx(fpu,land_from,"primf")     = 0;
v11_lu_transitions.up(fpu,"primf","primf")       = Inf;

*' urban cannot decrease
v11_lu_transitions.fx(fpu,"urban",land_to)       = 0;
v11_lu_transitions.up(fpu,"urban","urban")       = Inf;
