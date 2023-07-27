*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0
*** |  you are granted additional permissions described in the License
*** |  Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

* Initialize land use pool
p10_luh_init(fpu, land_class_agg) = sum(land_agg_map(land_class_agg,land_class), luh_init(fpu, land_class));

* Initialize cost of 
p10_land_cost(fpu, land_class_agg) = 10;

pm_land(fpu, land_class_agg) = p10_luh_init(fpu, land_class_agg);
