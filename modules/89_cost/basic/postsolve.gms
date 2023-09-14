*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

*########### Begin R section ###########
ov_cost_glo(t, "marginal")             = vm_cost_glo.m;
ov89_cost_fpu(t, fpu, "marginal")      = v89_cost_fpu.m(fpu);
ov89_cost_iso(t, iso, "marginal")      = v89_cost_iso.m(iso);
oq89_cost_glo(t, "marginal")           = q89_cost_glo.m;
oq89_cost_fpu(t, fpu, "marginal")      = q89_cost_fpu.m(fpu);
oq89_cost_iso(t, iso, "marginal")      = q89_cost_iso.m(iso);
ov_cost_glo(t, "level")                = vm_cost_glo.l;
ov89_cost_fpu(t, fpu, "level")         = v89_cost_fpu.l(fpu);
ov89_cost_iso(t, iso, "level")         = v89_cost_iso.l(iso);
oq89_cost_glo(t, "level")              = q89_cost_glo.l;
oq89_cost_fpu(t, fpu, "level")         = q89_cost_fpu.l(fpu);
oq89_cost_iso(t, iso, "level")         = q89_cost_iso.l(iso);
ov_cost_glo(t, "upper")                = vm_cost_glo.up;
ov89_cost_fpu(t, fpu, "upper")         = v89_cost_fpu.up(fpu);
ov89_cost_iso(t, iso, "upper")         = v89_cost_iso.up(iso);
oq89_cost_glo(t, "upper")              = q89_cost_glo.up;
oq89_cost_fpu(t, fpu, "upper")         = q89_cost_fpu.up(fpu);
oq89_cost_iso(t, iso, "upper")         = q89_cost_iso.up(iso);
ov_cost_glo(t, "lower")                = vm_cost_glo.lo;
ov89_cost_fpu(t, fpu, "lower")         = v89_cost_fpu.lo(fpu);
ov89_cost_iso(t, iso, "lower")         = v89_cost_iso.lo(iso);
oq89_cost_glo(t, "lower")              = q89_cost_glo.lo;
oq89_cost_fpu(t, fpu, "lower")         = q89_cost_fpu.lo(fpu);
oq89_cost_iso(t, iso, "lower")         = q89_cost_iso.lo(iso);
;
*########### End R section   ###########
