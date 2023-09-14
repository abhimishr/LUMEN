*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

sets
    c_trade(commodity)
        / cbarl, cmaiz, cmill, crice, csorg, cwhea /

    c_non_trade(commodity)
        /  cbeef, cpork, clamb, cpoul, ceggs, cmilk,       
        cocer, ccass, cpota, cswpt, cyams, corat, cbean, cchkp, ccowp, clent, 
        cpigp, copul, cbana, cplnt, csubf, ctemf, cvege, csugc, csugb, csugr, cgrnd, 
        cgdnt, cgdol, cgdml, crpsd, crpnt, crpol, crpml, csoyb, csbnt, csbol, csbml,
        csnfl, csfnt, csfol, csfml, cpalm, cplol, cpkrl, cpkol, cpkml, ctols, ctont, 
        ctool, ctoml, ccoco, ccafe, ccott, cteas, cothr, cfodr, cgrss/
;
