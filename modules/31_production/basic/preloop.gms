*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0
*** |  you are granted additional permissions described in the License
*** |  Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

loop(iso,
    loop(commodity,
        activity_iomat(activity_crop)$(sum(activity2commodity(activity, commodity), f31_iomat(iso, commodity, activity_crop))) = yes;
        p31_iomat(iso, commodity, activity_iomat) = f31_iomat(iso, commodity, activity_iomat);
    );
);

loop(iso,
    loop(activity_crop,
        commodity_iomat(commodity)$(sum(activity2commodity(activity, commodity), f31_iomat(iso, commodity, activity_crop))) = yes;
        p31_iomat(iso, commodity_iomat, activity_crop) = f31_iomat(iso, commodity_iomat, activity_crop);
    );
);

p31_iomat_fpu(fpu, commodity_iomat, activity_iomat) = sum(fpu2iso3(iso, fpu), p31_iomat(iso, commodity_iomat, activity_iomat));
p31_iomat_fpu(fpu, commodity_iomat, activity_iomat) = 1$(p31_iomat_fpu(fpu, commodity_iomat, activity_iomat));

p31_crop_production_cost(fpu, activity_crop) = 1;

$funclibin stolib stodclib

function 
    randnorm     /stolib.dnormal/
    setseedh     /stolib.SetSeed/
;

s31_seed = setseedh(2023);

p31_crop_production_cost(fpu, activity_crop) = randnorm(5,2);
display p31_crop_production_cost;
