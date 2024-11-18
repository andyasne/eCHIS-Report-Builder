
-- ANC_1stV_GA.1:ANC:Total Number of pregnant women that received ANC First visit by gestational week
ELSIF p_indic_name = 'indic_pregnant_women_received_ANC_First_visit_by_gestational_week' THEN
       
        pregnant_women_received_ANC_First_visit_by_gestational_week := 1;
    END IF;
   
-- Mal_Pos.1:CDC:Number of slides or RDT positive for malaria
ELSIF p_indic_name = 'indic_Number_of_slides_or_RDT_positive_for_malaria' THEN
       
        Number_of_slides_or_RDT_positive_for_malaria := 1;
    END IF;
   
-- ANC_1stV_GA.1.1:ANC:<16 weeks gestation
ELSIF p_indic_name = 'indic_pregnant_women_received_ANC_First_visit_by_gw_less_than_16' THEN
       
        pregnant_women_received_ANC_First_visit_by_gw_less_than_16 := 1;
    END IF;
   
-- ANC_1stV_GA.1.2:ANC:>16 weeks gestation
ELSIF p_indic_name = 'indic_pregnant_women_received_ANC_First_visit_by_gw_geq_to_16' THEN
       
        pregnant_women_received_ANC_First_visit_by_gw_geq_to_16 := 1;
    END IF;
   
-- ANC_1stV_MA.1.1:ANC:Pregnant women aged 10 to 14 years that received ANC first visit
ELSIF p_indic_name = 'indic_ANC_1stV_MA_1_1' THEN
       
        ANC_1stV_MA_1_1 := 1;
    END IF;
   
-- ANC_1stV_MA.1.2:ANC:Pregnant women aged 15 to 19 years that received ANC first visit
ELSIF p_indic_name = 'indic_ANC_1stV_MA_1_2' THEN
       
        ANC_1stV_MA_1_2 := 1;
    END IF;
   
-- ANC_1stV_MA.1.3:ANC:Pregnant women above 20 years that received ANC first visit
ELSIF p_indic_name = 'indic_ANC_1stV_MA_1_3' THEN
       
        ANC_1stV_MA_1_3 := 1;
    END IF;
   
-- ANC_1stV_MA.1:ANC:Number of pregnant women that received ANC first visit by maternal age
ELSIF p_indic_name = 'indic_number_of_pregnant_received_anc_first_visit' THEN
       
        number_of_pregnant_received_anc_first_visit := 1;
    END IF;
   
-- PNC_E1stV.1:Birth Attendants (BA):Number of postnatal visits within 7 days of delivery
ELSIF p_indic_name = 'indic_number_of_postnatal_visits_within_7_days' THEN
       
        number_of_postnatal_visits_within_7_days := 1;
    END IF;
   
-- EPI_BCG1:Immunization (EPI):Number of children under one yr of age who have received BCG vaccine
ELSIF p_indic_name = 'indic_number_of_children_under_one_yr_received_bcg' THEN
       
        number_of_children_under_one_yr_received_bcg := 1;
    END IF;
   
-- EPI_MCV2.1:Immunization (EPI):Number of children under two yr of age who have received measles second dose vaccine
ELSIF p_indic_name = 'indic_number_of_children_under_two_yr_measles_second_dose' THEN
       
        number_of_children_under_two_yr_measles_second_dose := 1;
    END IF;
   
-- EPI_HPV1.1:Immunization (EPI):Number of girls 9 yr of age who have received first dose of human papilloma virus vaccine
ELSIF p_indic_name = 'indic_number_of_girls_9yr_received_first_dose_of_human_papilloma' THEN
       
        number_of_girls_9yr_received_first_dose_of_human_papilloma := 1;
    END IF;
   
-- MV_TT1.1:Immunization (EPI):Number of women who have received TT1 vaccination
ELSIF p_indic_name = 'indic_Number_of_women_who_have_received_TT1_vaccination' THEN
       
        Number_of_women_who_have_received_TT1_vaccination := 1;
    END IF;
   
-- MV_TT2.1:Immunization (EPI):Number of women who have received TT2 vaccination
ELSIF p_indic_name = 'indic_Number_of_women_who_have_received_TT2_vaccination' THEN
       
        Number_of_women_who_have_received_TT2_vaccination := 1;
    END IF;
   
-- MV.TT3.1:Immunization (EPI):Number of women who have received TT3 vaccination
ELSIF p_indic_name = 'indic_Number_of_women_who_have_received_TT3_vaccination' THEN
       
        Number_of_women_who_have_received_TT3_vaccination := 1;
    END IF;
   
-- MV.TT4.1:Immunization (EPI):Number of women who have received TT4 vaccination
ELSIF p_indic_name = 'indic_Number_of_women_who_have_received_TT4_vaccination' THEN
       
        Number_of_women_who_have_received_TT4_vaccination := 1;
    END IF;
   
-- MV.TT5.1:Immunization (EPI):Number of women who have received TT5 vaccination
ELSIF p_indic_name = 'indic_Number_of_women_who_have_received_TT5_vaccination' THEN
       
        Number_of_women_who_have_received_TT5_vaccination := 1;
    END IF;
   
-- CHIM_DhRX.1:Child Health:Treated by ORS & Zinc
ELSIF p_indic_name = 'indic_children_who_treated_for_diarrhea_by_ors_and_zinc' THEN
       
        children_who_treated_for_diarrhea_by_ors_and_zinc := 1;
    END IF;
   
-- CHIM_DhRX.2:Child Health:Treated by ORS only
ELSIF p_indic_name = 'indic_children_who_treated_for_diarrhea_by_ors' THEN
       
        children_who_treated_for_diarrhea_by_ors := 1;
    END IF;
   
-- RMH_FP_CAR:Family Planning:Contraceptive acceptANCe rate
ELSIF p_indic_name = 'indic_fp_contraceptive_acceptance_rate' THEN
       
        fp_contraceptive_acceptance_rate := 1;
    END IF;
   
-- FP_CAR_Age.1.1:Family Planning:10-14 yr
ELSIF p_indic_name = 'indic_fp_new_at_10_to_14' THEN
       
        fp_new_at_10_to_14 := 1;
    END IF;
   
-- FP_CAR_Age.1.2:Family Planning:15-19 yr
ELSIF p_indic_name = 'indic_fp_new_at_15_to_19' THEN
       
        fp_new_at_15_to_19 := 1;
    END IF;
   
-- FP_CAR_Age.1.3:Family Planning:20 - 24 yr
ELSIF p_indic_name = 'indic_fp_new_at_20_to_24' THEN
       
        fp_new_at_20_to_24 := 1;
    END IF;
   
-- FP_CAR_Age.1.4:Family Planning:25 -29 yr
ELSIF p_indic_name = 'indic_fp_new_at_25_to_29' THEN
       
        fp_new_at_25_to_29 := 1;
    END IF;
   
-- FP_CAR_Age.1.5:Family Planning:30 -49 yr
ELSIF p_indic_name = 'indic_fp_new_at_30_to_49' THEN
       
        fp_new_at_30_to_49 := 1;
    END IF;
   
-- FP_CAR_Age.2.1:Family Planning:10-14 yr
ELSIF p_indic_name = 'indic_fp_repeat_at_10_to_14' THEN
       
        fp_repeat_at_10_to_14 := 1;
    END IF;
   
-- FP_CAR_Age.2.2:Family Planning:15-19 yr
ELSIF p_indic_name = 'indic_fp_repeat_at_15_to_19' THEN
       
        fp_repeat_at_15_to_19 := 1;
    END IF;
   
-- FP_CAR_Age.2.3:Family Planning:20 - 24 yr
ELSIF p_indic_name = 'indic_fp_repeat_at_20_to_24' THEN
       
        fp_repeat_at_20_to_24 := 1;
    END IF;
   
-- FP_CAR_Age.2.4:Family Planning:25 -29 yr
ELSIF p_indic_name = 'indic_fp_repeat_at_25_to_29' THEN
       
        fp_repeat_at_25_to_29 := 1;
    END IF;
   
-- FP_CAR_Age.2.5:Family Planning:30 -49 yr
ELSIF p_indic_name = 'indic_fp_repeat_at_30_to_49' THEN
       
        fp_repeat_at_30_to_49 := 1;
    END IF;
   
-- FP_CAR_Mtd.1.1:Family Planning:Oral contraceptives
ELSIF p_indic_name = 'indic_fp_new_oral_contraceptives' THEN
       
        fp_new_oral_contraceptives := 1;
    END IF;
   
-- FP_CAR_Mtd.1.2:Family Planning:Injectable
ELSIF p_indic_name = 'indic_fp_new_injectables' THEN
       
        fp_new_injectables := 1;
    END IF;
   
-- FP_CAR_Mtd.1.3:Family Planning:Implants
ELSIF p_indic_name = 'indic_fp_new_implants' THEN
       
        fp_new_implants := 1;
    END IF;
   
-- FP_CAR_Mtd.1.4:Family Planning:IUCD
ELSIF p_indic_name = 'indic_fp_new_iucd' THEN
       
        fp_new_iucd := 1;
    END IF;
   
-- FP_CAR_Mtd.2.1:Family Planning:Oral contraceptives
ELSIF p_indic_name = 'indic_fp_repeat_oral_contraceptives' THEN
       
        fp_repeat_oral_contraceptives := 1;
    END IF;
   
-- FP_CAR_Mtd.2.2:Family Planning:Injectable
ELSIF p_indic_name = 'indic_fp_repeat_injectables' THEN
       
        fp_repeat_injectables := 1;
    END IF;
   
-- FP_CAR_Mtd.2.3:Family Planning:Implants
ELSIF p_indic_name = 'indic_fp_repeat_implants' THEN
       
        fp_repeat_implants := 1;
    END IF;
   
-- FP_CAR_Mtd.2.4:Family Planning:IUCD
ELSIF p_indic_name = 'indic_fp_repeat_iucd' THEN
       
        fp_repeat_iucd := 1;
    END IF;
   
-- FP_IPPF_Age.1:Family Planning:10-14 yr
ELSIF p_indic_name = 'indic_fp_at_10_to_14' THEN
       
        fp_at_10_to_14 := 1;
    END IF;
   
-- FP_IPPF_Age.2:Family Planning:15-19 yr
ELSIF p_indic_name = 'indic_fp_at_15_to_19' THEN
       
        fp_at_15_to_19 := 1;
    END IF;
   
-- FP_IPPF_Age.3:Family Planning:20 - 24 yr
ELSIF p_indic_name = 'indic_fp_at_20_to_24' THEN
       
        fp_at_20_to_24 := 1;
    END IF;
   
-- FP_IPPF_Age.4:Family Planning:25 -29 yr
ELSIF p_indic_name = 'indic_fp_at_25_to_29' THEN
       
        fp_at_25_to_29 := 1;
    END IF;
   
-- FP_IPPF_Age.5:Family Planning:30-49 yr
ELSIF p_indic_name = 'indic_fp_at_30_to_49' THEN
       
        fp_at_30_to_49 := 1;
    END IF;
   
-- FP_IPPF_Mtd.1:Family Planning:Pills(POP)
ELSIF p_indic_name = 'indic_fp_oral_contraceptives' THEN
       
        fp_oral_contraceptives := 1;
    END IF;
   
-- FP_IPPF_Mtd.2:Family Planning:Implants
ELSIF p_indic_name = 'indic_fp_implants' THEN
       
        fp_implants := 1;
    END IF;
   
-- FP_IPPF_Mtd.3:Family Planning:IUCD
ELSIF p_indic_name = 'indic_fp_iucd' THEN
       
        fp_iucd := 1;
    END IF;
   
-- L&D_SBR.SB:Birth Attendants (BA):Number of still births
ELSIF p_indic_name = 'indic_still_births' THEN
       
        still_births := 1;
    END IF;
   
-- L&D_SBR.LB:Birth Attendants (BA):Number of Live births
ELSIF p_indic_name = 'indic_still_live' THEN
       
        still_live := 1;
    END IF;
   
-- PNC_E1stV.1.1:Birth Attendants (BA):Early first postnatal care attendANCes 0-24 hrs
ELSIF p_indic_name = 'indic_postnatal_0_24' THEN
       
        postnatal_0_24 := 1;
    END IF;
   
-- PNC_E1stV.1.3:Birth Attendants (BA):Early first postnatal care attendANCes 25-48 hrs
ELSIF p_indic_name = 'indic_postnatal_25_48' THEN
       
        postnatal_25_48 := 1;
    END IF;
   
-- PNC_E1stV.1.4:Birth Attendants (BA):Early first postnatal care attendANCes49-72 hrs
ELSIF p_indic_name = 'indic_postnatal_49_72' THEN
       
        postnatal_49_72 := 1;
    END IF;
   
-- PNC_E1stV.1.5:Birth Attendants (BA):Early first postnatal care attendANCes 73hrs-7 days
ELSIF p_indic_name = 'indic_postnatal_73_168' THEN
       
        postnatal_73_168 := 1;
    END IF;
   
-- CMD_CMMR.1.1:Birth Attendants (BA):Number of maternal deaths at home
ELSIF p_indic_name = 'indic_deaths_of_home' THEN
       
        deaths_of_home := 1;
    END IF;
   
-- CMD_CMMR.1.2:Birth Attendants (BA):Number of maternal deaths on the way to health facility
ELSIF p_indic_name = 'indic_deaths_on_the_way' THEN
       
        deaths_on_the_way := 1;
    END IF;
   
-- CMD_CMMR.1.3:Birth Attendants (BA):Number of maternal deaths at health post
ELSIF p_indic_name = 'indic_deaths_at_health_post' THEN
       
        deaths_at_health_post := 1;
    END IF;
   
-- EPI_Penta1.1:Immunization (EPI):Number of children under one yr of age who have received first dose of pentavalent vaccine
ELSIF p_indic_name = 'indic_penta1' THEN
       
        penta1 := 1;
    END IF;
   
-- EPI_Penta3.1:Immunization (EPI):Number of children under one yr of age who have received third dose of pentavalent vaccine
ELSIF p_indic_name = 'indic_penta3' THEN
       
        penta3 := 1;
    END IF;
   
-- EPI_PCV1.1:Immunization (EPI):Number of children under one yr of age who have received first dose of pneumococcal vaccine
ELSIF p_indic_name = 'indic_pcv1' THEN
       
        pcv1 := 1;
    END IF;
   
-- EPI_PCV3.1:Immunization (EPI):Number of children under one yr of age who have received third dose of pneumococcal vaccine
ELSIF p_indic_name = 'indic_pcv3' THEN
       
        pcv3 := 1;
    END IF;
   
-- EPI_IPV.1:Immunization (EPI):Number of children under one yr of age who have received one dose of inactivated polio vaccine
ELSIF p_indic_name = 'indic_ipv' THEN
       
        ipv := 1;
    END IF;
   
-- EPI_RT1.1:Immunization (EPI):Number of children under one yr of age who have received first dose of Rotavirus vaccine
ELSIF p_indic_name = 'indic_rota1' THEN
       
        rota1 := 1;
    END IF;
   
-- EPI_RT1.2:Immunization (EPI):Number of children under one yr of age who have received 2nd dose of Rotavirus vaccine
ELSIF p_indic_name = 'indic_rota2' THEN
       
        rota2 := 1;
    END IF;
   
-- EPI_MCV1.1:Immunization (EPI):Number of children under one yr of age who have received first dose of measles vaccine
ELSIF p_indic_name = 'indic_measles_1' THEN
       
        measles_1 := 1;
    END IF;
   
-- s#check#
ELSIF p_indic_name = 'indic_infants_whose_mother' THEN
       
        infants_whose_mother := 1;
    END IF;
   
-- NCH_LB_kebele:Child Health:Total number of live births in the kebele
ELSIF p_indic_name = 'indic_total_births_in_kebele' THEN
       
        total_births_in_kebele := 1;
    END IF;
   
-- None
ELSIF p_indic_name = 'indic_FP_CAR_Mtd_2_7' THEN
       
        FP_CAR_Mtd_2_7 := 1;
    END IF;
   
-- None
ELSIF p_indic_name = 'indic_FP_IPPF_Mtd_5' THEN
       
        FP_IPPF_Mtd_5 := 1;
    END IF;
   
-- Mal_DX1:CDC:Total number of slides or RDT performed for malaria diagnosis
ELSIF p_indic_name = 'indic_Mal_DX1' THEN
       
        Mal_DX1 := 1;
    END IF;
   
-- L&D_SBA.1:Birth Attendants (BA):Total Number of births attended by level IV HEW and nurses at Health post
ELSIF p_indic_name = 'indic_L_D_SBA_1' THEN
       
        L_D_SBA_1 := 1;
    END IF;
   
-- CHIM_PnRX.1:Child Health:Number of under 5 children treated for pneumonia
ELSIF p_indic_name = 'indic_number_of_under_5__pnemonia' THEN
       
        number_of_under_5__pnemonia := 1;
    END IF;
   
-- CHIM_VSD.1:Child Health:Number of sick young infants 0-2 months treated for sepsis
ELSIF p_indic_name = 'indic_CHIM_VSD_1' THEN
       
        CHIM_VSD_1 := 1;
    END IF;
   
-- CHIM_VSD.2:Child Health:Number of sick young infants 0-2 months treated for local bacterial infection(LBI)
ELSIF p_indic_name = 'indic_CHIM_VSD_2' THEN
       
        CHIM_VSD_2 := 1;
    END IF;
   
-- CHIM_ECND.2.1:Child Health:Early neonatal death at home
ELSIF p_indic_name = 'indic_CHIM_ECND_2_1' THEN
       
        CHIM_ECND_2_1 := 1;
    END IF;
   
-- CHIM_ECND.2.2:Child Health:Early neonatal death at HP
ELSIF p_indic_name = 'indic_CHIM_ECND_2_2' THEN
       
        CHIM_ECND_2_2 := 1;
    END IF;
   
-- CHIM_ECND.2.3:Child Health:Early neonatal death on the way to health facility
ELSIF p_indic_name = 'indic_CHIM_ECND_2_3' THEN
       
        CHIM_ECND_2_3 := 1;
    END IF;
   
-- CHIM_ECND.1.1:Child Health:Number of neonatal deaths in the first 24 hrs of life/community/
ELSIF p_indic_name = 'indic_CHIM_ECND_1_1' THEN
       
        CHIM_ECND_1_1 := 1;
    END IF;
   
-- CHIM_ECND.1.2:Child Health:Number of neonatal deaths between 1 -7 days of life/community
ELSIF p_indic_name = 'indic_CHIM_ECND_1_2' THEN
       
        CHIM_ECND_1_2 := 1;
    END IF;
   
-- CHIM_ECND.1:Child Health:Early neonatal death at community dis aggregated by time of death
ELSIF p_indic_name = 'indic_CHIM_ECND_1' THEN
       
        CHIM_ECND_1 := 1;
    END IF;
   
-- ANC_4thV_MA.1.3:ANC:> 20 yr
ELSIF p_indic_name = 'indic_antenatal_care_coverage_four_visits_from_gte_20_yr' THEN
       
        antenatal_care_coverage_four_visits_from_gte_20_yr := 1;
    END IF;
   
-- ANC_4thV_MA.1.1:ANC:Pregnant women aged 10 to 14 years that received four ANC visits
ELSIF p_indic_name = 'indic_ANC_4thV_MA_1_1' THEN
       
        ANC_4thV_MA_1_1 := 1;
    END IF;
   
-- ANC_4thV_MA.1.2:Family Planning:15-19 yr
ELSIF p_indic_name = 'indic_antenatal_care_coverage_four_visits_from_15_19_yr' THEN
       
        antenatal_care_coverage_four_visits_from_15_19_yr := 1;
    END IF;
   
-- ANC_4thV_MA.1:ANC:Total number of pregnant women that received four antenatal care visits dis aggregated by maternal age
ELSIF p_indic_name = 'indic_number_of_pregnant_received_anc_four_visit' THEN
       
        number_of_pregnant_received_anc_four_visit := 1;
    END IF;
   
-- CHIM_ECND.2:Child Health:Early neonatal death at community dis aggregated by place of death
ELSIF p_indic_name = 'indic_deaths_first_seven_days' THEN
       
        deaths_first_seven_days := 1;
    END IF;
   
-- NCH_CHIM_PnRX:Under-five children with pneumonia received antibiotic treatment
ELSIF p_indic_name = 'indic_nch_chim_pnrx' THEN
       
        nch_chim_pnrx := 1;
    END IF;
   
-- NCH_CHIM_VSD:Sick Young infant treated for sepsis / VSD (Very Severe Disease )
ELSIF p_indic_name = 'indic_nch_chim_vsd' THEN
       
        nch_chim_vsd := 1;
    END IF;
   
-- NCH_CHIM_DhRX:Proportion of children who are treated for Diarrhea
ELSIF p_indic_name = 'indic_nch_chim_dhrx' THEN
       
        nch_chim_dhrx := 1;
    END IF;
   
-- NCH_CHIM_AsfxRS.2:Asphyxiated neonates who were resuscitated (with bag & mask) and survived
ELSIF p_indic_name = 'indic_nch_chim_asfxrs' THEN
       
        nch_chim_asfxrs := 1;
    END IF;
   
-- NCH_CHIM_ECND:Child Health:Early neonatal death at community **************
ELSIF p_indic_name = 'indic_nch_chim_ecnd' THEN
       
        nch_chim_ecnd := 1;
    END IF;
   
-- Contraceptive new acceptors by method - Others(MAT_CAR_Mtd17):Family Planning 
ELSIF p_indic_name = 'indic_MAT_CAR_Mtd_1_7' THEN
       
        MAT_CAR_Mtd_1_7 := 1;
    END IF;
   
-- Contraceptive repeat acceptors by method - Others(MAT_CAR_Mtd27):Family Planning 
ELSIF p_indic_name = 'indic_MAT_CAR_Mtd_2_7' THEN
       
        MAT_CAR_Mtd_2_7 := 1;
    END IF;
   
-- Total Immediate Postpartum Contraceptive acceptors disaggregated by method - Others(FP_IPPF_Mtd5):Family Planning 
ELSIF p_indic_name = 'indic_FP_IPPF_Mtd_5_' THEN
       
        FP_IPPF_Mtd_5_ := 1;
    END IF;
   
-- Total number of premature removal of LAFP within 6 month insertion - Implants(MAT_LAFPPR11):Family Planning 
ELSIF p_indic_name = 'indic_MAT_LAFPPR_1_1' THEN
       
        MAT_LAFPPR_1_1 := 1;
    END IF;
   
-- Total number of premature removal of LAFP within 6 month insertion - IUCD(MAT_LAFPPR.1. 2):Family Planning 
ELSIF p_indic_name = 'indic_MAT_LAFPPR_1_2' THEN
       
        MAT_LAFPPR_1_2 := 1;
    END IF;
   
-- Total number of premature removal of LAFP within 6 month insertion - Others(MAT_LAFPPR.1. 3):Family Planning 
ELSIF p_indic_name = 'indic_MAT_LAFPPR_1_3' THEN
       
        MAT_LAFPPR_1_3 := 1;
    END IF;
   
-- Total number of premature removal of LAFP within 6 month insertion - Total LAFP removal in the reporting period(MAT_TLAFPR.):Family Planning 
ELSIF p_indic_name = 'indic_MAT_TLAFPR_' THEN
       
        MAT_TLAFPR_ := 1;
    END IF;
   
-- Total Number of pregnant women that received antenatal care First contact by gestational week - <= 12 weeks(MAT_ANC1_GA.1. 1):ANC 
ELSIF p_indic_name = 'indic_MAT_ANC1_GA_1_1' THEN
       
        MAT_ANC1_GA_1_1 := 1;
    END IF;
   
-- Total number of pregnant women that received four or more antenatal care contacts by gestational week - <= 30 weeks(MAT_ANC4+_GA.1. 1):ANC 
ELSIF p_indic_name = 'indic_MAT_ANC4__GA_1_1' THEN
       
        MAT_ANC4__GA_1_1 := 1;
    END IF;
   
-- Total number of pregnant women that received four or more antenatal care contacts by gestational week - > 30 weeks(MAT_ANC4+_GA.1. 2):ANC 
ELSIF p_indic_name = 'indic_MAT_ANC4__GA_1_2' THEN
       
        MAT_ANC4__GA_1_2 := 1;
    END IF;
   
-- Birth and Death Notifications - Number of Community birth notifications given(MAT_B&D_CBN_1.):Birth Attendants (BA) 
ELSIF p_indic_name = 'indic_MAT_B_D_CBN_1_' THEN
       
        MAT_B_D_CBN_1_ := 1;
    END IF;
   
-- Birth and Death Notifications - Number of Community death notifications given(MAT_B&D_CDN_2.):Birth Attendants (BA) 
ELSIF p_indic_name = 'indic_MAT_B_D_CDN_2_' THEN
       
        MAT_B_D_CDN_2_ := 1;
    END IF;
   
-- Number of postnatal visits within 7 days of delivery - Number of postnatal visits within 7 days of delivery(MAT_EPNC.1):Birth Attendants (BA) 
ELSIF p_indic_name = 'indic_MAT_EPNC_1' THEN
       
        MAT_EPNC_1 := 1;
    END IF;
   
-- Number of postnatal visits within 7 days of delivery - 0 - 24 hrs(MAT_EPNC.1. 1):Birth Attendants (BA) 
ELSIF p_indic_name = 'indic_MAT_EPNC_1_1' THEN
       
        MAT_EPNC_1_1 := 1;
    END IF;
   
-- Number of postnatal visits within 7 days of delivery - 25 - 48 hrs (1 - 2 days)(MAT_EPNC.1. 3):Birth Attendants (BA) 
ELSIF p_indic_name = 'indic_MAT_EPNC_1_3' THEN
       
        MAT_EPNC_1_3 := 1;
    END IF;
   
-- Number of postnatal visits within 7 days of delivery - 49 - 72 hrs (2 - 3 days)(MAT_EPNC.1. 4):Birth Attendants (BA) 
ELSIF p_indic_name = 'indic_MAT_EPNC_1_4' THEN
       
        MAT_EPNC_1_4 := 1;
    END IF;
   
-- Number of postnatal visits within 7 days of delivery - 73 hrs - 7 days (4 - 7 days)(MAT_EPNC.1. 5):Birth Attendants (BA) 
ELSIF p_indic_name = 'indic_MAT_EPNC_1_5' THEN
       
        MAT_EPNC_1_5 := 1;
    END IF;
   
-- Neonatal death at community disaggregated by place of death - Total number of live births in the kebele(CH_CND_LB_kebele.):Child Health 
ELSIF p_indic_name = 'indic_CH_CND_LB_kebele_' THEN
       
        CH_CND_LB_kebele_ := 1;
    END IF;
   
-- Number of sick young infants 0-2 months treated for Critical illness - Treated for Pneumonia(CH_TX_SYI.1. 3):Child Health 
ELSIF p_indic_name = 'indic_CH_TX_SYI_1_3' THEN
       
        CH_TX_SYI_1_3 := 1;
    END IF;
   
-- Asphyxiated neonates who were resuscitated (with bag & mask) and survived - Total number of neonates resuscitated(CH_ASPH.2.):Child Health 
ELSIF p_indic_name = 'indic_CH_ASPH_2_' THEN
       
        CH_ASPH_2_ := 1;
    END IF;
   
-- Newborns that received at least one dose of CHX to the cord on the first day after birth - Number of Newborns that received at least one dose of CHX to the cord on the first day after birth(CH_CHX.1.):Child Health 
ELSIF p_indic_name = 'indic_CH_CHX_1_' THEN
       
        CH_CHX_1_ := 1;
    END IF;
   
-- Number of Live births who receive a HepB-Birth dose(BD) - Number of children under one year of age who have received first dose of polio vaccine(EPI_OPV1.1.):EPI 
ELSIF p_indic_name = 'indic_EPI_OPV1_1_' THEN
       
        EPI_OPV1_1_ := 1;
    END IF;
   
-- Number of Live births who receive a HepB-Birth dose(BD) - Number of children under one year of age who have received third dose of Polio vaccine(EPI_OPV3.1.):EPI 
ELSIF p_indic_name = 'indic_EPI_OPV3_1_' THEN
       
        EPI_OPV3_1_ := 1;
    END IF;
   
-- Number of Live births who receive a HepB-Birth dose(BD) - Number of children received all vaccine doses before 1st birthday(EPI_FI.1.):EPI 
ELSIF p_indic_name = 'indic_EPI_FI_1_' THEN
       
        EPI_FI_1_ := 1;
    END IF;
   
-- BCG Vaccine wastage rate - BCG doses given (all ages)(EPI_VWR_BCG_giv.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_BCG_giv_' THEN
       
        EPI_VWR_BCG_giv_ := 1;
    END IF;
   
-- BCG Vaccine wastage rate - BCG doses damaged(EPI_VWR_BCG_dam.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_BCG_dam_' THEN
       
        EPI_VWR_BCG_dam_ := 1;
    END IF;
   
-- BCG Vaccine wastage rate - BCG doses expired(EPI_VWR_BCG_dis.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_BCG_dis_' THEN
       
        EPI_VWR_BCG_dis_ := 1;
    END IF;
   
-- Penta Vaccine wastage rate - Pentavalent (DPT-HepB-Hib) doses given (all ages)(EPI_VWR_Penta_giv.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_Penta_giv_' THEN
       
        EPI_VWR_Penta_giv_ := 1;
    END IF;
   
-- Penta Vaccine wastage rate - Pentavalent (DPT-HepB-Hib) doses damaged(EPI_VWR_Penta_dam.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_Penta_dam_' THEN
       
        EPI_VWR_Penta_dam_ := 1;
    END IF;
   
-- Penta Vaccine wastage rate - Pentavalent (DPT-HepB-Hib) doses expired(EPI_VWR_Penta_dis.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_Penta_dis_' THEN
       
        EPI_VWR_Penta_dis_ := 1;
    END IF;
   
-- PCV Vaccine wastage rate - Pneumococcal conjugated vaccine doses given(EPI_VWR_PCV_giv.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_PCV_giv_' THEN
       
        EPI_VWR_PCV_giv_ := 1;
    END IF;
   
-- PCV Vaccine wastage rate - Pneumococcal conjugated vaccine doses damaged(EPI_VWR_PCV_dam.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_PCV_dam_' THEN
       
        EPI_VWR_PCV_dam_ := 1;
    END IF;
   
-- PCV Vaccine wastage rate - Pneumococcal conjugated vaccine doses expired(EPI_VWR_PCV-dis.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_PCV_dis_' THEN
       
        EPI_VWR_PCV_dis_ := 1;
    END IF;
   
-- Rota Vaccine wastage rate - Rota doses give (all ages)(EPI_VWR_RT_giv.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_RT_giv_' THEN
       
        EPI_VWR_RT_giv_ := 1;
    END IF;
   
-- Rota Vaccine wastage rate - Rota doses damaged(EPI_VWR_RT_dam.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_RT_dam_' THEN
       
        EPI_VWR_RT_dam_ := 1;
    END IF;
   
-- Rota Vaccine wastage rate - Rota doses expired(EPI_VWR_RT_dis.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_RT_dis_' THEN
       
        EPI_VWR_RT_dis_ := 1;
    END IF;
   
-- Polio Vaccine wastage rate - Polio doses given (all ages)(EPI_VWR_PV_giv.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_PV_giv_' THEN
       
        EPI_VWR_PV_giv_ := 1;
    END IF;
   
-- Polio Vaccine wastage rate - Polio doses damaged(EPI_VWR_PV_dam.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_PV_dam_' THEN
       
        EPI_VWR_PV_dam_ := 1;
    END IF;
   
-- Polio Vaccine wastage rate - Polio doses expired(EPI_VWR_PV_dis.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_PV_dis_' THEN
       
        EPI_VWR_PV_dis_ := 1;
    END IF;
   
-- Measles Vaccine wastage rate - Measles doses given (all ages)(EPI_VWR_MCV_giv.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_MCV_giv_' THEN
       
        EPI_VWR_MCV_giv_ := 1;
    END IF;
   
-- Measles Vaccine wastage rate - Measles doses damaged(EPI_VWR_MCV_dam.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_MCV_dam_' THEN
       
        EPI_VWR_MCV_dam_ := 1;
    END IF;
   
-- Measles Vaccine wastage rate - Measles doses expired(EPI_VWR_MCV_dis.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_MCV_dis_' THEN
       
        EPI_VWR_MCV_dis_ := 1;
    END IF;
   
-- IPV Vaccine wastage rate - IPV doses given(EPI_VWR_IPV_giv.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_IPV_giv_' THEN
       
        EPI_VWR_IPV_giv_ := 1;
    END IF;
   
-- IPV Vaccine wastage rate - IPV doses damaged(EPI_VWR_IPV_dam.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_IPV_dam_' THEN
       
        EPI_VWR_IPV_dam_ := 1;
    END IF;
   
-- IPV Vaccine wastage rate - IPV doses expired(EPI_VWR_IPV_dis.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_IPV_dis_' THEN
       
        EPI_VWR_IPV_dis_ := 1;
    END IF;
   
-- HPV Vaccine wastage rate - HPV doses given(EPI_VWR_HPV_giv.):EPI
ELSIF p_indic_name = 'indic_EPI_VWR_HPV_giv_' THEN
       
        EPI_VWR_HPV_giv_ := 1;
    END IF;
   
-- Lymphedema suspected on Screening  @@@ [NTD and NCD Datasource 1 ]
ELSIF p_indic_name = 'indic_suspected_lymphedema' THEN
       
        suspected_lymphedema := 1;
    END IF;
   
-- Lymphedema suspected on Screening and Referral
ELSIF p_indic_name = 'indic_refered_suspected_lymphedema' THEN
       
        refered_suspected_lymphedema := 1;
    END IF;
   
-- Trachomatous Trichiasis Suspected on Screening
ELSIF p_indic_name = 'indic_suspected_trachomatous_trichiasis' THEN
       
        suspected_trachomatous_trichiasis := 1;
    END IF;
   
-- Refered Trachomatous Trichiasis Suspected on Screening
ELSIF p_indic_name = 'indic_refered_trachomatous_trichiasis' THEN
       
        refered_trachomatous_trichiasis := 1;
    END IF;
   
-- Cutaneous leishmaniasis Suspected on Screening
ELSIF p_indic_name = 'indic_suspected_Cutaneous_leishmaniasis' THEN
       
        suspected_Cutaneous_leishmaniasis := 1;
    END IF;
   
-- Refered :Cutaneous leishmaniasis Suspected on Screening 
ELSIF p_indic_name = 'indic_refered_suspected_Cutaneous_leishmaniasis' THEN
       
        refered_suspected_Cutaneous_leishmaniasis := 1;
    END IF;
   
-- Human Guinea Worm Suspected on Screening
ELSIF p_indic_name = 'indic_suspected_Human_Guinea_Worm' THEN
       
        suspected_Human_Guinea_Worm := 1;
    END IF;
   
-- Refered :Human Guinea Worm Suspected on Screening
ELSIF p_indic_name = 'indic_refered_suspected__Human_Guinea_Worm' THEN
       
        refered_suspected__Human_Guinea_Worm := 1;
    END IF;
   
-- Number of people who swallowed azithromycin or took tetracycline eye ointment to prevent trachoma from the expected eligible population 
ELSIF p_indic_name = 'indic_totNum_swallowed_azithromycin_or_took_tetracycline_eye_ointment' THEN
       
        totNum_swallowed_azithromycin_or_took_tetracycline_eye_ointment := 1;
    END IF;
   
-- Number of who swallowed ivermectin to prevent onchocerciasis from the expected eligible population (>=5 Years)
ELSIF p_indic_name = 'indic_ivermectin' THEN
       
        ivermectin := 1;
    END IF;
   
-- Number of people who swallowed a drug to prevent lymphatic filariasis from the expected eligible population (>=5 Years)
ELSIF p_indic_name = 'indic_lymphatic_filariasis' THEN
       
        lymphatic_filariasis := 1;
    END IF;
   
-- Number of children who swallowed a drug to prevent schistosomiasis from the expected eligible children (5 to 15 Years)
ELSIF p_indic_name = 'indic_prevent_schistosomiasis' THEN
       
        prevent_schistosomiasis := 1;
    END IF;
   
-- Number of children who swallowed a drug to prevent soil transmitted helminthiasis from the expected eligible children (5 to 19 Years )
ELSIF p_indic_name = 'indic_prevent_soil_transmitted_helminthiasis' THEN
       
        prevent_soil_transmitted_helminthiasis := 1;
    END IF;
   
-- Number of Women who swallowed a drug to prevent soil transmitted helminthiasis from women reproductive age (20-49 Years)
ELSIF p_indic_name = 'indic_prevent_schistosomiasis_gt' THEN
       
        prevent_schistosomiasis_gt := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for trachoma - < 6 months, Male(NTD_TR.1. 1):NTD 
ELSIF p_indic_name = 'indic_NTD_TR_1_1' THEN
       
        NTD_TR_1_1 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for trachoma - < 6 months, Female(NTD_TR.1. 2):NTD 
ELSIF p_indic_name = 'indic_NTD_TR_1_2' THEN
       
        NTD_TR_1_2 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for trachoma - 6 months-7 years, Male(NTD_TR.1. 3):NTD 
ELSIF p_indic_name = 'indic_NTD_TR_1_3' THEN
       
        NTD_TR_1_3 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for trachoma - 6 months-7 years, Female(NTD_TR.1. 4):NTD 
ELSIF p_indic_name = 'indic_NTD_TR_1_4' THEN
       
        NTD_TR_1_4 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for trachoma - 7 - 14 years, Male(NTD_TR.1. 5):NTD 
ELSIF p_indic_name = 'indic_NTD_TR_1_5' THEN
       
        NTD_TR_1_5 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for trachoma - 7 - 14 years, Female(NTD_TR.1. 6):NTD 
ELSIF p_indic_name = 'indic_NTD_TR_1_6' THEN
       
        NTD_TR_1_6 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for trachoma - >= 15 years, Male(NTD_TR.1. 7):NTD 
ELSIF p_indic_name = 'indic_NTD_TR_1_7' THEN
       
        NTD_TR_1_7 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for trachoma - >= 15 years, Female(NTD_TR.1. 8):NTD 
ELSIF p_indic_name = 'indic_NTD_TR_1_8' THEN
       
        NTD_TR_1_8 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for Onchocerciasis - 5 - 14 years, Male(NTD_ONCH.1. 1):NTD 
ELSIF p_indic_name = 'indic_NTD_ONCH_1_1' THEN
       
        NTD_ONCH_1_1 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for Onchocerciasis - 5 - 14 years, Female(NTD_ONCH.1. 2):NTD 
ELSIF p_indic_name = 'indic_NTD_ONCH_1_2' THEN
       
        NTD_ONCH_1_2 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for Onchocerciasis - >= 15 years, Male(NTD_ONCH.1. 3):NTD 
ELSIF p_indic_name = 'indic_NTD_ONCH_1_3' THEN
       
        NTD_ONCH_1_3 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for Onchocerciasis - >= 15 years, Female(NTD_ONCH.1. 4):NTD 
ELSIF p_indic_name = 'indic_NTD_ONCH_1_4' THEN
       
        NTD_ONCH_1_4 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for Lymphatic Filariasis - 5 - 14 years, Male(NTD_LF.1. 1):NTD 
ELSIF p_indic_name = 'indic_NTD_LF_1_1' THEN
       
        NTD_LF_1_1 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for Lymphatic Filariasis - 5 - 14 years, Female(NTD_LF.1. 2):NTD 
ELSIF p_indic_name = 'indic_NTD_LF_1_2' THEN
       
        NTD_LF_1_2 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for Lymphatic Filariasis - >= 15 years, Male(NTD_LF.1. 3):NTD 
ELSIF p_indic_name = 'indic_NTD_LF_1_3' THEN
       
        NTD_LF_1_3 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for Lymphatic Filariasis - >= 15 years, Female(NTD_LF.1. 4):NTD 
ELSIF p_indic_name = 'indic_NTD_LF_1_4' THEN
       
        NTD_LF_1_4 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for Schistosomiasis - 5 - 14 years, Male(NTD_SCH.1. 1):NTD 
ELSIF p_indic_name = 'indic_NTD_SCH_1_1' THEN
       
        NTD_SCH_1_1 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for Schistosomiasis - 5 - 14 years, Female(NTD_SCH.1. 2):NTD 
ELSIF p_indic_name = 'indic_NTD_SCH_1_2' THEN
       
        NTD_SCH_1_2 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for Schistosomiasis - >= 15 years, Male(NTD_SCH.1. 3):NTD 
ELSIF p_indic_name = 'indic_NTD_SCH_1_3' THEN
       
        NTD_SCH_1_3 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for Schistosomiasis - >= 15 years, Female(NTD_SCH.1. 4):NTD 
ELSIF p_indic_name = 'indic_NTD_SCH_1_4' THEN
       
        NTD_SCH_1_4 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for Soil transmitting helminthes (STH) - 5 - 14 years, Male(NTD_STH.1. 1):NTD 
ELSIF p_indic_name = 'indic_NTD_STH_1_1' THEN
       
        NTD_STH_1_1 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for Soil transmitting helminthes (STH) - 5 - 14 years, Female(NTD_STH.1. 2):NTD 
ELSIF p_indic_name = 'indic_NTD_STH_1_2' THEN
       
        NTD_STH_1_2 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for Soil transmitting helminthes (STH) - 15 - 19 years, Male(NTD_STH.1. 3):NTD 
ELSIF p_indic_name = 'indic_NTD_STH_1_3' THEN
       
        NTD_STH_1_3 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for Soil transmitting helminthes (STH) - 15 - 19 years, Female(NTD_STH.1. 4):NTD 
ELSIF p_indic_name = 'indic_NTD_STH_1_4' THEN
       
        NTD_STH_1_4 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for Soil transmitting helminthes (STH) - >= 20 years, Male(NTD_STH.1. 5):NTD 
ELSIF p_indic_name = 'indic_NTD_STH_1_5' THEN
       
        NTD_STH_1_5 := 1;
    END IF;
   
-- Number of individuals swallowed MDA drug for Soil transmitting helminthes (STH) - >= 20 years, Female(NTD_STH.1. 6):NTD 
ELSIF p_indic_name = 'indic_NTD_STH_1_6' THEN
       
        NTD_STH_1_6 := 1;
    END IF;
   
-- Number of Individuals screened for hypertension - 18 - 29 years, Male(NCT_HTN. 1):NCD 
ELSIF p_indic_name = 'indic_NCT_HTN_1' THEN
       
        NCT_HTN_1 := 1;
    END IF;
   
-- Number of Individuals screened for hypertension - 18 - 29 years, Female(NCT_HTN. 2):NCD 
ELSIF p_indic_name = 'indic_NCT_HTN_2' THEN
       
        NCT_HTN_2 := 1;
    END IF;
   
-- Number of Individuals screened for hypertension - 30 - 39 years, Male(NCT_HTN. 3):NCD 
ELSIF p_indic_name = 'indic_NCT_HTN_3' THEN
       
        NCT_HTN_3 := 1;
    END IF;
   
-- Number of Individuals screened for hypertension - 30 - 39 years, Female(NCT_HTN. 4):NCD 
ELSIF p_indic_name = 'indic_NCT_HTN_4' THEN
       
        NCT_HTN_4 := 1;
    END IF;
   
-- Number of Individuals screened for hypertension - 40 - 69 years, Male(NCT_HTN. 5):NCD 
ELSIF p_indic_name = 'indic_NCT_HTN_5' THEN
       
        NCT_HTN_5 := 1;
    END IF;
   
-- Number of Individuals screened for hypertension - 40 - 69 years, Female(NCT_HTN. 6):NCD 
ELSIF p_indic_name = 'indic_NCT_HTN_6' THEN
       
        NCT_HTN_6 := 1;
    END IF;
   
-- Number of Individuals screened for hypertension - >=70 years, Male(NCT_HTN. 7):NCD 
ELSIF p_indic_name = 'indic_NCT_HTN_7' THEN
       
        NCT_HTN_7 := 1;
    END IF;
   
-- Number of Individuals screened for hypertension - >=70 years, Female(NCT_HTN. 8):NCD 
ELSIF p_indic_name = 'indic_NCT_HTN_8' THEN
       
        NCT_HTN_8 := 1;
    END IF;
   
-- Number of Individuals screened for hypertension by result of screening - Raised BP(NCD_HTNDX.1.2. 1):NCD 
ELSIF p_indic_name = 'indic_NCD_HTNDX_1_2_1' THEN
       
        NCD_HTNDX_1_2_1 := 1;
    END IF;
   
-- Number of Individuals screened for hypertension by result of screening - Normal BP(NCD_HTNDX.1.2. 2):NCD 
ELSIF p_indic_name = 'indic_NCD_HTNDX_1_2_2' THEN
       
        NCD_HTNDX_1_2_2 := 1;
    END IF;
   
-- Number of Individuals screened for hypertension by result of screening - Hypertensive patients refered to Health Center for further investigation(NCD_HTNDX.1.2. 3):NCD 
ELSIF p_indic_name = 'indic_NCD_HTNDX_1_2_3' THEN
       
        NCD_HTNDX_1_2_3 := 1;
    END IF;
   
-- Individuals screened for Diabetes Mellitus by age and sex - < 40 years, Male(NCD_DMDX.1.2. 1):NCD 
ELSIF p_indic_name = 'indic_NCD_DMDX_1_2_1' THEN
       
        NCD_DMDX_1_2_1 := 1;
    END IF;
   
-- Individuals screened for Diabetes Mellitus by age and sex - < 40 years, Female(NCD_DMDX.1.2. 2):NCD 
ELSIF p_indic_name = 'indic_NCD_DMDX_1_2_2' THEN
       
        NCD_DMDX_1_2_2 := 1;
    END IF;
   
-- Individuals screened for Diabetes Mellitus by age and sex - >= 40 years, Male(NCD_DMDX.1.2. 3):NCD 
ELSIF p_indic_name = 'indic_NCD_DMDX_1_2_3' THEN
       
        NCD_DMDX_1_2_3 := 1;
    END IF;
   
-- Individuals screened for Diabetes Mellitus by age and sex - >= 40 years, Female(NCD_DMDX.1.2. 4):NCD 
ELSIF p_indic_name = 'indic_NCD_DMDX_1_2_4' THEN
       
        NCD_DMDX_1_2_4 := 1;
    END IF;
   
-- Total number of malaria case (or infection) in which the parasite has been detected in a diagnostic test, i.e. microscopy, a rapid diagnostic test or a molecular diagnostic test @@@[Malaria Datasource v2]
ELSIF p_indic_name = 'indic_confirmed_malaria_cases_ftat' THEN
       
        confirmed_malaria_cases_ftat := 1;
    END IF;
   
-- Number of malaria case (or infection) in which the parasite has been detected in a diagnostic test within the jurisdiction of the health post
ELSIF p_indic_name = 'indic_confirmed_malaria_cases_hp' THEN
       
        confirmed_malaria_cases_hp := 1;
    END IF;
   
-- Number of index case households and those demarcated from the index case house within 70m radius or nearest five households where houses densely clustered and visited
ELSIF p_indic_name = 'indic_households_investigated' THEN
       
        households_investigated := 1;
    END IF;
   
-- Number of individuals listed in the investigated index case and neighboring households and entitled for finger prick except index cases, < 6 months infants, and sever malaria cases
ELSIF p_indic_name = 'indic_entitled_for_finger_prick' THEN
       
        entitled_for_finger_prick := 1;
    END IF;
   
-- Number of individuals listed in the investigated index case and neighboring households whom received finger prick
ELSIF p_indic_name = 'indic_received_finger_prick' THEN
       
        received_finger_prick := 1;
    END IF;
   
-- Number of confirmed malaria cases/infections reported during case investigation
ELSIF p_indic_name = 'indic_confirmed_malaria_cases' THEN
       
        confirmed_malaria_cases := 1;
    END IF;
   
-- Number of confirmed malaria cases/infections reported as plasmodium falciparium during case investigation
ELSIF p_indic_name = 'indic_confirmed_malaria_cases_plasmodium_falciparium' THEN
       
        confirmed_malaria_cases_plasmodium_falciparium := 1;
    END IF;
   
-- Number of confirmed malaria cases/infections reported as plasmodium vivax during case investigation
ELSIF p_indic_name = 'indic_confirmed_malaria_cases_plasmodium_vivax' THEN
       
        confirmed_malaria_cases_plasmodium_vivax := 1;
    END IF;
   
-- Number of confirmed malaria cases/infections reported as mixed (pf/pv) during case investigation
ELSIF p_indic_name = 'indic_confirmed_malaria_cases_mixed' THEN
       
        confirmed_malaria_cases_mixed := 1;
    END IF;
   
-- Confirmed malaria case or infection in which the infection was acquired outside the area in s/he lives
ELSIF p_indic_name = 'indic_Cases_with_travel_history' THEN
       
        Cases_with_travel_history := 1;
    END IF;
   
-- Confirmed malaria case or infection contracted locally with no evidence of importation
ELSIF p_indic_name = 'indic_Cases_without_travel_history' THEN
       
        Cases_without_travel_history := 1;
    END IF;
   
-- Number of households sprayed
ELSIF p_indic_name = 'indic_Number_of_households_sprayed' THEN
       
        Number_of_households_sprayed := 1;
    END IF;
   
-- Number of people protected because of chemical spray
ELSIF p_indic_name = 'indic_number_people_protected_by_chemical_spray' THEN
       
        number_people_protected_by_chemical_spray := 1;
    END IF;
   
-- Amount of chemical used in kg
ELSIF p_indic_name = 'indic_chemical_used_in_kg' THEN
       
        chemical_used_in_kg := 1;
    END IF;
   
-- Number of visited households on bednet usage
ELSIF p_indic_name = 'indic_bednet_usage' THEN
       
        bednet_usage := 1;
    END IF;
   
-- Number of visited households who have properly used their bednet
ELSIF p_indic_name = 'indic_llitn_properly_used' THEN
       
        llitn_properly_used := 1;
    END IF;
   
-- Number of clients suspected for malaria, and tested with RDT
ELSIF p_indic_name = 'indic_suspected_and_tested_with_rdt' THEN
       
        suspected_and_tested_with_rdt := 1;
    END IF;
   
-- Total Malaria Cases Confirmed by RDT
ELSIF p_indic_name = 'indic_Total_Malaria_Cases_Confirmed_RDT' THEN
       
        Total_Malaria_Cases_Confirmed_RDT := 1;
    END IF;
   
-- RDT Confirmed Malaria Cases by Plasmodium Species- P. Falciparum
ELSIF p_indic_name = 'indic_RDT_Confirmed_Malaria_Cases_pf' THEN
       
        RDT_Confirmed_Malaria_Cases_pf := 1;
    END IF;
   
-- RDT Confirmed Malaria Cases by Plasmodium Species- P. Vivax
ELSIF p_indic_name = 'indic_RDT_Confirmed_Malaria_Cases_pv' THEN
       
        RDT_Confirmed_Malaria_Cases_pv := 1;
    END IF;
   
-- Total Malaria Cases by Age Category- Under 5 years
ELSIF p_indic_name = 'indic_Malaria_Cases_under_5' THEN
       
        Malaria_Cases_under_5 := 1;
    END IF;
   
-- Total Malaria Cases by Age Category- From 5 to 14 years
ELSIF p_indic_name = 'indic_Malaria_Cases_5_to_14' THEN
       
        Malaria_Cases_5_to_14 := 1;
    END IF;
   
-- Total Malaria Cases by Age Category- over 15 years
ELSIF p_indic_name = 'indic_Malaria_Cases_over_15' THEN
       
        Malaria_Cases_over_15 := 1;
    END IF;
   
-- Pregant mothers with positive malaria cases
ELSIF p_indic_name = 'indic_positive_Pregant_mothers' THEN
       
        positive_Pregant_mothers := 1;
    END IF;
   
-- Mal_Pos.1:Number of slides or RDT positive for malaria
ELSIF p_indic_name = 'indic_RDT_positive_for_malaria' THEN
       
        RDT_positive_for_malaria := 1;
    END IF;
   
-- Mal_Pos.1.1:Number of slides or RDT positive for malaria< 5 yr : Male
ELSIF p_indic_name = 'indic_RDT_positive_for_malaria_male_under_5' THEN
       
        RDT_positive_for_malaria_male_under_5 := 1;
    END IF;
   
-- Mal_Pos.1.2:Number of slides or RDT positive for malaria< 5 yr : FeMale
ELSIF p_indic_name = 'indic_RDT_positive_for_malaria_female_under_5' THEN
       
        RDT_positive_for_malaria_female_under_5 := 1;
    END IF;
   
-- Mal_Pos.1.3:Number of slides or RDT positive for malaria > 5 yr and < 14 yr : Male
ELSIF p_indic_name = 'indic_RDT_positive_for_malaria_male_over_5_under_14' THEN
       
        RDT_positive_for_malaria_male_over_5_under_14 := 1;
    END IF;
   
-- Mal_Pos.1.4:Number of slides or RDT positive for malaria > 5 yr and < 14 yr : FeMale
ELSIF p_indic_name = 'indic_RDT_positive_for_malaria_female_over_5_under_14' THEN
       
        RDT_positive_for_malaria_female_over_5_under_14 := 1;
    END IF;
   
-- Mal_Pos.1.5:Number of slides or RDT positive for malaria > 15 yr : Male
ELSIF p_indic_name = 'indic_RDT_positive_for_malaria_male_over_15' THEN
       
        RDT_positive_for_malaria_male_over_15 := 1;
    END IF;
   
-- Mal_Pos.1.6:Number of slides or RDT positive for malaria > 15 yr : FeMale
ELSIF p_indic_name = 'indic_RDT_positive_for_malaria_female_over_15' THEN
       
        RDT_positive_for_malaria_female_over_15 := 1;
    END IF;
   
-- Mal_DX : Total number of slides or RDT performed for malaria diagnosis
ELSIF p_indic_name = 'indic_rdt_performed_for_malaria_diagnosis' THEN
       
        rdt_performed_for_malaria_diagnosis := 1;
    END IF;
   
-- Number of malaria positive clients disaggregated by age
ELSIF p_indic_name = 'indic_malaria_positive_clients' THEN
       
        malaria_positive_clients := 1;
    END IF;
   
-- Number of malaria positive clients disaggregated by age < 1
ELSIF p_indic_name = 'indic_malaria_positive_clients_under_1' THEN
       
        malaria_positive_clients_under_1 := 1;
    END IF;
   
-- Number of malaria positive clients disaggregated by age < 1 - New
ELSIF p_indic_name = 'indic_malaria_positive_clients_under_1_new' THEN
       
        malaria_positive_clients_under_1_new := 1;
    END IF;
   
-- Number of malaria positive clients disaggregated by age < 1 - Repeat
ELSIF p_indic_name = 'indic_malaria_positive_clients_under_1_repeat' THEN
       
        malaria_positive_clients_under_1_repeat := 1;
    END IF;
   
-- Number of malaria positive clients disaggregated by age over 1 under 4
ELSIF p_indic_name = 'indic_malaria_positive_clients_over_1_under_4' THEN
       
        malaria_positive_clients_over_1_under_4 := 1;
    END IF;
   
-- Number of malaria positive clients disaggregated by age over 1 under 4-New
ELSIF p_indic_name = 'indic_malaria_positive_clients_over_1_under_4_new' THEN
       
        malaria_positive_clients_over_1_under_4_new := 1;
    END IF;
   
-- Number of malaria positive clients disaggregated by age over 1 under 4-Repeat
ELSIF p_indic_name = 'indic_malaria_positive_clients_over_1_under_4_repeat' THEN
       
        malaria_positive_clients_over_1_under_4_repeat := 1;
    END IF;
   
-- Number of malaria positive clients disaggregated by age over 5 under 14
ELSIF p_indic_name = 'indic_malaria_positive_clients_over_5_under_14' THEN
       
        malaria_positive_clients_over_5_under_14 := 1;
    END IF;
   
-- Number of malaria positive clients disaggregated by age over 5 under 14-New
ELSIF p_indic_name = 'indic_malaria_positive_clients_over_5_under_14_new' THEN
       
        malaria_positive_clients_over_5_under_14_new := 1;
    END IF;
   
-- Number of malaria positive clients disaggregated by age over 5 under 14-Repeat
ELSIF p_indic_name = 'indic_malaria_positive_clients_over_5_under_14_repeat' THEN
       
        malaria_positive_clients_over_5_under_14_repeat := 1;
    END IF;
   
-- Number of malaria positive clients disaggregated by age over 15
ELSIF p_indic_name = 'indic_malaria_positive_clients_over_15' THEN
       
        malaria_positive_clients_over_15 := 1;
    END IF;
   
-- Number of malaria positive clients disaggregated by age over 15-New
ELSIF p_indic_name = 'indic_malaria_positive_clients_over_15_new' THEN
       
        malaria_positive_clients_over_15_new := 1;
    END IF;
   
-- Number of malaria positive clients disaggregated by age over 15-Repeat
ELSIF p_indic_name = 'indic_malaria_positive_clients_over_15_repeat' THEN
       
        malaria_positive_clients_over_15_repeat := 1;
    END IF;
   
-- Number of pregnant women with positive malaria case (HP Level)
ELSIF p_indic_name = 'indic_hp_positive_malaria_pregnant_women' THEN
       
        hp_positive_malaria_pregnant_women := 1;
    END IF;
   
-- Number of clients suspected for malaria, but not tested
ELSIF p_indic_name = 'indic_malaria_suspect_but_not_tested' THEN
       
        malaria_suspect_but_not_tested := 1;
    END IF;
   
-- Number of clients tested for malaria
ELSIF p_indic_name = 'indic_malaria_suspect_tested' THEN
       
        malaria_suspect_tested := 1;
    END IF;
   
-- Number of breeding sites
ELSIF p_indic_name = 'indic_breeding_site' THEN
       
        breeding_site := 1;
    END IF;
   
-- Number of breeding sites- Permanent
ELSIF p_indic_name = 'indic_breeding_site_permanent' THEN
       
        breeding_site_permanent := 1;
    END IF;
   
-- Number of breeding sites- Temporary
ELSIF p_indic_name = 'indic_breeding_site_temporary' THEN
       
        breeding_site_temporary := 1;
    END IF;
   
-- Draining Activity-larva_control
ELSIF p_indic_name = 'indic_larva_control' THEN
       
        larva_control := 1;
    END IF;
   
-- Draining Activity- Area in sq.m
ELSIF p_indic_name = 'indic_larva_control_in_sq_km' THEN
       
        larva_control_in_sq_km := 1;
    END IF;
   
-- Draining Activity-Number of times
ELSIF p_indic_name = 'indic_larva_control_Number_of_times' THEN
       
        larva_control_Number_of_times := 1;
    END IF;
   
-- Compacting Activity- Number of Locations
ELSIF p_indic_name = 'indic_compacting_activity' THEN
       
        compacting_activity := 1;
    END IF;
   
-- None
ELSIF p_indic_name = 'indic_compacting_activity_in_sq_km' THEN
       
        compacting_activity_in_sq_km := 1;
    END IF;
   
-- Compacting Activity-Number of times
ELSIF p_indic_name = 'indic_compacting_activity_Number_of_times' THEN
       
        compacting_activity_Number_of_times := 1;
    END IF;
   
-- Clearing Activity- Number of Locations
ELSIF p_indic_name = 'indic_clearing_activity' THEN
       
        clearing_activity := 1;
    END IF;
   
-- Clearing Activity- Area in sq.m
ELSIF p_indic_name = 'indic_clearing_activity_in_sq_km' THEN
       
        clearing_activity_in_sq_km := 1;
    END IF;
   
-- Clearing Activity-Number of times
ELSIF p_indic_name = 'indic_clearing_activity_Number_of_times' THEN
       
        clearing_activity_Number_of_times := 1;
    END IF;
   
-- Filling Activity- Number of Locations
ELSIF p_indic_name = 'indic_filling_activity' THEN
       
        filling_activity := 1;
    END IF;
   
-- Filling Activity- Area in sq.m
ELSIF p_indic_name = 'indic_filling_activity_in_sq_km' THEN
       
        filling_activity_in_sq_km := 1;
    END IF;
   
-- Filling Activity-Number of times
ELSIF p_indic_name = 'indic_filling_activity_Number_of_times' THEN
       
        filling_activity_Number_of_times := 1;
    END IF;
   
-- Bednet Usage-Number of households who own bednets and use them properly
ELSIF p_indic_name = 'indic_households_who_own_bednets' THEN
       
        households_who_own_bednets := 1;
    END IF;
   
-- Bednet Usage-Number of households who own bednets and do not use them
ELSIF p_indic_name = 'indic_households_who_own_but_not_use' THEN
       
        households_who_own_but_not_use := 1;
    END IF;
   
-- Bednet Usage-Number of households who do not own bednets
ELSIF p_indic_name = 'indic_households_with_no_bednets' THEN
       
        households_with_no_bednets := 1;
    END IF;
   
-- Number of people involved in prevention (larva control activities)
ELSIF p_indic_name = 'indic_peoples_involved_in_prevention' THEN
       
        peoples_involved_in_prevention := 1;
    END IF;
   
-- MALE-Number of people involved in prevention (larva control activities)
ELSIF p_indic_name = 'indic_males_involved_in_prevention' THEN
       
        males_involved_in_prevention := 1;
    END IF;
   
-- FEMALE-Number involved in prevention (larva control activities)
ELSIF p_indic_name = 'indic_females_involved_in_prevention' THEN
       
        females_involved_in_prevention := 1;
    END IF;
   
-- Organizations involved in prevention (larva control activities)
ELSIF p_indic_name = 'indic_organizations_involved_in_prevention' THEN
       
        organizations_involved_in_prevention := 1;
    END IF;
   
-- Number of people who took Behavioural Change Communication Training
ELSIF p_indic_name = 'indic_people_who_took_behav_change_comm_training' THEN
       
        people_who_took_behav_change_comm_training := 1;
    END IF;
   
-- Number of Males who took Behavioural Change Communication Training
ELSIF p_indic_name = 'indic_male_who_took_behav_change_comm_training' THEN
       
        male_who_took_behav_change_comm_training := 1;
    END IF;
   
-- Number of FeMales who took Behavioural Change Communication Training
ELSIF p_indic_name = 'indic_female_who_took_behav_change_comm_training' THEN
       
        female_who_took_behav_change_comm_training := 1;
    END IF;
   
-- Number of Organizations who took Behavioural Change Communication Training
ELSIF p_indic_name = 'indic_organizations_who_took_behav_change_comm_training' THEN
       
        organizations_who_took_behav_change_comm_training := 1;
    END IF;
   
-- Number of index households and those demarcated from the index case house within 70m radius or nearest five households where houses densely clustered.
ELSIF p_indic_name = 'indic_households_eligible_delineated_for_investigation' THEN
       
        households_eligible_delineated_for_investigation := 1;
    END IF;
   
-- Number of individuals living in the index case and neighboring households including visitors listed during case investigated
ELSIF p_indic_name = 'indic_individuals_living_in_index_case' THEN
       
        individuals_living_in_index_case := 1;
    END IF;
   
-- Total number of slides or RDT performed for malaria diagnosis - < 5 years, Male(MAL. 1):Malaria 
ELSIF p_indic_name = 'indic_MAL_1' THEN
       
        MAL_1 := 1;
    END IF;
   
-- Total number of slides or RDT performed for malaria diagnosis - < 5 years, Female(MAL. 2):Malaria 
ELSIF p_indic_name = 'indic_MAL_2' THEN
       
        MAL_2 := 1;
    END IF;
   
-- Total number of slides or RDT performed for malaria diagnosis - 5 - 14 years, Male(MAL. 3):Malaria 
ELSIF p_indic_name = 'indic_MAL_3' THEN
       
        MAL_3 := 1;
    END IF;
   
-- Total number of slides or RDT performed for malaria diagnosis - 5 - 14 years, Female(MAL. 4):Malaria 
ELSIF p_indic_name = 'indic_MAL_4' THEN
       
        MAL_4 := 1;
    END IF;
   
-- Total number of slides or RDT performed for malaria diagnosis - >= 15 years, Male(MAL. 5):Malaria 
ELSIF p_indic_name = 'indic_MAL_5' THEN
       
        MAL_5 := 1;
    END IF;
   
-- Total number of slides or RDT performed for malaria diagnosis - >= 15 years, Female(MAL. 6):Malaria 
ELSIF p_indic_name = 'indic_MAL_6' THEN
       
        MAL_6 := 1;
    END IF;
   
-- Total number of slides or RDT Positive - < 5 years, Male(MAL_POS.1. 1):Malaria 
ELSIF p_indic_name = 'indic_MAL_POS_1_1' THEN
       
        MAL_POS_1_1 := 1;
    END IF;
   
-- Total number of slides or RDT Positive - < 5 years, Female(MAL_POS.1. 2):Malaria 
ELSIF p_indic_name = 'indic_MAL_POS_1_2' THEN
       
        MAL_POS_1_2 := 1;
    END IF;
   
-- Total number of slides or RDT Positive - 5 - 14 years, Male(MAL_POS.1. 3):Malaria 
ELSIF p_indic_name = 'indic_MAL_POS_1_3' THEN
       
        MAL_POS_1_3 := 1;
    END IF;
   
-- Total number of slides or RDT Positive - 5 - 14 years, Female(MAL_POS.1. 4):Malaria 
ELSIF p_indic_name = 'indic_MAL_POS_1_4' THEN
       
        MAL_POS_1_4 := 1;
    END IF;
   
-- Total number of slides or RDT Positive - >= 15 years, Male(MAL_POS.1. 5):Malaria 
ELSIF p_indic_name = 'indic_MAL_POS_1_5' THEN
       
        MAL_POS_1_5 := 1;
    END IF;
   
-- Total number of slides or RDT Positive - >= 15 years, Female(MAL_POS.1. 6):Malaria 
ELSIF p_indic_name = 'indic_MAL_POS_1_6' THEN
       
        MAL_POS_1_6 := 1;
    END IF;
   
-- Total number of slides or RDT Positive - Malaria with Travel History(Mal_Travel.):Malaria 
ELSIF p_indic_name = 'indic_Mal_Travel_' THEN
       
        Mal_Travel_ := 1;
    END IF;
   
-- FP_CYP.1:Male Condom (number of condoms distributed) @@@[Annual Service Delivery DS V1]
ELSIF p_indic_name = 'indic_FP_CYP_1' THEN
       
        FP_CYP_1 := 1;
    END IF;
   
-- FP_CYP.3:Oral contraceptives (number of monthly cycles distributed)
ELSIF p_indic_name = 'indic_FP_CYP_3' THEN
       
        FP_CYP_3 := 1;
    END IF;
   
-- FP_CYP.5:Injectable (Depo provera) (number of injections)
ELSIF p_indic_name = 'indic_FP_CYP_5' THEN
       
        FP_CYP_5 := 1;
    END IF;
   
-- FP_CYP.8:Implanon (number of Implanon insertions)
ELSIF p_indic_name = 'indic_FP_CYP_8' THEN
       
        FP_CYP_8 := 1;
    END IF;
   
-- FP_CYP.9:Jadelle (number of Jadelle insertions)
ELSIF p_indic_name = 'indic_FP_CYP_9' THEN
       
        FP_CYP_9 := 1;
    END IF;
   
-- FP_CYP.10:IUCD (number of IUCDs inserted)
ELSIF p_indic_name = 'indic_FP_CYP_10' THEN
       
        FP_CYP_10 := 1;
    END IF;
   
-- Mal_LLITN.1:Number of targeted HH received at least one LLITN in the last 12 month
ELSIF p_indic_name = 'indic_Mal_LLITN_1' THEN
       
        Mal_LLITN_1 := 1;
    END IF;
   
-- Mal_ELLITN.1:Number of HHs that need LLITN in the last 12 month
ELSIF p_indic_name = 'indic_Mal_ELLITN_1' THEN
       
        Mal_ELLITN_1 := 1;
    END IF;
   
-- Total confirmed malaria cases @@@[FTAT Weekly Report]
ELSIF p_indic_name = 'indic_total_confirmed_malaria_cases' THEN
       
        total_confirmed_malaria_cases := 1;
    END IF;
   
-- Number of confirmed malaria cases within HP catchment
ELSIF p_indic_name = 'indic_number_of_confirmed_malaria_cases_within_hp_catchment' THEN
       
        number_of_confirmed_malaria_cases_within_hp_catchment := 1;
    END IF;
   
-- Number of confirmed malaria cases outside HP catchment
ELSIF p_indic_name = 'indic_number_of_confirmed_malaria_cases_outside_hp_catchment' THEN
       
        number_of_confirmed_malaria_cases_outside_hp_catchment := 1;
    END IF;
   
-- Number of index cases eligible for investigation
ELSIF p_indic_name = 'indic_number_of_index_cases_eligible_for_investigation' THEN
       
        number_of_index_cases_eligible_for_investigation := 1;
    END IF;
   
-- Number of index cases investigated
ELSIF p_indic_name = 'indic_number_of_index_cases_investigated' THEN
       
        number_of_index_cases_investigated := 1;
    END IF;
   
-- Number of households eligible (delineated) for investigation
ELSIF p_indic_name = 'indic_Number_of_households_eligible_delineated_for_investigation' THEN
       
        Number_of_households_eligible_delineated_for_investigation := 1;
    END IF;
   
-- Number of household members eligible for investigation (other than index cases, <6 months infants, severe cases)
ELSIF p_indic_name = 'indic_hh_members_eligible_butnot_indexcases' THEN
       
        hh_members_eligible_butnot_indexcases := 1;
    END IF;
   
-- Number of household members tested
ELSIF p_indic_name = 'indic_number_of_household_members_tested' THEN
       
        number_of_household_members_tested := 1;
    END IF;
   
-- Number of households investigated
ELSIF p_indic_name = 'indic_number_of_households_investigated' THEN
       
        number_of_households_investigated := 1;
    END IF;
   
-- Total number of positive cases (secondary)
ELSIF p_indic_name = 'indic_total_number_of_positive_cases_secondary' THEN
       
        total_number_of_positive_cases_secondary := 1;
    END IF;
   
-- Total number of PF cases
ELSIF p_indic_name = 'indic_total_number_of_pf_cases' THEN
       
        total_number_of_pf_cases := 1;
    END IF;
   
-- Total number of PV cases
ELSIF p_indic_name = 'indic_total_number_of_pv_cases' THEN
       
        total_number_of_pv_cases := 1;
    END IF;
   
-- Total number of Mixed cases
ELSIF p_indic_name = 'indic_total_number_of_Mixed_cases' THEN
       
        total_number_of_Mixed_cases := 1;
    END IF;
   
-- Imported cases (Cases with travel history)
ELSIF p_indic_name = 'indic_imported_cases__cases_with_travel_history' THEN
       
        imported_cases__cases_with_travel_history := 1;
    END IF;
   
-- Indigenous or local cases (Cases without travel history)
ELSIF p_indic_name = 'indic_indigenous_or_local_cases_cases_without_travel_history' THEN
       
        indigenous_or_local_cases_cases_without_travel_history := 1;
    END IF;
   
-- NTD pos2.1:Trachomatous Trichiasis Suspected on Screening and Referral @@@ [NTD monthly report datasource ] 
ELSIF p_indic_name = 'indic_suspected_trachomatous_trichiasis_referral' THEN
       
        suspected_trachomatous_trichiasis_referral := 1;
    END IF;
   
-- NTD pos3:Schistosomiasis (SCH) Suspected on Screening
ELSIF p_indic_name = 'indic_suspected_schistosomiasis' THEN
       
        suspected_schistosomiasis := 1;
    END IF;
   
-- NTD pos3.1:Schistosomiasis (SCH) Suspected on Screening and Referral
ELSIF p_indic_name = 'indic_suspected_schistosomiasis_referral' THEN
       
        suspected_schistosomiasis_referral := 1;
    END IF;
   
-- NTD pos4:Cutaneous leishmaniasis Suspected on Screening
ELSIF p_indic_name = 'indic_suspected_tcutaneous_leishmaniasis' THEN
       
        suspected_tcutaneous_leishmaniasis := 1;
    END IF;
   
-- NTD pos4.1:Cutaneous leishmaniasis Suspected on Screening and referral
ELSIF p_indic_name = 'indic_suspected_tcutaneous_leishmaniasis_referral' THEN
       
        suspected_tcutaneous_leishmaniasis_referral := 1;
    END IF;
   
-- NTD pos5:Scabies suspected on Screening
ELSIF p_indic_name = 'indic_suspected_scabies' THEN
       
        suspected_scabies := 1;
    END IF;
   
-- NTD pos5.1:Scabies suspected on Screening and referral
ELSIF p_indic_name = 'indic_suspected_scabies_referral' THEN
       
        suspected_scabies_referral := 1;
    END IF;
   
-- NTD pos6:Human Guinea Worm Suspected on Screening
ELSIF p_indic_name = 'indic_suspected_guinea_worm' THEN
       
        suspected_guinea_worm := 1;
    END IF;
   
-- NTD pos6.1:Human Guinea Worm Suspected on Screening and Referral
ELSIF p_indic_name = 'indic_suspected_guinea_worm_referral' THEN
       
        suspected_guinea_worm_referral := 1;
    END IF;
   
-- NTD pos7:Number of people who swallowed azithromycin or took tetracycline eye ointment to prevent trachoma from the expected eligible population 
ELSIF p_indic_name = 'indic_num_tt_medication' THEN
       
        num_tt_medication := 1;
    END IF;
   
-- NTD pos8:Number of who swallowed ivermectin to prevent onchocerciasis from the expected eligible population (>=5 Years)
ELSIF p_indic_name = 'indic_num_oncho_medication' THEN
       
        num_oncho_medication := 1;
    END IF;
   
-- NTD pos9:Number of people who swallowed a drug to prevent lymphatic filariasis from the expected eligible population (>=5 Years)
ELSIF p_indic_name = 'indic_num_lf_medication' THEN
       
        num_lf_medication := 1;
    END IF;
   
-- NTD pos10:Number of children who swallowed a drug to prevent schistosomiasis from the expected eligible children (5 to 15 Years)
ELSIF p_indic_name = 'indic_num_sch_medication' THEN
       
        num_sch_medication := 1;
    END IF;
   
-- NTD pos11:Number of children who swallowed a drug to prevent soil transmitted helminthiasis from the expected eligible children (5 to 19 Years )
ELSIF p_indic_name = 'indic_num_sth_medication_child' THEN
       
        num_sth_medication_child := 1;
    END IF;
   
-- NTD pos12:Number of Women who swallowed a drug to prevent soil transmitted helminthiasis from women reproductive age (20-49 Years) 
ELSIF p_indic_name = 'indic_num_sth_medication_adult' THEN
       
        num_sth_medication_adult := 1;
    END IF;
   
-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 0 - 4 years, Male(TB. 1):TB 
ELSIF p_indic_name = 'indic_TB_1' THEN
       
        TB_1 := 1;
    END IF;
   
-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 0 - 4 years, Female(TB. 2):TB 
ELSIF p_indic_name = 'indic_TB_2' THEN
       
        TB_2 := 1;
    END IF;
   
-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 5 - 9 years, Male(TB. 3):TB 
ELSIF p_indic_name = 'indic_TB_3' THEN
       
        TB_3 := 1;
    END IF;
   
-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 5 - 9 years, Female(TB. 4):TB 
ELSIF p_indic_name = 'indic_TB_4' THEN
       
        TB_4 := 1;
    END IF;
   
-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 10 - 14 years, Male(TB. 5):TB 
ELSIF p_indic_name = 'indic_TB_5' THEN
       
        TB_5 := 1;
    END IF;
   
-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 10 - 14 years, Female(TB. 6):TB 
ELSIF p_indic_name = 'indic_TB_6' THEN
       
        TB_6 := 1;
    END IF;
   
-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 15 - 19 years, Male(TB. 7):TB 
ELSIF p_indic_name = 'indic_TB_7' THEN
       
        TB_7 := 1;
    END IF;
   
-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 15 - 19 years, Female(TB. 8):TB 
ELSIF p_indic_name = 'indic_TB_8' THEN
       
        TB_8 := 1;
    END IF;
   
-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 20 - 24 years, Male(TB. 9):TB 
ELSIF p_indic_name = 'indic_TB_9' THEN
       
        TB_9 := 1;
    END IF;
   
-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 20 - 24 years, Female(TB. 10):TB 
ELSIF p_indic_name = 'indic_TB_10' THEN
       
        TB_10 := 1;
    END IF;
   
-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 25 - 34 years, Male(TB. 11):TB 
ELSIF p_indic_name = 'indic_TB_11' THEN
       
        TB_11 := 1;
    END IF;
   
-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 25 - 34 years, Female(TB. 12):TB 
ELSIF p_indic_name = 'indic_TB_12' THEN
       
        TB_12 := 1;
    END IF;
   
-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 35 - 44 years, Male(TB. 13):TB 
ELSIF p_indic_name = 'indic_TB_13' THEN
       
        TB_13 := 1;
    END IF;
   
-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 35 - 44 years, Female(TB. 14):TB 
ELSIF p_indic_name = 'indic_TB_14' THEN
       
        TB_14 := 1;
    END IF;
   
-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 45 - 54 years, Male(TB. 15):TB 
ELSIF p_indic_name = 'indic_TB_15' THEN
       
        TB_15 := 1;
    END IF;
   
-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 45 - 54 years, Female(TB. 16):TB 
ELSIF p_indic_name = 'indic_TB_16' THEN
       
        TB_16 := 1;
    END IF;
   
-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 55 - 64 years, Male(TB. 17):TB 
ELSIF p_indic_name = 'indic_TB_17' THEN
       
        TB_17 := 1;
    END IF;
   
-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 55 - 64 years, Female(TB. 18):TB 
ELSIF p_indic_name = 'indic_TB_18' THEN
       
        TB_18 := 1;
    END IF;
   
-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - >=65 yr, Male(TB. 19):TB 
ELSIF p_indic_name = 'indic_TB_19' THEN
       
        TB_19 := 1;
    END IF;
   
-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - >=65 yr, Female(TB. 20):TB 
ELSIF p_indic_name = 'indic_TB_20' THEN
       
        TB_20 := 1;
    END IF;
   
-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 0 - 4 years, Male(TB_TX_PTB.2. 1):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_1' THEN
       
        TB_TX_PTB_2_1 := 1;
    END IF;
   
-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 0 - 4 years, Female(TB_TX_PTB.2. 2):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_2' THEN
       
        TB_TX_PTB_2_2 := 1;
    END IF;
   
-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 5 - 9 years, Male(TB_TX_PTB.2. 3):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_3' THEN
       
        TB_TX_PTB_2_3 := 1;
    END IF;
   
-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 5 - 9 years, Female(TB_TX_PTB.2. 4):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_4' THEN
       
        TB_TX_PTB_2_4 := 1;
    END IF;
   
-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 10 - 14 years, Male(TB_TX_PTB.2. 5):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_5' THEN
       
        TB_TX_PTB_2_5 := 1;
    END IF;
   
-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 10 - 14 years, Female(TB_TX_PTB.2. 6):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_6' THEN
       
        TB_TX_PTB_2_6 := 1;
    END IF;
   
-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 15 - 19 years, Male(TB_TX_PTB.2. 7):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_7' THEN
       
        TB_TX_PTB_2_7 := 1;
    END IF;
   
-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 15 - 19 years, Female(TB_TX_PTB.2. 8):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_8' THEN
       
        TB_TX_PTB_2_8 := 1;
    END IF;
   
-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 20 - 24 years, Male(TB_TX_PTB.2. 9):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_9' THEN
       
        TB_TX_PTB_2_9 := 1;
    END IF;
   
-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 20 - 24 years, Female(TB_TX_PTB.2. 10):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_10' THEN
       
        TB_TX_PTB_2_10 := 1;
    END IF;
   
-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 25 - 34 years, Male(TB_TX_PTB.2. 11):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_11' THEN
       
        TB_TX_PTB_2_11 := 1;
    END IF;
   
-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 25 - 34 years, Female(TB_TX_PTB.2. 12):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_12' THEN
       
        TB_TX_PTB_2_12 := 1;
    END IF;
   
-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 35 - 44 years, Male(TB_TX_PTB.2. 13):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_13' THEN
       
        TB_TX_PTB_2_13 := 1;
    END IF;
   
-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 35 - 44 years, Female(TB_TX_PTB.2. 14):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_14' THEN
       
        TB_TX_PTB_2_14 := 1;
    END IF;
   
-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 45 - 54 years, Male(TB_TX_PTB.2. 15):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_15' THEN
       
        TB_TX_PTB_2_15 := 1;
    END IF;
   
-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 45 - 54 years, Female(TB_TX_PTB.2. 16):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_16' THEN
       
        TB_TX_PTB_2_16 := 1;
    END IF;
   
-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 55 - 64 years, Male(TB_TX_PTB.2. 17):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_17' THEN
       
        TB_TX_PTB_2_17 := 1;
    END IF;
   
-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 55 - 64 years, Female(TB_TX_PTB.2. 18):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_18' THEN
       
        TB_TX_PTB_2_18 := 1;
    END IF;
   
-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - >=65 yr, Male(TB_TX_PTB.2. 19):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_19' THEN
       
        TB_TX_PTB_2_19 := 1;
    END IF;
   
-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - >=65 yr, Female(TB_TX_PTB.2. 20):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_20' THEN
       
        TB_TX_PTB_2_20 := 1;
    END IF;
   
-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 0 - 4 years, Male(TB_TX_EPTB.1. 1):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_1' THEN
       
        TB_TX_EPTB_1_1 := 1;
    END IF;
   
-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 0 - 4 years, Female(TB_TX_EPTB.1. 2):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_2' THEN
       
        TB_TX_EPTB_1_2 := 1;
    END IF;
   
-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 5 - 9 years, Male(TB_TX_EPTB.1. 3):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_3' THEN
       
        TB_TX_EPTB_1_3 := 1;
    END IF;
   
-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 5 - 9 years, Female(TB_TX_EPTB.1. 4):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_4' THEN
       
        TB_TX_EPTB_1_4 := 1;
    END IF;
   
-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 10 - 14 years, Male(TB_TX_EPTB.1. 5):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_5' THEN
       
        TB_TX_EPTB_1_5 := 1;
    END IF;
   
-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 10 - 14 years, Female(TB_TX_EPTB.1. 6):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_6' THEN
       
        TB_TX_EPTB_1_6 := 1;
    END IF;
   
-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 15 - 19 years, Male(TB_TX_EPTB.1. 7):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_7' THEN
       
        TB_TX_EPTB_1_7 := 1;
    END IF;
   
-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 15 - 19 years, Female(TB_TX_EPTB.1. 8):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_8' THEN
       
        TB_TX_EPTB_1_8 := 1;
    END IF;
   
-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 20 - 24 years, Male(TB_TX_EPTB.1. 9):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_9' THEN
       
        TB_TX_EPTB_1_9 := 1;
    END IF;
   
-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 20 - 24 years, Female(TB_TX_EPTB.1. 10):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_10' THEN
       
        TB_TX_EPTB_1_10 := 1;
    END IF;
   
-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 25 - 34 years, Male(TB_TX_EPTB.1. 11):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_11' THEN
       
        TB_TX_EPTB_1_11 := 1;
    END IF;
   
-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 25 - 34 years, Female(TB_TX_EPTB.1. 12):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_12' THEN
       
        TB_TX_EPTB_1_12 := 1;
    END IF;
   
-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 35 - 44 years, Male(TB_TX_EPTB.1. 13):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_13' THEN
       
        TB_TX_EPTB_1_13 := 1;
    END IF;
   
-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 35 - 44 years, Female(TB_TX_EPTB.1. 14):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_14' THEN
       
        TB_TX_EPTB_1_14 := 1;
    END IF;
   
-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 45 - 54 years, Male(TB_TX_EPTB.1. 15):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_15' THEN
       
        TB_TX_EPTB_1_15 := 1;
    END IF;
   
-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 45 - 54 years, Female(TB_TX_EPTB.1. 16):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_16' THEN
       
        TB_TX_EPTB_1_16 := 1;
    END IF;
   
-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 55 - 64 years, Male(TB_TX_EPTB.1. 17):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_17' THEN
       
        TB_TX_EPTB_1_17 := 1;
    END IF;
   
-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 55 - 64 years, Female(TB_TX_EPTB.1. 18):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_18' THEN
       
        TB_TX_EPTB_1_18 := 1;
    END IF;
   
-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - >=65 yr, Male(TB_TX_EPTB.1. 19):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_19' THEN
       
        TB_TX_EPTB_1_19 := 1;
    END IF;
   
-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - >=65 yr, Female(TB_TX_EPTB.1. 20):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_20' THEN
       
        TB_TX_EPTB_1_20 := 1;
    END IF;
   
-- Treatment outcome of cohort of new PTB+ bacteriologically confirmed TB cases - Completed(TB_CR_PTB.1.1. 1):TB 
ELSIF p_indic_name = 'indic_TB_CR_PTB_1_1_1' THEN
       
        TB_CR_PTB_1_1_1 := 1;
    END IF;
   
-- Treatment outcome of cohort of new PTB+ bacteriologically confirmed TB cases - Cured(TB_CR_PTB.1.1. 2):TB 
ELSIF p_indic_name = 'indic_TB_CR_PTB_1_1_2' THEN
       
        TB_CR_PTB_1_1_2 := 1;
    END IF;
   
-- Treatment outcome of cohort of new PTB+ bacteriologically confirmed TB cases - Lost to follow-up(TB_CR_PTB.1.1. 3):TB 
ELSIF p_indic_name = 'indic_TB_CR_PTB_1_1_3' THEN
       
        TB_CR_PTB_1_1_3 := 1;
    END IF;
   
-- Treatment outcome of cohort of new PTB+ bacteriologically confirmed TB cases - Dead(TB_CR_PTB.1.1. 4):TB 
ELSIF p_indic_name = 'indic_TB_CR_PTB_1_1_4' THEN
       
        TB_CR_PTB_1_1_4 := 1;
    END IF;
   
-- Treatment outcome of cohort of new PTB+ bacteriologically confirmed TB cases - Failed(TB_CR_PTB.1.1. 5):TB 
ELSIF p_indic_name = 'indic_TB_CR_PTB_1_1_5' THEN
       
        TB_CR_PTB_1_1_5 := 1;
    END IF;
   
-- Treatment outcome of cohort of clinically diagnosed pulmonary TB cases(P/Neg) - Completed(TB_CR_PNTB.2.1. 1):TB 
ELSIF p_indic_name = 'indic_TB_CR_PNTB_2_1_1' THEN
       
        TB_CR_PNTB_2_1_1 := 1;
    END IF;
   
-- Treatment outcome of cohort of clinically diagnosed pulmonary TB cases(P/Neg) - Lost to follow-up(TB_CR_PNTB.2.1. 2):TB 
ELSIF p_indic_name = 'indic_TB_CR_PNTB_2_1_2' THEN
       
        TB_CR_PNTB_2_1_2 := 1;
    END IF;
   
-- Treatment outcome of cohort of clinically diagnosed pulmonary TB cases(P/Neg) - Deaths(TB_CR_PNTB.2.1. 3):TB 
ELSIF p_indic_name = 'indic_TB_CR_PNTB_2_1_3' THEN
       
        TB_CR_PNTB_2_1_3 := 1;
    END IF;
   
-- Treatment outcome of cohort of clinically diagnosed pulmonary TB cases(P/Neg) - Failed(TB_CR_PNTB.2.1. 4):TB 
ELSIF p_indic_name = 'indic_TB_CR_PNTB_2_1_4' THEN
       
        TB_CR_PNTB_2_1_4 := 1;
    END IF;
   
-- Treatment outcome of cohort of clinically diagnosed pulmonary TB cases(P/Neg) - Moved to DR TB Register(TB_CR_PNTB.2.1. 5):TB 
ELSIF p_indic_name = 'indic_TB_CR_PNTB_2_1_5' THEN
       
        TB_CR_PNTB_2_1_5 := 1;
    END IF;
   
-- Treatment outcome of cohort of new extra pulmonary TB (EPTB)cases - Completed(TB_CR_EPTB.3.1. 1):TB 
ELSIF p_indic_name = 'indic_TB_CR_EPTB_3_1_1' THEN
       
        TB_CR_EPTB_3_1_1 := 1;
    END IF;
   
-- Treatment outcome of cohort of new extra pulmonary TB (EPTB)cases - Lost to follow-up(TB_CR_EPTB.3.1. 2):TB 
ELSIF p_indic_name = 'indic_TB_CR_EPTB_3_1_2' THEN
       
        TB_CR_EPTB_3_1_2 := 1;
    END IF;
   
-- Treatment outcome of cohort of new extra pulmonary TB (EPTB)cases - Deaths(TB_CR_EPTB.3.1. 3):TB 
ELSIF p_indic_name = 'indic_TB_CR_EPTB_3_1_3' THEN
       
        TB_CR_EPTB_3_1_3 := 1;
    END IF;
   
-- Treatment outcome of cohort of new extra pulmonary TB (EPTB)cases - Failed(TB_CR_EPTB.3.1. 4):TB 
ELSIF p_indic_name = 'indic_TB_CR_EPTB_3_1_4' THEN
       
        TB_CR_EPTB_3_1_4 := 1;
    END IF;
   
-- Treatment outcome of cohort of new extra pulmonary TB (EPTB)cases - Moved to DR TB Register(TB_CR_EPTB.3.1. 5):TB 
ELSIF p_indic_name = 'indic_TB_CR_EPTB_3_1_5' THEN
       
        TB_CR_EPTB_3_1_5 := 1;
    END IF;
   
-- Treatment outcome of cohort of all Relapse cases - Number of all forms TB cases detected and registered on TB unit register who are initially referred by the community(TB_COMM.):TB 
ELSIF p_indic_name = 'indic_TB_COMM_' THEN
       
        TB_COMM_ := 1;
    END IF;
   
-- Treatment outcome of cohort of all Relapse cases - Total number of patients who started TB treatment in same reporting month of pervious year and who received any form of treatment adherence support from Health extension workers(TB_CBTSR.2.):TB 
ELSIF p_indic_name = 'indic_TB_CBTSR_2_' THEN
       
        TB_CBTSR_2_ := 1;
    END IF;
   
-- Total number of contacts with index bacteriologically confirmed pulmonary drug susceptible TB cases during the reporting Month by age - 0 - 4 years(TB_CI.1.1. 1):TB 
ELSIF p_indic_name = 'indic_TB_CI_1_1_1' THEN
       
        TB_CI_1_1_1 := 1;
    END IF;
   
-- Total number of contacts with index bacteriologically confirmed pulmonary drug susceptible TB cases during the reporting Month by age - 5 - 14 years(TB_CI.1.1. 2):TB 
ELSIF p_indic_name = 'indic_TB_CI_1_1_2' THEN
       
        TB_CI_1_1_2 := 1;
    END IF;
   
-- Total number of contacts with index bacteriologically confirmed pulmonary drug susceptible TB cases during the reporting Month by age - >= 15 years(TB_CI.1.1. 3):TB 
ELSIF p_indic_name = 'indic_TB_CI_1_1_3' THEN
       
        TB_CI_1_1_3 := 1;
    END IF;
   
-- Total number of contacts with index bacteriologically confirmed DR-TB cases during the reporting Month - 0 - 4 years(TB_CI.1.2. 1):TB 
ELSIF p_indic_name = 'indic_TB_CI_1_2_1' THEN
       
        TB_CI_1_2_1 := 1;
    END IF;
   
-- Total number of contacts with index bacteriologically confirmed DR-TB cases during the reporting Month - 5 - 14 years(TB_CI.1.2. 2):TB 
ELSIF p_indic_name = 'indic_TB_CI_1_2_2' THEN
       
        TB_CI_1_2_2 := 1;
    END IF;
   
-- Total number of contacts with index bacteriologically confirmed DR-TB cases during the reporting Month - >= 15 years(TB_CI.1.2. 3):TB 
ELSIF p_indic_name = 'indic_TB_CI_1_2_3' THEN
       
        TB_CI_1_2_3 := 1;
    END IF;
   
-- Contacts of drug susceptible bacteriological confirmed pulmonary TB cases screened for TB - 0 - 4 years(TB_CI_SCR.1. 1):TB 
ELSIF p_indic_name = 'indic_TB_CI_SCR_1_1' THEN
       
        TB_CI_SCR_1_1 := 1;
    END IF;
   
-- Contacts of drug susceptible bacteriological confirmed pulmonary TB cases screened for TB - 4 - 14 years(TB_CI_SCR.1. 2):TB 
ELSIF p_indic_name = 'indic_TB_CI_SCR_1_2' THEN
       
        TB_CI_SCR_1_2 := 1;
    END IF;
   
-- Contacts of drug susceptible bacteriological confirmed pulmonary TB cases screened for TB - >= 15 years(TB_CI_SCR.1. 3):TB 
ELSIF p_indic_name = 'indic_TB_CI_SCR_1_3' THEN
       
        TB_CI_SCR_1_3 := 1;
    END IF;
   
-- Contacts of drug Resistant TB cases screened for TB - 0 - 4 years(TB_CI_SCR.2. 1):TB 
ELSIF p_indic_name = 'indic_TB_CI_SCR_2_1' THEN
       
        TB_CI_SCR_2_1 := 1;
    END IF;
   
-- Contacts of drug Resistant TB cases screened for TB - 5 - 14 years(TB_CI_SCR.2. 2):TB 
ELSIF p_indic_name = 'indic_TB_CI_SCR_2_2' THEN
       
        TB_CI_SCR_2_2 := 1;
    END IF;
   
-- Contacts of drug Resistant TB cases screened for TB - >= 15 years(TB_CI_SCR.2. 3):TB 
ELSIF p_indic_name = 'indic_TB_CI_SCR_2_3' THEN
       
        TB_CI_SCR_2_3 := 1;
    END IF;
   
-- Number of contacts screened negative for TB and put on TB Preventive Therapy (TPT) in the reporting period by Age Group - 0 - 4 years(TB_TPT. 1):TB 
ELSIF p_indic_name = 'indic_TB_TPT_1' THEN
       
        TB_TPT_1 := 1;
    END IF;
   
-- Number of contacts screened negative for TB and put on TB Preventive Therapy (TPT) in the reporting period by Age Group - 5 - 14 years(TB_TPT. 2):TB 
ELSIF p_indic_name = 'indic_TB_TPT_2' THEN
       
        TB_TPT_2 := 1;
    END IF;
   
-- Number of contacts screened negative for TB and put on TB Preventive Therapy (TPT) in the reporting period by Age Group - >= 15 years(TB_TPT. 3):TB 
ELSIF p_indic_name = 'indic_TB_TPT_3' THEN
       
        TB_TPT_3 := 1;
    END IF;
   
-- Number of contacts screened negative for TB and put on TB Preventive Therapy (TPT) in the reporting period by regimen type - 3HP(TB_TPT.1.4. 1):TB 
ELSIF p_indic_name = 'indic_TB_TPT_1_4_1' THEN
       
        TB_TPT_1_4_1 := 1;
    END IF;
   
-- Number of contacts screened negative for TB and put on TB Preventive Therapy (TPT) in the reporting period by regimen type - 3RH(TB_TPT.1.4. 2):TB 
ELSIF p_indic_name = 'indic_TB_TPT_1_4_2' THEN
       
        TB_TPT_1_4_2 := 1;
    END IF;
   
-- Number of contacts screened negative for TB and put on TB Preventive Therapy (TPT) in the reporting period by regimen type - 6H(TB_TPT.1.4. 3):TB 
ELSIF p_indic_name = 'indic_TB_TPT_1_4_3' THEN
       
        TB_TPT_1_4_3 := 1;
    END IF;
   
-- Number of notified bacteriologically confirmed TB cases evaluated for drug susceptibility testing according to national policy during the reporting month - New(TB_DST.1. 1):TB 
ELSIF p_indic_name = 'indic_TB_DST_1_1' THEN
       
        TB_DST_1_1 := 1;
    END IF;
   
-- Number of drug susceptible TB cases screened for Malnutrition during the reporting period - Normal(TB_DR_NUT.1. 1):TB 
ELSIF p_indic_name = 'indic_TB_DR_NUT_1_1' THEN
       
        TB_DR_NUT_1_1 := 1;
    END IF;
   
-- Number of drug susceptible TB cases screened for Malnutrition during the reporting period - MAM(TB_DR_NUT.1. 2):TB 
ELSIF p_indic_name = 'indic_TB_DR_NUT_1_2' THEN
       
        TB_DR_NUT_1_2 := 1;
    END IF;
   
-- Number of drug susceptible TB cases screened for Malnutrition during the reporting period - SAM(TB_DR_NUT.1. 3):TB 
ELSIF p_indic_name = 'indic_TB_DR_NUT_1_3' THEN
       
        TB_DR_NUT_1_3 := 1;
    END IF;
   
-- 4.2.3.1.1-Leprosy case notification: All leprosy case detected( N+O+R+D)  @@@ [Leprosy Datasource Monthly]
ELSIF p_indic_name = 'indic_Leprosy_case_notification__All_leprosy_case_detected' THEN
       
        Leprosy_case_notification__All_leprosy_case_detected := 1;
    END IF;
   
-- 4.2.3.1.2-Leprosy case notification: Male
ELSIF p_indic_name = 'indic_Leprosy_case_notification__Male' THEN
       
        Leprosy_case_notification__Male := 1;
    END IF;
   
-- 4.2.3.1.3-Leprosy case notification: Female
ELSIF p_indic_name = 'indic_Leprosy_case_notification_Female' THEN
       
        Leprosy_case_notification_Female := 1;
    END IF;
   
-- 4.2.3.1.4-Leprosy case notification: New Leprosy cases detected :
ELSIF p_indic_name = 'indic_Leprosy_case_notification_New_Leprosy_cases_detected_' THEN
       
        Leprosy_case_notification_New_Leprosy_cases_detected_ := 1;
    END IF;
   
-- 4.2.3.1.5-Leprosy case notification: PB: Male <15 yrs
ELSIF p_indic_name = 'indic_Leprosy_case_notification_PB_Male_lt_15_yrs' THEN
       
        Leprosy_case_notification_PB_Male_lt_15_yrs := 1;
    END IF;
   
-- 4.2.3.1.6-Leprosy case notification: PB: Male = >15 yrs
ELSIF p_indic_name = 'indic_Leprosy_case_notification_PB_Male_gte_15_yrs' THEN
       
        Leprosy_case_notification_PB_Male_gte_15_yrs := 1;
    END IF;
   
-- 4.2.3.1.7-Leprosy case notification: PB: Female <15 yrs
ELSIF p_indic_name = 'indic_Leprosy_case_notification_PB_Female_lt_15_yrs' THEN
       
        Leprosy_case_notification_PB_Female_lt_15_yrs := 1;
    END IF;
   
-- 4.2.3.1.8-Leprosy case notification: PB: Female = >15 yrs
ELSIF p_indic_name = 'indic_Leprosy_case_notification_PB_Female_gte_15_yrs' THEN
       
        Leprosy_case_notification_PB_Female_gte_15_yrs := 1;
    END IF;
   
-- 4.2.3.1.9-Leprosy case notification: MB : Male <15 yrs
ELSIF p_indic_name = 'indic_Leprosy_case_notification_MB__Male_lt_15_yrs' THEN
       
        Leprosy_case_notification_MB__Male_lt_15_yrs := 1;
    END IF;
   
-- 4.2.3.1.10-Leprosy case notification: MB : Male = >15 yrs
ELSIF p_indic_name = 'indic_Leprosy_case_notification_MB__Male_gte_15_yrs' THEN
       
        Leprosy_case_notification_MB__Male_gte_15_yrs := 1;
    END IF;
   
-- 4.2.3.1.11-Leprosy case notification: MB : Female < 15 yrs
ELSIF p_indic_name = 'indic_Leprosy_case_notification_MB__Female_lt__15_yrs' THEN
       
        Leprosy_case_notification_MB__Female_lt__15_yrs := 1;
    END IF;
   
-- 4.2.3.1.12-Leprosy case notification: MB : Female => 15 yrs
ELSIF p_indic_name = 'indic_Leprosy_case_notification_MB__Female_gte_15_yrs' THEN
       
        Leprosy_case_notification_MB__Female_gte_15_yrs := 1;
    END IF;
   
-- 4.2.3.2.1-Grade II disability rate among new cases of leprosy: New leprosy cases with Grade II disability (MB+PB)
ELSIF p_indic_name = 'indic_Grade_II_disability_rate' THEN
       
        Grade_II_disability_rate := 1;
    END IF;
   
-- 4.2.3.2.2-Grade II disability rate among new cases of leprosy: Male <15
ELSIF p_indic_name = 'indic_Grade_II_disability_rate_among_new_cases_of_leprosy_Male_lt_15' THEN
       
        Grade_II_disability_rate_among_new_cases_of_leprosy_Male_lt_15 := 1;
    END IF;
   
-- 4.2.3.2.3-Grade II disability rate among new cases of leprosy: Male =>15
ELSIF p_indic_name = 'indic_Grade_II_disability_rate_among_new_cases_of_leprosy_Male_gte_15' THEN
       
        Grade_II_disability_rate_among_new_cases_of_leprosy_Male_gte_15 := 1;
    END IF;
   
-- 4.2.3.2.4-Grade II disability rate among new cases of leprosy: Female<15
ELSIF p_indic_name = 'indic_Grade_II_disability_rate_among_new_cases_of_leprosy_Female_gt_15' THEN
       
        Grade_II_disability_rate_among_new_cases_of_leprosy_Female_gt_15 := 1;
    END IF;
   
-- 4.2.3.2.5-Grade II disability rate among new cases of leprosy: Female =>15
ELSIF p_indic_name = 'indic_Grade_II_disability_rate_among_new_cases_of_leprosy_Female_gte_15' THEN
       
        Grade_II_disability_rate_among_new_cases_of_leprosy_Female_gte_15 := 1;
    END IF;
   
-- New Leprosy cases detected(PB) - < 15 years, Male(LEP_NOT_.1.1. 1):Leprosy 
ELSIF p_indic_name = 'indic_LEP_NOT__1_1_1' THEN
       
        LEP_NOT__1_1_1 := 1;
    END IF;
   
-- New Leprosy cases detected(PB) - < 15 years, Female(LEP_NOT_.1.1. 2): 
ELSIF p_indic_name = 'indic_LEP_NOT__1_1_2' THEN
       
        LEP_NOT__1_1_2 := 1;
    END IF;
   
-- New Leprosy cases detected(PB) - >= 15 years, Male(LEP_NOT_.1.1. 3): 
ELSIF p_indic_name = 'indic_LEP_NOT__1_1_3' THEN
       
        LEP_NOT__1_1_3 := 1;
    END IF;
   
-- New Leprosy cases detected(PB) - >= 15 years, Female(LEP_NOT_.1.1. 4): 
ELSIF p_indic_name = 'indic_LEP_NOT__1_1_4' THEN
       
        LEP_NOT__1_1_4 := 1;
    END IF;
   
-- New Leprosy cases detected(MB) - < 15 years, Male(LEP_NOT_.1.1.5. 1): 
ELSIF p_indic_name = 'indic_LEP_NOT__1_1_5_1' THEN
       
        LEP_NOT__1_1_5_1 := 1;
    END IF;
   
-- New Leprosy cases detected(MB) - < 15 years, Female(LEP_NOT_.1.1.5. 2): 
ELSIF p_indic_name = 'indic_LEP_NOT__1_1_5_2' THEN
       
        LEP_NOT__1_1_5_2 := 1;
    END IF;
   
-- New Leprosy cases detected(MB) - >= 15 years, Male(LEP_NOT_.1.1.5. 3): 
ELSIF p_indic_name = 'indic_LEP_NOT__1_1_5_3' THEN
       
        LEP_NOT__1_1_5_3 := 1;
    END IF;
   
-- New Leprosy cases detected(MB) - >= 15 years, Female(LEP_NOT_.1.1.5. 4): 
ELSIF p_indic_name = 'indic_LEP_NOT__1_1_5_4' THEN
       
        LEP_NOT__1_1_5_4 := 1;
    END IF;
   
-- New leprosy cases with Grade II disability (MB+PB) - < 15 years, Male(LEP_DIS.1. 1): 
ELSIF p_indic_name = 'indic_LEP_DIS_1_1' THEN
       
        LEP_DIS_1_1 := 1;
    END IF;
   
-- New leprosy cases with Grade II disability (MB+PB) - < 15 years, Female(LEP_DIS.1. 2): 
ELSIF p_indic_name = 'indic_LEP_DIS_1_2' THEN
       
        LEP_DIS_1_2 := 1;
    END IF;
   
-- New leprosy cases with Grade II disability (MB+PB) - >= 15 years, Male(LEP_DIS.1. 3): 
ELSIF p_indic_name = 'indic_LEP_DIS_1_3' THEN
       
        LEP_DIS_1_3 := 1;
    END IF;
   
-- New leprosy cases with Grade II disability (MB+PB) - >= 15 years, Female(LEP_DIS.1. 4): 
ELSIF p_indic_name = 'indic_LEP_DIS_1_4' THEN
       
        LEP_DIS_1_4 := 1;
    END IF;
   
-- Leprosy Treatment Completion Rate - Registered cohort of MB cases(LEP_TX.2.): 
ELSIF p_indic_name = 'indic_LEP_TX_2_' THEN
       
        LEP_TX_2_ := 1;
    END IF;
   
-- Leprosy Treatment Completion Rate - Treatment completed MB cases(LEP_TX.3.): 
ELSIF p_indic_name = 'indic_LEP_TX_3_' THEN
       
        LEP_TX_3_ := 1;
    END IF;
   
-- Leprosy Treatment Completion Rate - Registered cohort of PB cases(LEP_TX.4.): 
ELSIF p_indic_name = 'indic_LEP_TX_4_' THEN
       
        LEP_TX_4_ := 1;
    END IF;
   
-- Leprosy Treatment Completion Rate - Treatment completed PB cases(LEP_TX.5.): 
ELSIF p_indic_name = 'indic_LEP_TX_5_' THEN
       
        LEP_TX_5_ := 1;
    END IF;
   
-- xsum
ELSIF p_indic_name = 'indic_xsum' THEN
       
        xsum := 1;
    END IF;
   
-- Number of outpatient visits - < 5 Years, Male(MS_OPD_NumOV.1. 1):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_1' THEN
       
        MS_OPD_NumOV_1_1 := 1;
    END IF;
   
-- Number of outpatient visits - < 5 Years, Female(MS_OPD_NumOV.1. 2):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_2' THEN
       
        MS_OPD_NumOV_1_2 := 1;
    END IF;
   
-- Number of outpatient visits - 5 - 9 years, Male(MS_OPD_NumOV.1. 3):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_3' THEN
       
        MS_OPD_NumOV_1_3 := 1;
    END IF;
   
-- Number of outpatient visits - 5 - 9 years, Female(MS_OPD_NumOV.1. 4):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_4' THEN
       
        MS_OPD_NumOV_1_4 := 1;
    END IF;
   
-- Number of outpatient visits - 11 - 19 years, Male(MS_OPD_NumOV.1. 5):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_5' THEN
       
        MS_OPD_NumOV_1_5 := 1;
    END IF;
   
-- Number of outpatient visits - 11 - 19 years, Female(MS_OPD_NumOV.1. 6):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_6' THEN
       
        MS_OPD_NumOV_1_6 := 1;
    END IF;
   
-- Number of outpatient visits - 20 - 29 years, Male(MS_OPD_NumOV.1. 7):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_7' THEN
       
        MS_OPD_NumOV_1_7 := 1;
    END IF;
   
-- Number of outpatient visits - 20 - 29 years, Female(MS_OPD_NumOV.1. 6):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_8' THEN
       
        MS_OPD_NumOV_1_8 := 1;
    END IF;
   
-- Number of outpatient visits - 30 - 45 years, Male(MS_OPD_NumOV.1. 9):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_9' THEN
       
        MS_OPD_NumOV_1_9 := 1;
    END IF;
   
-- Number of outpatient visits - 30 - 45 years, Female(MS_OPD_NumOV.1. 10):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_10' THEN
       
        MS_OPD_NumOV_1_10 := 1;
    END IF;
   
-- Number of outpatient visits - 46 - 65 years, Male(MS_OPD_NumOV.1. 11):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_11' THEN
       
        MS_OPD_NumOV_1_11 := 1;
    END IF;
   
-- Number of outpatient visits - 46 - 65 years, Female(MS_OPD_NumOV.1. 12):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_12' THEN
       
        MS_OPD_NumOV_1_12 := 1;
    END IF;
   
-- Number of outpatient visits - >= 66 Years, Male(MS_OPD_NumOV.1. 13):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_13' THEN
       
        MS_OPD_NumOV_1_13 := 1;
    END IF;
   
-- Number of outpatient visits - >= 66 Years, Female(MS_OPD_NumOV.1. 14):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_14' THEN
       
        MS_OPD_NumOV_1_14 := 1;
    END IF;
   
-- Number of outpatient visits - Number of health insurance beneficiaries that visited HF in the reporting period(MS_OPD_NumOV.2):Medical 
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_2' THEN
       
        MS_OPD_NumOV_2 := 1;
    END IF;
   
-- Tracer drug availability - Tracer drug availability(HCSM_EDA_TDR): 
ELSIF p_indic_name = 'indic_HCSM_EDA_TDR' THEN
       
        HCSM_EDA_TDR := 1;
    END IF;
   
-- Tracer drug availability - HP_Amoxicillin dispersible tablet(PMS_AVAIL.1.26.):Medical 
ELSIF p_indic_name = 'indic_PMS_AVAIL_1_26_' THEN
       
        PMS_AVAIL_1_26_ := 1;
    END IF;
   
-- Tracer drug availability - HP_Oral Rehydration Salts(PMS_AVAIL.1.27.):Medical 
ELSIF p_indic_name = 'indic_PMS_AVAIL_1_27_' THEN
       
        PMS_AVAIL_1_27_ := 1;
    END IF;
   
-- Tracer drug availability - HP_Zinc dispersible tablet(PMS_AVAIL.1.28.):Medical 
ELSIF p_indic_name = 'indic_PMS_AVAIL_1_28_' THEN
       
        PMS_AVAIL_1_28_ := 1;
    END IF;
   
-- Tracer drug availability - HP_Gentamycin Sulphate injection(PMS_AVAIL.1.29.):Medical 
ELSIF p_indic_name = 'indic_PMS_AVAIL_1_29_' THEN
       
        PMS_AVAIL_1_29_ := 1;
    END IF;
   
-- Tracer drug availability - HP_Medroxyprogesterone Injection(PMS_AVAIL.1.30.):Medical 
ELSIF p_indic_name = 'indic_PMS_AVAIL_1_30_' THEN
       
        PMS_AVAIL_1_30_ := 1;
    END IF;
   
-- Tracer drug availability - HP_Arthmeter + Lumfanthrine (Coartem) tablet (any packing)(PMS_AVAIL.1.31.):Medical 
ELSIF p_indic_name = 'indic_PMS_AVAIL_1_31_' THEN
       
        PMS_AVAIL_1_31_ := 1;
    END IF;
   
-- Tracer drug availability - HP_Ferrous sulphate + folic acid(PMS_AVAIL.1.32.):Medical 
ELSIF p_indic_name = 'indic_PMS_AVAIL_1_32_' THEN
       
        PMS_AVAIL_1_32_ := 1;
    END IF;
   
-- Tracer drug availability - HP_Albendazole tablet/suspension(PMS_AVAIL.1.33.):Medical 
ELSIF p_indic_name = 'indic_PMS_AVAIL_1_33_' THEN
       
        PMS_AVAIL_1_33_ := 1;
    END IF;
   