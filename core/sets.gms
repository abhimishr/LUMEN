*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use model 
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  License Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

sets

        type GAMS variable attribute used for the output 
                / level, marginal, upper, lower /

        fpu     Impact FPUs
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
;

sets
        fpu2(fpu) Fpus dynamic
;

* Initialize dynamic sets
fpu2(fpu) = yes;

*#### Time sets
sets 
        time_annual
                / 2000 * 2005 /
        t(time_annual)
                / 2000 * 2002 /
;

set  ct(t) Current time period;
set pt(t) Previous time period;

alias(t,t2);
