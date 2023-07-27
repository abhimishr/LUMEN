*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0
*** |  you are granted additional permissions described in the License
*** |  Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

sets

    land_class  Land classes from LUH dataset
        /
        primf, primn, 
        secdf, secdn, 
        urban, 
        c3ann, c4ann, c3per, c4per, c3nfx, 
        pastr, range,
        nonforest, agric
        /

    land_class_agg(land_class) Subset of land_class
        /
        primf, secdf, nonforest, urban, agric, pastr, range
        /

    land_agg_map(land_class_agg, land_class)
        /
        primf . (primf)
        secdf . (secdf)
        nonforest . (primn, secdn)
        urban . (urban)
        agric . (c3ann, c4ann, c3per, c4per, c3nfx)
        pastr . (pastr)
        range . (range)
        /
;

alias(land_class_agg,land_from);
alias(land_class_agg,land_to);
