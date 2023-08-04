*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

sets

        type            GAMS variable attribute used for the output 
                / level, marginal, upper, lower /

        fpu             Impact FPUs
                /
                ALB_ALB, ALK_USA, AMA_BOL, AMA_BRA, AMA_COL, AMA_ECU, AMA_PER, AMD_AFG, AMD_TJK, 
                AMD_TKM, AMD_UZB, AMR_CHM, AMR_RUS, ARA_IRQ, ARK_USA, ARM_ARM, AZE_AZE, BAL_BLT, 
                BAL_RUS, BLA_RUS, BLA_TUR, BLA_UKR, BLZ_BLZ, BOR_IDN, BOR_MYS, BRT_BGD, BRT_BTN, 
                BRT_CHM, BRT_IND, CAF_AGO, CAF_CAF, CAF_CMR, CAF_COG, CAF_GAB, CAF_GNQ, CAF_NAM, 
                CAL_USA, CAN_CAN, CAU_AUS, CAV_IND, CHC_CHL, CHJ_CHM, CHO_IND, CHU_KAZ, CHU_KGZ, 
                COB_CAN, COB_USA, COL_USA, CON_AGO, CON_CAF, CON_COD, CON_COG, CRB_CRB, CRI_CRI, 
                CUB_CUB, DAN_AUT, DAN_BGR, DAN_CZE, DAN_DEU, DAN_HRV, DAN_HUN, DAN_MDA, DAN_OBN, 
                DAN_ROU, DAN_SVK, DAN_SVN, DAN_TUR, DAN_UKR, DNI_BLR, DNI_RUS, DNI_UKR, DOM_DOM, 
                EAC_BDI, EAC_COD, EAC_RWA, EAC_TZA, EAU_AUS, EGH_IND, ELB_DEU, ELB_DNK, EME_CYP, 
                EME_EGY, EME_ISR, EME_JOR, EME_LBN, EME_PSE, EME_SYR, EME_TUR, FJI_FJI, FNP_FNP, 
                GAN_BGD, GAN_CHM, GAN_IND, GAN_NPL, GBA_USA, GEO_GEO, GLA_CAN, GLA_USA, GOD_IND, 
                GRC_GRC, GRL_GRL, GSA_GSA, GTM_GTM, HAI_CHM, HND_HND, HOA_ETH, HOA_KEN, HOA_SOM, 
                HTI_HTI, HUA_CHM, HUN_CHM, HWI_USA, IEC_IND, IND_CHM, IND_IND, IND_PAK, INE_IDN, 
                INW_IDN, IRL_IRL, ISL_ISL, ITA_ITP, JAM_JAM, JAP_JPN, KAL_BWA, KAL_NAM, KAL_ZAF, 
                KRI_IND, LAJ_CHM, LBA_KAZ, LBO_FRP, LCB_CAF, LCB_CMR, LCB_NER, LCB_NGA, LCB_TCD, 
                LIM_BWA, LIM_MOZ, LIM_ZAF, LIM_ZWE, LMO_CHM, LMO_MNG, LTZ_KAZ, LUN_IND, MAD_MDG, 
                MAT_IND, MAU_AUS, MCK_CAN, MEK_KHM, MEK_LAO, MEK_MMR, MEK_THA, MEK_VNM, MHN_IND, 
                MIM_MEX, MIS_USA, MOU_USA, NAC_DZA, NAC_EGY, NAC_LBY, NAC_TUN, NEB_BRA, NER_RUS, 
                NIC_NIC, NIG_BEN, NIG_BFA, NIG_CIV, NIG_CMR, NIG_GIN, NIG_MLI, NIG_NER, NIG_NGA, 
                NIG_TCD, NKP_PRK, NLL_DJI, NLL_EGY, NLL_ERI, NLL_ETH, NLL_SDN, NLL_SSD, NLL_UGA, 
                NOR_NOR, NWA_MOR, NWA_MRT, NWS_COL, NWS_ECU, NZE_NZL, OAO_OAO, OBB_CHM, OBB_KAZ, 
                OBB_RUS, ODE_DEU, ODE_POL, ODE_RUS, OHI_USA, OIO_OIO, OPO_OPO, ORA_LSO, ORA_NAM, 
                ORA_ZAF, ORI_COL, ORI_VEN, PAN_PAN, PAO_PNG, PAR_ARG, PAR_BOL, PAR_BRA, PAR_PRY, 
                PEC_PER, PHI_PHL, PRT_PRT, RAP_RAP, RHI_BLX, RHI_CHP, RHI_DEU, RHI_FRP, RHI_NLD, 
                RHO_FRP, RIC_ARG, RIG_MEX, RIG_USA, RRS_RUS, RVE_VEN, RVN_VNM, RWI_CAN, RWI_USA, 
                SAC_SWZ, SAC_ZAF, SAF_MOZ, SAF_TZA, SAF_ZWE, SAH_DZA, SAH_EGY, SAH_LBY, SAH_MLI, 
                SAH_MOR, SAH_MRT, SAH_NER, SAH_SDN, SAH_TCD, SAL_ARG, SAN_BRA, SAU_SAU, SAY_IND, 
                SEI_FRP, SEN_GIN, SEN_MLI, SEN_MRT, SEN_SEN, SEU_USA, SKP_KOR, SLB_SLB, SLV_SLV, 
                SON_CHM, SPP_SPP, SRL_LKA, SWE_SWE, SYD_KAZ, SYD_KGZ, SYD_TJK, SYD_UZB, TIE_ARG, 
                TIG_IRN, TIG_IRQ, TIG_SYR, TIG_TUR, TLS_TLS, TMM_BGD, TMM_MMR, TMM_MYS, TMM_OSA, 
                TMM_THA, TOC_BRA, TWN_CHM, UKP_UKP, UME_MEX, UMO_MNG, UMO_RUS, URA_KAZ, URA_RUS, 
                URA_TKM, URU_BRA, URU_URY, USN_USA, VOG_RUS, VOT_BEN, VOT_BFA, VOT_CIV, VOT_GHA, 
                VOT_MLI, VOT_TGO, VUT_VUT, WAC_CIV, WAC_GIN, WAC_GMB, WAC_GNB, WAC_LBR, WAC_SEN, 
                WAC_SLE, WAI_AFG, WAI_IRN, WAI_PAK, WAI_TKM, WAU_AUS, WGM_USA, YEM_YEM, YEN_RUS, 
                YHE_CHM, YRD_CHM, YRD_VNM, YUC_MEX, ZAM_AGO, ZAM_BWA, ZAM_COD, ZAM_MOZ, ZAM_MWI, 
                ZAM_NAM, ZAM_TZA, ZAM_ZMB, ZAM_ZWE, ZHJ_CHM
                /
        
        iso            Country
                /
                AFG, AGO, ALB, ARG, ARM, AUS, AUT, AZE, BDI, BEN, BFA, BGD, BGR, BLR, BLT, 
                BLX, BLZ, BOL, BRA, BTN, BWA, CAF, CAN, CHL, CHM, CHP, CIV, CMR, COD, COG, 
                COL, CRB, CRI, CUB, CYP, CZE, DEU, DJI, DNK, DOM, DZA, ECU, EGY, ERI, ETH, 
                FJI, FNP, FRP, GAB, GEO, GHA, GIN, GMB, GNB, GNQ, GRC, GRL, GSA, GTM, HND, 
                HRV, HTI, HUN, IDN, IND, IRL, IRN, IRQ, ISL, ISR, ITP, JAM, JOR, JPN, KAZ, 
                KEN, KGZ, KHM, KOR, LAO, LBN, LBR, LBY, LKA, LSO, MDA, MDG, MEX, MLI, MMR, 
                MNG, MOR, MOZ, MRT, MWI, MYS, NAM, NER, NGA, NIC, NLD, NOR, NPL, NZL, OAO, 
                OBN, OIO, OPO, OSA, PAK, PAN, PER, PHL, PNG, POL, PRK, PRT, PRY, PSE, RAP, 
                ROU, RUS, RWA, SAU, SDN, SEN, SLB, SLE, SLV, SOM, SPP, SSD, SVK, SVN, SWE, 
                SWZ, SYR, TCD, TGO, THA, TJK, TKM, TLS, TUN, TUR, TZA, UGA, UKP, UKR, URY, 
                USA, UZB, VEN, VNM, VUT, YEM, ZAF, ZMB, ZWE
                /

        iso2(iso)               ISO countries dynamic        

        fpu2(fpu)               Fpus dynamic

        fpu2iso3(iso, fpu)     FPU to iso mapping
                /
                (AFG) . (AMD_AFG, WAI_AFG)
                (AGO) . (CAF_AGO, CON_AGO, ZAM_AGO)
                (ALB) . (ALB_ALB)
                (ARG) . (PAR_ARG, RIC_ARG, SAL_ARG, TIE_ARG)
                (ARM) . (ARM_ARM)
                (AUS) . (CAU_AUS, EAU_AUS, MAU_AUS, WAU_AUS)
                (AUT) . (DAN_AUT)
                (AZE) . (AZE_AZE)
                (BDI) . (EAC_BDI)
                (BEN) . (NIG_BEN, VOT_BEN)
                (BFA) . (NIG_BFA, VOT_BFA)
                (BGD) . (BRT_BGD, GAN_BGD, TMM_BGD)
                (BGR) . (DAN_BGR)
                (BLR) . (DNI_BLR)
                (BLT) . (BAL_BLT)
                (BLX) . (RHI_BLX)
                (BLZ) . (BLZ_BLZ)
                (BOL) . (AMA_BOL, PAR_BOL)
                (BRA) . (AMA_BRA, NEB_BRA, PAR_BRA, SAN_BRA, TOC_BRA, URU_BRA)
                (BTN) . (BRT_BTN)
                (BWA) . (KAL_BWA, LIM_BWA, ZAM_BWA)
                (CAF) . (CAF_CAF, CON_CAF, LCB_CAF)
                (CAN) . (CAN_CAN, COB_CAN, GLA_CAN, MCK_CAN, RWI_CAN)
                (CHL) . (CHC_CHL)
                (CHM) . (AMR_CHM, BRT_CHM, CHJ_CHM, GAN_CHM, HAI_CHM, HUA_CHM, HUN_CHM, IND_CHM, LAJ_CHM, LMO_CHM, OBB_CHM, SON_CHM, TWN_CHM, YHE_CHM, YRD_CHM, ZHJ_CHM)
                (CHP) . (RHI_CHP)
                (CIV) . (NIG_CIV, VOT_CIV, WAC_CIV)
                (CMR) . (CAF_CMR, LCB_CMR, NIG_CMR)
                (COD) . (CON_COD, EAC_COD, ZAM_COD)
                (COG) . (CAF_COG, CON_COG)
                (COL) . (AMA_COL, NWS_COL, ORI_COL)
                (CRB) . (CRB_CRB)
                (CRI) . (CRI_CRI)
                (CUB) . (CUB_CUB)
                (CYP) . (EME_CYP)
                (CZE) . (DAN_CZE)
                (DEU) . (DAN_DEU, ELB_DEU, ODE_DEU, RHI_DEU)
                (DJI) . (NLL_DJI)
                (DNK) . (ELB_DNK)
                (DOM) . (DOM_DOM)
                (DZA) . (NAC_DZA, SAH_DZA)
                (ECU) . (AMA_ECU, NWS_ECU)
                (EGY) . (EME_EGY, NAC_EGY, NLL_EGY, SAH_EGY)
                (ERI) . (NLL_ERI)
                (ETH) . (HOA_ETH, NLL_ETH)
                (FJI) . (FJI_FJI)
                (FNP) . (FNP_FNP)
                (FRP) . (LBO_FRP, RHI_FRP, RHO_FRP, SEI_FRP)
                (GAB) . (CAF_GAB)
                (GEO) . (GEO_GEO)
                (GHA) . (VOT_GHA)
                (GIN) . (NIG_GIN, SEN_GIN, WAC_GIN)
                (GMB) . (WAC_GMB)
                (GNB) . (WAC_GNB)
                (GNQ) . (CAF_GNQ)
                (GRC) . (GRC_GRC)
                (GRL) . (GRL_GRL)
                (GSA) . (GSA_GSA)
                (GTM) . (GTM_GTM)
                (HND) . (HND_HND)
                (HRV) . (DAN_HRV)
                (HTI) . (HTI_HTI)
                (HUN) . (DAN_HUN)
                (IDN) . (BOR_IDN, INE_IDN, INW_IDN)
                (IND) . (BRT_IND, CAV_IND, CHO_IND, EGH_IND, GAN_IND, GOD_IND, IEC_IND, IND_IND, KRI_IND, LUN_IND, MAT_IND, MHN_IND, SAY_IND)
                (IRL) . (IRL_IRL)
                (IRN) . (TIG_IRN, WAI_IRN)
                (IRQ) . (ARA_IRQ, TIG_IRQ)
                (ISL) . (ISL_ISL)
                (ISR) . (EME_ISR)
                (ITP) . (ITA_ITP)
                (JAM) . (JAM_JAM)
                (JOR) . (EME_JOR)
                (JPN) . (JAP_JPN)
                (KAZ) . (CHU_KAZ, LBA_KAZ, LTZ_KAZ, OBB_KAZ, SYD_KAZ, URA_KAZ)
                (KEN) . (HOA_KEN)
                (KGZ) . (CHU_KGZ, SYD_KGZ)
                (KHM) . (MEK_KHM)
                (KOR) . (SKP_KOR)
                (LAO) . (MEK_LAO)
                (LBN) . (EME_LBN)
                (LBR) . (WAC_LBR)
                (LBY) . (NAC_LBY, SAH_LBY)
                (LKA) . (SRL_LKA)
                (LSO) . (ORA_LSO)
                (MDA) . (DAN_MDA)
                (MDG) . (MAD_MDG)
                (MEX) . (MIM_MEX, RIG_MEX, UME_MEX, YUC_MEX)
                (MLI) . (NIG_MLI, SAH_MLI, SEN_MLI, VOT_MLI)
                (MMR) . (MEK_MMR, TMM_MMR)
                (MNG) . (LMO_MNG, UMO_MNG)
                (MOR) . (NWA_MOR, SAH_MOR)
                (MOZ) . (LIM_MOZ, SAF_MOZ, ZAM_MOZ)
                (MRT) . (NWA_MRT, SAH_MRT, SEN_MRT)
                (MWI) . (ZAM_MWI)
                (MYS) . (BOR_MYS, TMM_MYS)
                (NAM) . (CAF_NAM, KAL_NAM, ORA_NAM, ZAM_NAM)
                (NER) . (LCB_NER, NIG_NER, SAH_NER)
                (NGA) . (LCB_NGA, NIG_NGA)
                (NIC) . (NIC_NIC)
                (NLD) . (RHI_NLD)
                (NOR) . (NOR_NOR)
                (NPL) . (GAN_NPL)
                (NZL) . (NZE_NZL)
                (OAO) . (OAO_OAO)
                (OBN) . (DAN_OBN)
                (OIO) . (OIO_OIO)
                (OPO) . (OPO_OPO)
                (OSA) . (TMM_OSA)
                (PAK) . (IND_PAK, WAI_PAK)
                (PAN) . (PAN_PAN)
                (PER) . (AMA_PER, PEC_PER)
                (PHL) . (PHI_PHL)
                (PNG) . (PAO_PNG)
                (POL) . (ODE_POL)
                (PRK) . (NKP_PRK)
                (PRT) . (PRT_PRT)
                (PRY) . (PAR_PRY)
                (PSE) . (EME_PSE)
                (RAP) . (RAP_RAP)
                (ROU) . (DAN_ROU)
                (RUS) . (AMR_RUS, BAL_RUS, BLA_RUS, DNI_RUS, NER_RUS, OBB_RUS, ODE_RUS, RRS_RUS, UMO_RUS, URA_RUS, VOG_RUS, YEN_RUS)
                (RWA) . (EAC_RWA)
                (SAU) . (SAU_SAU)
                (SDN) . (NLL_SDN, SAH_SDN)
                (SEN) . (SEN_SEN, WAC_SEN)
                (SLB) . (SLB_SLB)
                (SLE) . (WAC_SLE)
                (SLV) . (SLV_SLV)
                (SOM) . (HOA_SOM)
                (SPP) . (SPP_SPP)
                (SSD) . (NLL_SSD)
                (SVK) . (DAN_SVK)
                (SVN) . (DAN_SVN)
                (SWE) . (SWE_SWE)
                (SWZ) . (SAC_SWZ)
                (SYR) . (EME_SYR, TIG_SYR)
                (TCD) . (LCB_TCD, NIG_TCD, SAH_TCD)
                (TGO) . (VOT_TGO)
                (THA) . (MEK_THA, TMM_THA)
                (TJK) . (AMD_TJK, SYD_TJK)
                (TKM) . (AMD_TKM, URA_TKM, WAI_TKM)
                (TLS) . (TLS_TLS)
                (TUN) . (NAC_TUN)
                (TUR) . (BLA_TUR, DAN_TUR, EME_TUR, TIG_TUR)
                (TZA) . (EAC_TZA, SAF_TZA, ZAM_TZA)
                (UGA) . (NLL_UGA)
                (UKP) . (UKP_UKP)
                (UKR) . (BLA_UKR, DAN_UKR, DNI_UKR)
                (URY) . (URU_URY)
                (USA) . (ALK_USA, ARK_USA, CAL_USA, COB_USA, COL_USA, GBA_USA, GLA_USA, HWI_USA, MIS_USA, MOU_USA, OHI_USA, RIG_USA, RWI_USA, SEU_USA, USN_USA, WGM_USA)
                (UZB) . (AMD_UZB, SYD_UZB)
                (VEN) . (ORI_VEN, RVE_VEN)
                (VNM) . (MEK_VNM, RVN_VNM, YRD_VNM)
                (VUT) . (VUT_VUT)
                (YEM) . (YEM_YEM)
                (ZAF) . (KAL_ZAF, LIM_ZAF, ORA_ZAF, SAC_ZAF)
                (ZMB) . (ZAM_ZMB)
                (ZWE) . (LIM_ZWE, SAF_ZWE, ZAM_ZWE)
                /

        activity
                /
                jbeef	Cattle
                jpork	Pigs
                jlamb	Sheep and Goats
                jpoul	Poultry
                jeggs	Eggs
                jmilk	Dairy
                jbarl	Barley
                jmaiz	Maize
                jmill	Millet
                jrice	Rice
                jrice2	Rice for water model
                jrice3	Rice for water model
                jsorg	Sorghum
                jwhea	Wheat
                jocer	Other Cereals
                jcass	Cassava and Other R&T
                jpota	Potato
                jswpt	Sweet Potatoes
                jyams	Yams
                jorat	Other Roots & Tubers
                jbean	Beans
                jchkp	Chickpeas
                jcowp	Cowpeas
                jlent	Lentils
                jpigp	Pigeonpeas
                jopul	Other Pulses
                jbana	Bananas
                jplnt	Plantains
                jsubf	(Sub)-Tropical Fruits
                jtemf	Temperate Fruits
                jvege	Vegetables
                jsugc	Sugarcane
                jsugb	Sugarbeet
                jsugr	Sugar
                jsugrc	Cane Sugar
                jsugrb	Beet Sugar
                jgrnd	Groundnuts
                jgdnt	Groundnuts for Oil
                jgdol	Groundnut oil
                jrpsd	Rapeseed
                jrpnt	Rapeseed for Oil
                jrpol	Rapeseed oil
                jsoyb	Soybeans
                jsbnt	Soybeans for Oil
                jsbol	Soybean oil
                jsnfl	Sunflower Seeds
                jsfnt	Sunflower seeds for Oil
                jsfol	Sunflower oil
                jpalm	Oil Palm Fruit
                jplol	Palm Oil
                jpkol	Palm Kernal Oil
                jtols	Total Other Oilseeds
                jtont	Total Other Oilseeds for Oil
                jtool	Total Other Oils
                jgdoln	Groundnut oil from gdnt
                jrpoln	Rapeseed oil from rpnt
                jsboln	Soybean Oil from sbnt
                jsfoln	Sunflower Oil from sfnt
                jtooln	Total Other oils from tont
                jgdolt	Groundnut oil from grnd
                jrpolt	Rapeseed oil from rpsd
                jsbolt	Soybean Oil from soyb
                jsfolt	Sunflower Oil from snfl
                jtoolt	Total other oils from tols
                jcoco	Cocoa
                jcafe	Coffee
                jcott	Cotton
                jteas	Tea
                jothr	Other Crops
                jfodr	Fodder Crops
                jpstr	Pasture and Meadows
                /

        activity_crop(activity)
                /
                jbarl	Barley
                jmaiz	Maize
                jmill	Millet
                jrice	Rice
                jsorg	Sorghum
                jwhea	Wheat
                jocer	Other Cereals
                jcass	Cassava and Other R&T
                jpota	Potato
                jswpt	Sweet Potatoes
                jyams	Yams
                jorat	Other Roots & Tubers
                jbean	Beans
                jchkp	Chickpeas
                jcowp	Cowpeas
                jlent	Lentils
                jpigp	Pigeonpeas
                jopul	Other Pulses
                jbana	Bananas
                jplnt	Plantains
                jsubf	(Sub)-Tropical Fruits
                jtemf	Temperate Fruits
                jvege	Vegetables
                jsugc	Sugarcane
                jsugb	Sugarbeet
                jsugr	Sugar
                jsugrc	Cane Sugar
                jsugrb	Beet Sugar
                jgrnd	Groundnuts
                jgdnt	Groundnuts for Oil
                jgdol	Groundnut oil
                jrpsd	Rapeseed
                jrpnt	Rapeseed for Oil
                jrpol	Rapeseed oil
                jsoyb	Soybeans
                jsbnt	Soybeans for Oil
                jsbol	Soybean oil
                jsnfl	Sunflower Seeds
                jsfnt	Sunflower seeds for Oil
                jsfol	Sunflower oil
                jpalm	Oil Palm Fruit
                jplol	Palm Oil
                jpkol	Palm Kernal Oil
                jtols	Total Other Oilseeds
                jtont	Total Other Oilseeds for Oil
                jtool	Total Other Oils
                jgdoln	Groundnut oil from gdnt
                jrpoln	Rapeseed oil from rpnt
                jsboln	Soybean Oil from sbnt
                jsfoln	Sunflower Oil from sfnt
                jtooln	Total Other oils from tont
                jgdolt	Groundnut oil from grnd
                jrpolt	Rapeseed oil from rpsd
                jsbolt	Soybean Oil from soyb
                jsfolt	Sunflower Oil from snfl
                jtoolt	Total other oils from tols
                jcoco	Cocoa
                jcafe	Coffee
                jcott	Cotton
                jteas	Tea
                jothr	Other Crops
                /
        
        commodity       Master set of all commodities
                /
                cbeef	Cattle
                cpork	Pigs
                clamb	Sheep and Goats
                cpoul	Poultry
                ceggs	Eggs
                cmilk	Dairy
                cbarl	Barley
                cmaiz	Maize
                cmill	Millet
                crice	Rice
                csorg	Sorghum
                cwhea	Wheat
                cocer	Other Cereals
                ccass	Cassava
                cpota	Potato
                cswpt	Sweet Potatoes
                cyams	Yams
                corat	Other Roots & Tubers
                cbean	Beans
                cchkp	Chickpeas
                ccowp	Cowpeas
                clent	Lentils
                cpigp	Pigeonpeas
                copul	Other Pulses
                cbana	Bananas
                cplnt	Plantains
                csubf	(Sub)-Tropical Fruits
                ctemf	Temperate Fruits
                cvege	Vegetables
                csugc	Sugarcane
                csugb	Sugarbeet
                csugr	Refined Sugar
                cgrnd	Groundnuts
                cgdnt	Groundnuts for Oil
                cgdol	Groundnut Oil
                cgdml	Groundnut Meal
                crpsd	Rapeseed
                crpnt	Rapeseed for Oil
                crpol	Rapeseed Oil
                crpml	Rapeseed Meal
                csoyb	Soybeans
                csbnt	Soybeans for Oil
                csbol	Soybean Oil
                csbml	Soybean Meal
                csnfl	Sunflower Seeds
                csfnt	Sunflower Seeds for Oil
                csfol	Sunflower Oil
                csfml	Sunflower Meal
                cpalm	Oil Palm Fruit
                cplol	Palm Oil
                cpkrl	Palm Kernal
                cpkol	Palm Kernal Oil
                cpkml	Palm Kernal Meal
                ctols	Total Other Oilseeds
                ctont	Total Other Oilseeds for Oil
                ctool	Total Other Oils
                ctoml	Total Other Oilseed Meal
                ccoco	Cocoa
                ccafe	Coffee
                ccott	Cotton
                cteas	Tea
                cothr	Other Crops
                cfodr	Fodders
                cgrss	Grass
                /

        activity2commodity(activity, commodity)         Activity to commodity mapping
                /
                (jbana)         .        (cbana)
                (jbarl)         .        (cbarl)
                (jbean)         .        (cbean)
                (jbeef)         .        (cbeef)
                (jcafe)         .        (ccafe)
                (jcass)         .        (ccass)
                (jchkp)         .        (cchkp)
                (jcoco)         .        (ccoco)
                (jcott)         .        (ccott)
                (jcowp)         .        (ccowp)
                (jeggs)         .        (ceggs)
                (jfodr)         .        (cfodr)
                (jgdol)         .        (cgdml)
                (jgdoln)        .        (cgdml)
                (jgdolt)        .        (cgdml)
                (jgdnt)         .        (cgdnt)
                (jgdol)         .        (cgdol)
                (jgdoln)        .        (cgdol)
                (jgdolt)        .        (cgdol)
                (jgrnd)         .        (cgrnd)
                (jpstr)         .        (cgrss)
                (jlamb)         .        (clamb)
                (jlent)         .        (clent)
                (jmaiz)         .        (cmaiz)
                (jmilk)         .        (cmilk)
                (jmill)         .        (cmill)
                (jocer)         .        (cocer)
                (jopul)         .        (copul)
                (jorat)         .        (corat)
                (jothr)         .        (cothr)
                (jpalm)         .        (cpalm)
                (jpigp)         .        (cpigp)
                (jpkol)         .        (cpkml)
                (jpkol)         .        (cpkol)
                (jplol)         .        (cpkrl)
                (jplnt)         .        (cplnt)
                (jplol)         .        (cplol)
                (jpork)         .        (cpork)
                (jpota)         .        (cpota)
                (jpoul)         .        (cpoul)
                (jrice)         .        (crice)
                (jrice2)        .        (crice)
                (jrice3)        .        (crice)
                (jrpol)         .        (crpml)
                (jrpoln)        .        (crpml)
                (jrpolt)        .        (crpml)
                (jrpnt)         .        (crpnt)
                (jrpol)         .        (crpol)
                (jrpoln)        .        (crpol)
                (jrpolt)        .        (crpol)
                (jrpsd)         .        (crpsd)
                (jsbol)         .        (csbml)
                (jsboln)        .        (csbml)
                (jsbolt)        .        (csbml)
                (jsbnt)         .        (csbnt)
                (jsbol)         .        (csbol)
                (jsboln)        .        (csbol)
                (jsbolt)        .        (csbol)
                (jsfol)         .        (csfml)
                (jsfoln)        .        (csfml)
                (jsfolt)        .        (csfml)
                (jsfnt)         .        (csfnt)
                (jsfol)         .        (csfol)
                (jsfoln)        .        (csfol)
                (jsfolt)        .        (csfol)
                (jsnfl)         .        (csnfl)
                (jsorg)         .        (csorg)
                (jsoyb)         .        (csoyb)
                (jsubf)         .        (csubf)
                (jsugb)         .        (csugb)
                (jsugc)         .        (csugc)
                (jsugr)         .        (csugr)
                (jsugrb)        .        (csugr)
                (jsugrc)        .        (csugr)
                (jswpt)         .        (cswpt)
                (jteas)         .        (cteas)
                (jtemf)         .        (ctemf)
                (jtols)         .        (ctols)
                (jtool)         .        (ctoml)
                (jtooln)        .        (ctoml)
                (jtoolt)        .        (ctoml)
                (jtont)         .        (ctont)
                (jtool)         .        (ctool)
                (jtooln)        .        (ctool)
                (jtoolt)        .        (ctool)
                (jvege)         .        (cvege)
                (jwhea)         .        (cwhea)
                (jyams)         .        (cyams)
                /        
        
        irr             All Irrigation
                / air, arf, gir, grf/

        irr_agr(irr)    Agricultural Irrigation
                / air, arf /

;

* Initialize dynamic sets
fpu2(fpu) = yes;
iso2(iso) = yes;

*#### Time sets
sets 
        t_all
                / 1990 * 2100 /
        time_annual(t_all)
                / 2015 * 2020 /
        t(time_annual)
                / 2015 * 2016 /
;

set  ct(t) Current time period;
set pt(t) Previous time period;

alias(t,t2);
