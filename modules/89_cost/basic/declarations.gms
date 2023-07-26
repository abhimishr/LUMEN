*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use model 
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  License Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

variables
vm_cost_glo         Global level LU cost (000 USD)
v89_cost_fpu(fpu)   Fpu level cost (000 USD)
;

equations
q89_cost_glo        Global level LU cost (000 USD)
q89_cost_fpu(fpu)   Fpu level cost (000 USD)
;

*########### Begin R section ###########
parameters
ov_cost_glo(t, type)        Global level LU cost (000 USD)
ov89_cost_fpu(t, fpu, type)  Fpu level cost (000 USD)
oq89_cost_glo(t, type)       Global level LU cost (000 USD)
oq89_cost_fpu(t, fpu, type)  Fpu level cost (000 USD)
;
*########### End R section   ###########
