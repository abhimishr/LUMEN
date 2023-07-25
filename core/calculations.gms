*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use model 
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  License Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

****************************PREPROCESSING START*********************************
* In this section everything is calculated that is not influenced by the
* optimization process. Hence these lines CAN INFLUENCE the optimization process
* but CANNOT BE INFLUENCED by it.

$batinclude "./modules/include.gms" start

$batinclude "./modules/include.gms" preloop