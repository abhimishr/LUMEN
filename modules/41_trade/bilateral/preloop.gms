*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

i41_global_imports(t_all, commodity, reporter)  = sum(partner, f41_import_qty(t_all,reporter, commodity, partner));

i41_global_exports(t_all, commodity, reporter)  = sum(partner, f41_export_qty(t_all,reporter, commodity, partner));

*loop(reporter,
*    p41_bilateral_export_ratio = f41_bilateral_qty(t_all, reporter, commodity, partner)
*);
