*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0
*** |  you are granted additional permissions described in the License
*** |  Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

p31_crop_production_cost(fpu, activity_crop) = 1;

$funclibin stolib stodclib

function 
    randnorm     /stolib.dnormal/
    setseedh     /stolib.SetSeed/
;

s31_seed = setseedh(2023);

p31_crop_production_cost(fpu, activity_crop) = randnorm(5,2);
display p31_crop_production_cost;
