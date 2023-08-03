*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0
*** |  you are granted additional permissions described in the License
*** |  Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

parameter f31_jcratio(iso, activity, commodity) Activity commodity ratio (1)
/
$ondelim
$include "./modules/31_production/input/jcratio.cs4"
$offdelim
/
;

parameter f31_iomat(iso, commodity, activity) Input output matrix (1)
/
$ondelim
$include "./modules/31_production/input/iomat.cs4"
$offdelim
/
;

parameter f31_IO_combined(iso, activity, commodity)  Combined Input output matrix (1);

loop(commodity,
    loop(activity,
        f31_IO_combined(iso, activity, commodity) = f31_iomat(iso, commodity, activity) + f31_jcratio(iso, activity, commodity);
    );
);
