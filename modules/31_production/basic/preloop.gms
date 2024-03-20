*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

p31_iomat_fpu(fpu, activity, commodity) = sum(fpu2iso3(iso, fpu), fm_io_combined(iso, activity, commodity));
p31_iomat_fpu(fpu, activity, commodity) = 1$(p31_iomat_fpu(fpu, activity, commodity));

p31_crop_production_cost(fpu, activity_crop) = 1;

$funclibin stolib stodclib

function 
    randnorm     /stolib.dnormal/
    setseedh     /stolib.SetSeed/
;

s31_seed = setseedh(2023);

loop(activity_crop, 
    p31_crop_production_cost(fpu, activity_crop) = uniform(10,30);
);
display p31_crop_production_cost;
