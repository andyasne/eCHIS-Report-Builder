-- DROP FUNCTION public.rpt_fn_compute_hmis_report_values(record, hstore, text);
-- DROP FUNCTION public.rpt_fn_compute_hmis_report_values(record, hstore, text);
DROP FUNCTION rpt_fn_compute_hmis_report_values(record, hstore, text);


create
or replace function public.rpt_fn_compute_hmis_report_values(
  p_record_x record,
  record_hstore hstore,
  p_indic_name text
) returns table(
  pregnant_women_received_anc_first_visit_by_gestational_week integer,
  number_of_slides_or_rdt_positive_for_malaria integer,
  pregnant_women_received_anc_first_visit_by_gw_less_than_16 integer,
  pregnant_women_received_anc_first_visit_by_gw_geq_to_16 integer,
  anc_1stv_ma_1_1 integer,
  anc_1stv_ma_1_2 integer,
  anc_1stv_ma_1_3 integer,
  number_of_pregnant_received_anc_first_visit integer,
  number_of_postnatal_visits_within_7_days integer,
  number_of_children_under_one_yr_received_bcg integer,
  number_of_children_under_two_yr_measles_second_dose integer,
  number_of_girls_9yr_received_first_dose_of_human_papilloma integer,
  number_of_women_who_have_received_tt1_vaccination integer,
  number_of_women_who_have_received_tt2_vaccination integer,
  number_of_women_who_have_received_tt3_vaccination integer,
  number_of_women_who_have_received_tt4_vaccination integer,
  number_of_women_who_have_received_tt5_vaccination integer,
  children_who_treated_for_diarrhea_by_ors_and_zinc integer,
  children_who_treated_for_diarrhea_by_ors integer,
  fp_contraceptive_acceptance_rate integer,
  fp_new_at_10_to_14 integer,
  fp_new_at_15_to_19 integer,
  fp_new_at_20_to_24 integer,
  fp_new_at_25_to_29 integer,
  fp_new_at_30_to_49 integer,
  fp_repeat_at_10_to_14 integer,
  fp_repeat_at_15_to_19 integer,
  fp_repeat_at_20_to_24 integer,
  fp_repeat_at_25_to_29 integer,
  fp_repeat_at_30_to_49 integer,
  fp_new_oral_contraceptives integer,
  fp_new_injectables integer,
  fp_new_implants integer,
  fp_new_iucd integer,
  fp_repeat_oral_contraceptives integer,
  fp_repeat_injectables integer,
  fp_repeat_implants integer,
  fp_repeat_iucd integer,
  fp_at_10_to_14 integer,
  fp_at_15_to_19 integer,
  fp_at_20_to_24 integer,
  fp_at_25_to_29 integer,
  fp_at_30_to_49 integer,
  fp_oral_contraceptives integer,
  fp_implants integer,
  fp_iucd integer,
  still_births integer,
  still_live integer,
  postnatal_0_24 integer,
  postnatal_25_48 integer,
  postnatal_49_72 integer,
  postnatal_73_168 integer,
  deaths_of_home integer,
  deaths_on_the_way integer,
  deaths_at_health_post integer,
  penta1 integer,
  penta3 integer,
  pcv1 integer,
  pcv3 integer,
  ipv integer,
  rota1 integer,
  rota2 integer,
  measles_1 integer,
  infants_whose_mother integer,
  fp_car_mtd_2_7 integer,
  fp_ippf_mtd_5 integer,
  mal_dx1 integer,
  l_d_sba_1 integer,
  number_of_under_5__pnemonia integer,
  chim_vsd_1 integer,
  chim_vsd_2 integer,
  antenatal_care_coverage_four_visits_from_gte_20_yr integer,
  anc_4thv_ma_1_1 integer,
  antenatal_care_coverage_four_visits_from_15_19_yr integer,
  number_of_pregnant_received_anc_four_visit integer,
  nch_chim_pnrx integer,
  nch_chim_asfxrs integer,
  mat_car_mtd_1_7 integer,
  mat_car_mtd_2_7 integer,
  fp_ippf_mtd_5_ integer,
  mat_lafppr_1_1 integer,
  mat_lafppr_1_2 integer,
  mat_lafppr_1_3 integer,
  mat_tlafpr_ integer,
  mat_anc1_ga_1_1 integer,
  mat_anc4__ga_1_1 integer,
  mat_anc4__ga_1_2 integer,
  mat_b_d_cbn_1_ integer,
  mat_b_d_cdn_2_ integer,
  mat_epnc_1 integer,
  mat_epnc_1_1 integer,
  mat_epnc_1_3 integer,
  mat_epnc_1_4 integer,
  mat_epnc_1_5 integer,
  ch_cnd_lb_kebele_ integer,
  ch_tx_syi_1_3 integer,
  ch_asph_2_ integer,
  ch_chx_1_ integer,
  epi_opv1_1_ integer,
  epi_opv3_1_ integer,
  epi_fi_1_ integer,
  epi_vwr_bcg_giv_ integer,
  epi_vwr_bcg_dam_ integer,
  epi_vwr_bcg_dis_ integer,
  epi_vwr_penta_dam_ integer,
  epi_vwr_penta_dis_ integer,
  epi_vwr_pcv_dam_ integer,
  epi_vwr_pcv_dis_ integer,
  epi_vwr_rt_dam_ integer,
  epi_vwr_rt_dis_ integer,
  epi_vwr_pv_dam_ integer,
  epi_vwr_pv_dis_ integer,
  epi_vwr_mcv_dam_ integer,
  epi_vwr_mcv_dis_ integer,
  epi_vwr_ipv_giv_ integer,
  epi_vwr_ipv_dam_ integer,
  epi_vwr_ipv_dis_ integer,
  epi_vwr_hpv_giv_ integer,
  suspected_lymphedema integer,
  refered_suspected_lymphedema integer,
  suspected_trachomatous_trichiasis integer,
  refered_trachomatous_trichiasis integer,
  suspected_schistosomiasis integer,
  refered_suspected_schistosomiasis integer,
  suspected_cutaneous_leishmaniasis integer,
  refered_suspected_cutaneous_leishmaniasis integer,
  suspected_scabies integer,
  refered_suspected_scabies integer,
  suspected_human_guinea_worm integer,
  refered_suspected__human_guinea_worm integer,
  totnum_swallowed_azithromycin_or_took_tetracycline_eye_ointment integer,
  ivermectin integer,
  lymphatic_filariasis integer,
  prevent_schistosomiasis integer,
  prevent_soil_transmitted_helminthiasis integer,
  prevent_schistosomiasis_gt integer,
  ntd_tr_1_1 integer,
  ntd_tr_1_2 integer,
  ntd_tr_1_3 integer,
  ntd_tr_1_4 integer,
  ntd_tr_1_5 integer,
  ntd_tr_1_6 integer,
  ntd_tr_1_7 integer,
  ntd_tr_1_8 integer,
  ntd_onch_1_1 integer,
  ntd_onch_1_2 integer,
  ntd_onch_1_3 integer,
  ntd_onch_1_4 integer,
  ntd_lf_1_1 integer,
  ntd_lf_1_2 integer,
  ntd_lf_1_3 integer,
  ntd_lf_1_4 integer,
  ntd_sch_1_1 integer,
  ntd_sch_1_2 integer,
  ntd_sch_1_3 integer,
  ntd_sch_1_4 integer,
  ntd_sth_1_1 integer,
  ntd_sth_1_2 integer,
  ntd_sth_1_3 integer,
  ntd_sth_1_4 integer,
  ntd_sth_1_5 integer,
  ntd_sth_1_6 integer,
  nct_htn_1 integer,
  nct_htn_2 integer,
  nct_htn_3 integer,
  nct_htn_4 integer,
  nct_htn_5 integer,
  nct_htn_6 integer,
  nct_htn_7 integer,
  nct_htn_8 integer,
  ncd_htndx_1_2_1 integer,
  ncd_htndx_1_2_2 integer,
  ncd_htndx_1_2_3 integer,
  ncd_dmdx_1_2_1 integer,
  ncd_dmdx_1_2_2 integer,
  ncd_dmdx_1_2_3 integer,
  ncd_dmdx_1_2_4 integer,
  confirmed_malaria_cases_ftat integer,
  confirmed_malaria_cases_hp integer,
  households_investigated integer,
  entitled_for_finger_prick integer,
  received_finger_prick integer,
  confirmed_malaria_cases integer,
  confirmed_malaria_cases_plasmodium_falciparium integer,
  confirmed_malaria_cases_plasmodium_vivax integer,
  confirmed_malaria_cases_mixed integer,
  cases_with_travel_history integer,
  cases_without_travel_history integer,
  number_of_households_sprayed integer,
  number_people_protected_by_chemical_spray integer,
  chemical_used_in_kg integer,
  bednet_usage integer,
  llitn_properly_used integer,
  suspected_and_tested_with_rdt integer,
  total_malaria_cases_confirmed_rdt integer,
  rdt_confirmed_malaria_cases_pf integer,
  rdt_confirmed_malaria_cases_pv integer,
  malaria_cases_under_5 integer,
  malaria_cases_5_to_14 integer,
  malaria_cases_over_15 integer,
  positive_pregant_mothers integer,
  rdt_positive_for_malaria integer,
  rdt_positive_for_malaria_male_under_5 integer,
  rdt_positive_for_malaria_female_under_5 integer,
  rdt_positive_for_malaria_male_over_5_under_14 integer,
  rdt_positive_for_malaria_female_over_5_under_14 integer,
  rdt_positive_for_malaria_male_over_15 integer,
  rdt_positive_for_malaria_female_over_15 integer,
  rdt_performed_for_malaria_diagnosis integer,
  malaria_positive_clients integer,
  malaria_positive_clients_under_1 integer,
  malaria_positive_clients_under_1_new integer,
  malaria_positive_clients_under_1_repeat integer,
  malaria_positive_clients_over_1_under_4 integer,
  malaria_positive_clients_over_1_under_4_new integer,
  malaria_positive_clients_over_1_under_4_repeat integer,
  malaria_positive_clients_over_5_under_14 integer,
  malaria_positive_clients_over_5_under_14_new integer,
  malaria_positive_clients_over_5_under_14_repeat integer,
  malaria_positive_clients_over_15 integer,
  malaria_positive_clients_over_15_new integer,
  malaria_positive_clients_over_15_repeat integer,
  hp_positive_malaria_pregnant_women integer,
  malaria_suspect_but_not_tested integer,
  malaria_suspect_tested integer,
  breeding_site integer,
  breeding_site_permanent integer,
  breeding_site_temporary integer,
  larva_control integer,
  larva_control_in_sq_km integer,
  larva_control_number_of_times integer,
  compacting_activity integer,
  compacting_activity_in_sq_km integer,
  compacting_activity_number_of_times integer,
  clearing_activity integer,
  clearing_activity_in_sq_km integer,
  clearing_activity_number_of_times integer,
  filling_activity integer,
  filling_activity_in_sq_km integer,
  filling_activity_number_of_times integer,
  households_who_own_bednets integer,
  households_who_own_but_not_use integer,
  households_with_no_bednets integer,
  peoples_involved_in_prevention integer,
  males_involved_in_prevention integer,
  females_involved_in_prevention integer,
  organizations_involved_in_prevention integer,
  people_who_took_behav_change_comm_training integer,
  male_who_took_behav_change_comm_training integer,
  female_who_took_behav_change_comm_training integer,
  organizations_who_took_behav_change_comm_training integer,
  households_eligible_delineated_for_investigation integer,
  individuals_living_in_index_case integer,
  mal_1 integer,
  mal_2 integer,
  mal_3 integer,
  mal_4 integer,
  mal_5 integer,
  mal_6 integer,
  mal_pos_1_1 integer,
  mal_pos_1_2 integer,
  mal_pos_1_3 integer,
  mal_pos_1_4 integer,
  mal_pos_1_5 integer,
  mal_pos_1_6 integer,
  mal_travel_ integer,
  fp_cyp_1 integer,
  fp_cyp_3 integer,
  fp_cyp_5 integer,
  fp_cyp_8 integer,
  fp_cyp_9 integer,
  fp_cyp_10 integer,
  mal_llitn_1 integer,
  mal_ellitn_1 integer,
  total_confirmed_malaria_cases integer,
  number_of_confirmed_malaria_cases_within_hp_catchment integer,
  number_of_confirmed_malaria_cases_outside_hp_catchment integer,
  number_of_index_cases_eligible_for_investigation integer,
  number_of_index_cases_investigated integer,
  number_of_households_eligible_delineated_for_investigation integer,
  hh_members_eligible_butnot_indexcases integer,
  number_of_household_members_tested integer,
  number_of_households_investigated integer,
  total_number_of_positive_cases_secondary integer,
  total_number_of_pf_cases integer,
  total_number_of_pv_cases integer,
  total_number_of_mixed_cases integer,
  imported_cases__cases_with_travel_history integer,
  indigenous_or_local_cases_cases_without_travel_history integer,
  suspected_trachomatous_trichiasis_referral integer,
  suspected_tcutaneous_leishmaniasis integer,
  suspected_tcutaneous_leishmaniasis_referral integer,
  suspected_guinea_worm integer,
  suspected_guinea_worm_referral integer,
  num_tt_medication integer,
  num_oncho_medication integer,
  num_lf_medication integer,
  num_sch_medication integer,
  num_sth_medication_child integer,
  num_sth_medication_adult integer,
  tb_1 integer,
  tb_2 integer,
  tb_3 integer,
  tb_4 integer,
  tb_5 integer,
  tb_6 integer,
  tb_7 integer,
  tb_8 integer,
  tb_9 integer,
  tb_10 integer,
  tb_11 integer,
  tb_12 integer,
  tb_13 integer,
  tb_14 integer,
  tb_15 integer,
  tb_16 integer,
  tb_17 integer,
  tb_18 integer,
  tb_19 integer,
  tb_20 integer,
  tb_tx_ptb_2_1 integer,
  tb_tx_ptb_2_2 integer,
  tb_tx_ptb_2_3 integer,
  tb_tx_ptb_2_4 integer,
  tb_tx_ptb_2_5 integer,
  tb_tx_ptb_2_6 integer,
  tb_tx_ptb_2_7 integer,
  tb_tx_ptb_2_8 integer,
  tb_tx_ptb_2_9 integer,
  tb_tx_ptb_2_10 integer,
  tb_tx_ptb_2_11 integer,
  tb_tx_ptb_2_12 integer,
  tb_tx_ptb_2_13 integer,
  tb_tx_ptb_2_14 integer,
  tb_tx_ptb_2_15 integer,
  tb_tx_ptb_2_16 integer,
  tb_tx_ptb_2_17 integer,
  tb_tx_ptb_2_18 integer,
  tb_tx_ptb_2_19 integer,
  tb_tx_ptb_2_20 integer,
  tb_tx_eptb_1_1 integer,
  tb_tx_eptb_1_2 integer,
  tb_tx_eptb_1_3 integer,
  tb_tx_eptb_1_4 integer,
  tb_tx_eptb_1_5 integer,
  tb_tx_eptb_1_6 integer,
  tb_tx_eptb_1_7 integer,
  tb_tx_eptb_1_8 integer,
  tb_tx_eptb_1_9 integer,
  tb_tx_eptb_1_10 integer,
  tb_tx_eptb_1_11 integer,
  tb_tx_eptb_1_12 integer,
  tb_tx_eptb_1_13 integer,
  tb_tx_eptb_1_14 integer,
  tb_tx_eptb_1_15 integer,
  tb_tx_eptb_1_16 integer,
  tb_tx_eptb_1_17 integer,
  tb_tx_eptb_1_18 integer,
  tb_tx_eptb_1_19 integer,
  tb_tx_eptb_1_20 integer,
  tb_cr_ptb_1_1_1 integer,
  tb_cr_ptb_1_1_2 integer,
  tb_cr_ptb_1_1_3 integer,
  tb_cr_ptb_1_1_4 integer,
  tb_cr_ptb_1_1_5 integer,
  tb_cr_pntb_2_1_1 integer,
  tb_cr_pntb_2_1_2 integer,
  tb_cr_pntb_2_1_3 integer,
  tb_cr_pntb_2_1_4 integer,
  tb_cr_pntb_2_1_5 integer,
  tb_cr_eptb_3_1_1 integer,
  tb_cr_eptb_3_1_2 integer,
  tb_cr_eptb_3_1_3 integer,
  tb_cr_eptb_3_1_4 integer,
  tb_cr_eptb_3_1_5 integer,
  tb_comm_ integer,
  tb_cbtsr_2_ integer,
  tb_ci_1_1_1 integer,
  tb_ci_1_1_2 integer,
  tb_ci_1_1_3 integer,
  tb_ci_1_2_1 integer,
  tb_ci_1_2_2 integer,
  tb_ci_1_2_3 integer,
  tb_ci_scr_1_1 integer,
  tb_ci_scr_1_2 integer,
  tb_ci_scr_1_3 integer,
  tb_ci_scr_2_1 integer,
  tb_ci_scr_2_2 integer,
  tb_ci_scr_2_3 integer,
  tb_tpt_1 integer,
  tb_tpt_2 integer,
  tb_tpt_3 integer,
  tb_tpt_1_4_1 integer,
  tb_tpt_1_4_2 integer,
  tb_tpt_1_4_3 integer,
  tb_dst_1_1 integer,
  tb_dr_nut_1_1 integer,
  tb_dr_nut_1_2 integer,
  tb_dr_nut_1_3 integer,
  leprosy_case_notification__all_leprosy_case_detected integer,
  leprosy_case_notification__male integer,
  leprosy_case_notification_female integer,
  leprosy_case_notification_new_leprosy_cases_detected_ integer,
  leprosy_case_notification_pb_male_lt_15_yrs integer,
  leprosy_case_notification_pb_male_gte_15_yrs integer,
  leprosy_case_notification_pb_female_lt_15_yrs integer,
  leprosy_case_notification_pb_female_gte_15_yrs integer,
  leprosy_case_notification_mb__male_lt_15_yrs integer,
  leprosy_case_notification_mb__male_gte_15_yrs integer,
  leprosy_case_notification_mb__female_lt__15_yrs integer,
  leprosy_case_notification_mb__female_gte_15_yrs integer,
  grade_ii_disability_rate integer,
  grade_ii_disability_rate_among_new_cases_of_leprosy_male_lt_15 integer,
  grade_ii_disability_rate_among_new_cases_of_leprosy_male_gte_15 integer,
  grade_ii_disability_rate_among_new_cases_of_leprosy_fem_gt_15 integer,
  grade_ii_disability_rate_among_new_cases_of_leprosy_fem_gte_15 integer,
  lep_not__1_1_1 integer,
  lep_not__1_1_2 integer,
  lep_not__1_1_3 integer,
  lep_not__1_1_4 integer,
  lep_not__1_1_5_1 integer,
  lep_not__1_1_5_2 integer,
  lep_not__1_1_5_3 integer,
  lep_not__1_1_5_4 integer,
  lep_dis_1_1 integer,
  lep_dis_1_2 integer,
  lep_dis_1_3 integer,
  lep_dis_1_4 integer,
  lep_tx_2_ integer,
  lep_tx_3_ integer,
  lep_tx_4_ integer,
  lep_tx_5_ integer,
  xsum integer,
  ms_opd_numov_1_1 integer,
  ms_opd_numov_1_2 integer,
  ms_opd_numov_1_3 integer,
  ms_opd_numov_1_4 integer,
  ms_opd_numov_1_5 integer,
  ms_opd_numov_1_6 integer,
  ms_opd_numov_1_7 integer,
  ms_opd_numov_1_8 integer,
  ms_opd_numov_1_9 integer,
  ms_opd_numov_1_10 integer,
  ms_opd_numov_1_11 integer,
  ms_opd_numov_1_12 integer,
  ms_opd_numov_1_13 integer,
  ms_opd_numov_1_14 integer,
  ms_opd_numov_2 integer,
  hcsm_eda_tdr integer,
  pms_avail_1_26_ integer,
  pms_avail_1_27_ integer,
  pms_avail_1_28_ integer,
  pms_avail_1_29_ integer,
  pms_avail_1_30_ integer,
  pms_avail_1_31_ integer,
  pms_avail_1_32_ integer,
  pms_avail_1_33_ integer,
  suspected_schistosomiasis_referral integer,
  suspected_scabies_referral integer,
  CHIM_ECND_2_1 integer,
  CHIM_ECND_2_2 integer,
  CHIM_ECND_2_3 integer,
  CHIM_ECND_1_1 integer,
  CHIM_ECND_1_2 integer,
  CHIM_ECND_1 integer,   
  EPI_VWR_Penta_giv_ integer,
  
 NTR_LBW_1_  integer,
 NTR_LBW_2_  integer,
 NTR_GMP_1  integer,
 NTR_GMP_2  integer,
 NTR_GMP_MM_1  integer,
 NTR_GMP_MM_2  integer,
 GMP_SM_1  integer,
 GMP_SM_2  integer,
 NUT_VITA_1_1  integer,
 NUT_VITA_1_2  integer,
 NUT_VITA_2_1  integer,
 NUT_VITA_2_2  integer,
 NUT_DeW_1_1  integer,
 NUT_DeW_1_2  integer,
 NUT_DeW_2  integer,
 NUT_IFA_1_1  integer,
 NUT_IFA_1_2  integer,
 NUT_IFA_1_3  integer,
 PLW_S4AM  integer,
 PLW_S4AM_1  integer,
 PLW_S4AM_2  integer,
 NUT_PreSMN_2_1  integer,
 NUT_PreSMN_2_2  integer,
 NUT_U5SMN_1_1  integer,
 NUT_U5SMN_1_2  integer,
 NUT_U5SMN_1_3  integer,
 NUT_U5SMN_MAM_1_1  integer,
 NUT_U5SMN_MAM_1_2  integer,
 NUT_U5SMN_MAM_1_3  integer,
 NUT_U5SMN_SAM_1_1  integer,
 NUT_U5SMN_SAM_1_2  integer,
 NUT_U5SMN_SAM_1_3  integer,
 NUT_TX_U5MN_SAM_Beging_SC_1_1  integer,
 NUT_TX_U5MN_SAM_Beging_SC_1_2  integer,
 NUT_TX_U5MN_SAM_Beging_SC_1_3  integer,
 NUT_TX_U5MN_SAM__Adt_SC_2_1  integer,
 NUT_TX_U5MN_SAM__Adt_SC_2_2  integer,
 NUT_TX_U5MN_SAM__Adt_SC_2_3  integer,
 NUT_TX_U5MN_SAM_Stab_SC_3_1  integer,
 NUT_TX_U5MN_SAM_Stab_SC_3_2  integer,
 NUT_TX_U5MN_SAM_Stab_SC_3_3  integer,
 NUT_TX_U5MN_SAM_Cur_SC_4_1  integer,
 NUT_TX_U5MN_SAM_Cur_SC_4_2  integer,
 NUT_TX_U5MN_SAM_Cur_SC_4_3  integer,
 NUT_TX_U5MN_SAM_died_SC_5_1  integer,
 NUT_TX_U5MN_SAM_died_SC_5_2  integer,
 NUT_TX_U5MN_SAM_died_SC_5_3  integer,
 NUT_TX_U5MN_SAM_TO_SC_6_1  integer,
 NUT_TX_U5MN_SAM_TO_SC_6_2  integer,
 NUT_TX_U5MN_SAM_TO_SC_6_3  integer,
 NUT_TX_U5MN_SAM_Def_SC_7_1  integer,
 NUT_TX_U5MN_SAM_Def_SC_7_2  integer,
 NUT_TX_U5MN_SAM_Def_SC_7_3  integer,
 NUT_TX_U5MN_SAM_NR_SC_8_1  integer,
 NUT_TX_U5MN_SAM_NR_SC_8_2  integer,
 NUT_TX_U5MN_SAM_NR_SC_8_3  integer,
 NUT_TX_U5MN_SAM_Ext_SC_9_1  integer,
 NUT_TX_U5MN_SAM_Ext_SC_9_2  integer,
 NUT_TX_U5MN_SAM_Ext_SC_9_3  integer,
 NUT_TX_U5MN_SAM_OTP  integer,
 NUT_TX_U5MN_SAM_Adt_OTP  integer,
 NUT_TX_U5MN_SAM_Cur_OTP_1  integer,
 NUT_TX_U5MN_SAM_died_OTP_2  integer,
 NUT_TX_U5MN_SAM_TO_OTP_3  integer,
 NUT_TX_U5MN_SAM_Def_OTP_4  integer,
 NUT_TX_U5MN_SAM_NR_OTP_5  integer,
 NUT_TX_U5MN_SAM_Ext_OTP_E  integer,
 NUT_TX_U5MN__MAM_Beging_OTP  integer,
 NUT_TX_U5MN_MAM_Adt_TSFP  integer,
 
 NUT_TX_U5MN_SAM_Cur_TSFP_1  integer,
 NUT_TX_U5MN_SAM_died_TSFP_2  integer,
 NUT_TX_U5MN_SAM_TO_TSFP_3  integer,
 NUT_TX_U5MN_SAM_Def_TSFP_4  integer,
 NUT_TX_U5MN_SAM_NR_TSFP_5  integer,
 NUT_TX_U5MN__SAM_Ext_TSFP_E  integer,
 NUT_TX_U5MN_MAM_Beging_OTP  integer,
 NUT_TX_U5MN_MAM_Adt_OTP  integer,
 NUT_TX_U5MN_Cur_TSFP_1  integer,
 NUT_TX_U5MN_died_TSFP_2  integer,
 NUT_TX_U5MN_TO_TSFP_3  integer,
 NUT_TX_U5MN__Def_TSFP_4  integer,
 NUT_TX_U5MN_MAM__NR_TSFP_5  integer,
 NUT_TX_U5MN_MAM_Ext_TSFP_E  integer,
 NUT_DeW_Numerator  integer,
 NUT_TX_U5MN_SAM_us_OTP_8_  integer,
 NUT_TX_U5MN_SAM_US_TSFP_8_  integer


) language plpgsql as
$function$

begin

pregnant_women_received_ANC_First_visit_by_gestational_week:= 0;


Number_of_slides_or_RDT_positive_for_malaria:= 0;


pregnant_women_received_ANC_First_visit_by_gw_less_than_16:= 0;


pregnant_women_received_ANC_First_visit_by_gw_geq_to_16:= 0;


ANC_1stV_MA_1_1:= 0;


ANC_1stV_MA_1_2:= 0;


ANC_1stV_MA_1_3:= 0;


number_of_pregnant_received_anc_first_visit:= 0;


number_of_postnatal_visits_within_7_days:= 0;


number_of_children_under_one_yr_received_bcg:= 0;


number_of_children_under_two_yr_measles_second_dose:= 0;


number_of_girls_9yr_received_first_dose_of_human_papilloma:= 0;


Number_of_women_who_have_received_TT1_vaccination:= 0;


Number_of_women_who_have_received_TT2_vaccination:= 0;


Number_of_women_who_have_received_TT3_vaccination:= 0;


Number_of_women_who_have_received_TT4_vaccination:= 0;


Number_of_women_who_have_received_TT5_vaccination:= 0;


children_who_treated_for_diarrhea_by_ors_and_zinc:= 0;


children_who_treated_for_diarrhea_by_ors:= 0;


fp_contraceptive_acceptance_rate:= 0;


fp_new_at_10_to_14:= 0;


fp_new_at_15_to_19:= 0;


fp_new_at_20_to_24:= 0;


fp_new_at_25_to_29:= 0;


fp_new_at_30_to_49:= 0;


fp_repeat_at_10_to_14:= 0;


fp_repeat_at_15_to_19:= 0;


fp_repeat_at_20_to_24:= 0;


fp_repeat_at_25_to_29:= 0;


fp_repeat_at_30_to_49:= 0;


fp_new_oral_contraceptives:= 0;


fp_new_injectables:= 0;


fp_new_implants:= 0;


fp_new_iucd:= 0;


fp_repeat_oral_contraceptives:= 0;


fp_repeat_injectables:= 0;


fp_repeat_implants:= 0;


fp_repeat_iucd:= 0;


fp_at_10_to_14:= 0;


fp_at_15_to_19:= 0;


fp_at_20_to_24:= 0;


fp_at_25_to_29:= 0;


fp_at_30_to_49:= 0;


fp_oral_contraceptives:= 0;


fp_implants:= 0;


fp_iucd:= 0;


still_births:= 0;


still_live:= 0;


postnatal_0_24:= 0;


postnatal_25_48:= 0;


postnatal_49_72:= 0;


postnatal_73_168:= 0;


deaths_of_home:= 0;


deaths_on_the_way:= 0;


deaths_at_health_post:= 0;


penta1:= 0;


penta3:= 0;


pcv1:= 0;


pcv3:= 0;


ipv:= 0;


rota1:= 0;


rota2:= 0;


measles_1:= 0;


infants_whose_mother:= 0;


FP_CAR_Mtd_2_7:= 0;


FP_IPPF_Mtd_5:= 0;


Mal_DX1:= 0;


L_D_SBA_1:= 0;


number_of_under_5__pnemonia:= 0;


CHIM_VSD_1:= 0;


CHIM_VSD_2:= 0;


antenatal_care_coverage_four_visits_from_gte_20_yr:= 0;


ANC_4thV_MA_1_1:= 0;


antenatal_care_coverage_four_visits_from_15_19_yr:= 0;


number_of_pregnant_received_anc_four_visit:= 0;


nch_chim_pnrx:= 0;


nch_chim_asfxrs:= 0;


MAT_CAR_Mtd_1_7:= 0;


MAT_CAR_Mtd_2_7:= 0;


FP_IPPF_Mtd_5_:= 0;


MAT_LAFPPR_1_1:= 0;


MAT_LAFPPR_1_2:= 0;


MAT_LAFPPR_1_3:= 0;


MAT_TLAFPR_:= 0;


MAT_ANC1_GA_1_1:= 0;


MAT_ANC4__GA_1_1:= 0;


MAT_ANC4__GA_1_2:= 0;


MAT_B_D_CBN_1_:= 0;


MAT_B_D_CDN_2_:= 0;


MAT_EPNC_1:= 0;


MAT_EPNC_1_1:= 0;


MAT_EPNC_1_3:= 0;


MAT_EPNC_1_4:= 0;


MAT_EPNC_1_5:= 0;


CH_CND_LB_kebele_:= 0;


CH_TX_SYI_1_3:= 0;


CH_ASPH_2_:= 0;


CH_CHX_1_:= 0;


EPI_OPV1_1_:= 0;


EPI_OPV3_1_:= 0;


EPI_FI_1_:= 0;


EPI_VWR_BCG_giv_:= 0;


EPI_VWR_BCG_dam_:= 0;


EPI_VWR_BCG_dis_:= 0;


EPI_VWR_Penta_dam_:= 0;


EPI_VWR_Penta_dis_:= 0;


EPI_VWR_PCV_dam_:= 0;


EPI_VWR_PCV_dis_:= 0;


EPI_VWR_RT_dam_:= 0;


EPI_VWR_RT_dis_:= 0;


EPI_VWR_PV_dam_:= 0;


EPI_VWR_PV_dis_:= 0;


EPI_VWR_MCV_dam_:= 0;


EPI_VWR_MCV_dis_:= 0;


EPI_VWR_IPV_giv_:= 0;


EPI_VWR_IPV_dam_:= 0;


EPI_VWR_IPV_dis_:= 0;


EPI_VWR_HPV_giv_:= 0;


suspected_lymphedema:= 0;


refered_suspected_lymphedema:= 0;


suspected_trachomatous_trichiasis:= 0;


refered_trachomatous_trichiasis:= 0;


suspected_Schistosomiasis:= 0;


refered_suspected_Schistosomiasis:= 0;


suspected_Cutaneous_leishmaniasis:= 0;


refered_suspected_Cutaneous_leishmaniasis:= 0;


suspected_Scabies:= 0;


refered_suspected_Scabies:= 0;


suspected_Human_Guinea_Worm:= 0;


refered_suspected__Human_Guinea_Worm:= 0;


totNum_swallowed_azithromycin_or_took_tetracycline_eye_ointment:= 0;


ivermectin:= 0;


lymphatic_filariasis:= 0;


prevent_schistosomiasis:= 0;


prevent_soil_transmitted_helminthiasis:= 0;


prevent_schistosomiasis_gt:= 0;


NTD_TR_1_1:= 0;


NTD_TR_1_2:= 0;


NTD_TR_1_3:= 0;


NTD_TR_1_4:= 0;


NTD_TR_1_5:= 0;


NTD_TR_1_6:= 0;


NTD_TR_1_7:= 0;


NTD_TR_1_8:= 0;


NTD_ONCH_1_1:= 0;


NTD_ONCH_1_2:= 0;


NTD_ONCH_1_3:= 0;


NTD_ONCH_1_4:= 0;


NTD_LF_1_1:= 0;


NTD_LF_1_2:= 0;


NTD_LF_1_3:= 0;


NTD_LF_1_4:= 0;


NTD_SCH_1_1:= 0;


NTD_SCH_1_2:= 0;


NTD_SCH_1_3:= 0;


NTD_SCH_1_4:= 0;


NTD_STH_1_1:= 0;


NTD_STH_1_2:= 0;


NTD_STH_1_3:= 0;


NTD_STH_1_4:= 0;


NTD_STH_1_5:= 0;


NTD_STH_1_6:= 0;


NCT_HTN_1:= 0;


NCT_HTN_2:= 0;


NCT_HTN_3:= 0;


NCT_HTN_4:= 0;


NCT_HTN_5:= 0;


NCT_HTN_6:= 0;


NCT_HTN_7:= 0;


NCT_HTN_8:= 0;


NCD_HTNDX_1_2_1:= 0;


NCD_HTNDX_1_2_2:= 0;


NCD_HTNDX_1_2_3:= 0;


NCD_DMDX_1_2_1:= 0;


NCD_DMDX_1_2_2:= 0;


NCD_DMDX_1_2_3:= 0;


NCD_DMDX_1_2_4:= 0;


confirmed_malaria_cases_ftat:= 0;


confirmed_malaria_cases_hp:= 0;


households_investigated:= 0;


entitled_for_finger_prick:= 0;


received_finger_prick:= 0;


confirmed_malaria_cases:= 0;


confirmed_malaria_cases_plasmodium_falciparium:= 0;


confirmed_malaria_cases_plasmodium_vivax:= 0;


confirmed_malaria_cases_mixed:= 0;


Cases_with_travel_history:= 0;


Cases_without_travel_history:= 0;


Number_of_households_sprayed:= 0;


number_people_protected_by_chemical_spray:= 0;


chemical_used_in_kg:= 0;


bednet_usage:= 0;


llitn_properly_used:= 0;


suspected_and_tested_with_rdt:= 0;


Total_Malaria_Cases_Confirmed_RDT:= 0;


RDT_Confirmed_Malaria_Cases_pf:= 0;


RDT_Confirmed_Malaria_Cases_pv:= 0;


Malaria_Cases_under_5:= 0;


Malaria_Cases_5_to_14:= 0;


Malaria_Cases_over_15:= 0;


positive_Pregant_mothers:= 0;


RDT_positive_for_malaria:= 0;


RDT_positive_for_malaria_male_under_5:= 0;


RDT_positive_for_malaria_female_under_5:= 0;


RDT_positive_for_malaria_male_over_5_under_14:= 0;


RDT_positive_for_malaria_female_over_5_under_14:= 0;


RDT_positive_for_malaria_male_over_15:= 0;


RDT_positive_for_malaria_female_over_15:= 0;


rdt_performed_for_malaria_diagnosis:= 0;


malaria_positive_clients:= 0;


malaria_positive_clients_under_1:= 0;


malaria_positive_clients_under_1_new:= 0;


malaria_positive_clients_under_1_repeat:= 0;


malaria_positive_clients_over_1_under_4:= 0;


malaria_positive_clients_over_1_under_4_new:= 0;


malaria_positive_clients_over_1_under_4_repeat:= 0;


malaria_positive_clients_over_5_under_14:= 0;


malaria_positive_clients_over_5_under_14_new:= 0;


malaria_positive_clients_over_5_under_14_repeat:= 0;


malaria_positive_clients_over_15:= 0;


malaria_positive_clients_over_15_new:= 0;


malaria_positive_clients_over_15_repeat:= 0;


hp_positive_malaria_pregnant_women:= 0;


malaria_suspect_but_not_tested:= 0;


malaria_suspect_tested:= 0;


breeding_site:= 0;


breeding_site_permanent:= 0;


breeding_site_temporary:= 0;


larva_control:= 0;


larva_control_in_sq_km:= 0;


larva_control_Number_of_times:= 0;


compacting_activity:= 0;


compacting_activity_in_sq_km:= 0;


compacting_activity_Number_of_times:= 0;


clearing_activity:= 0;


clearing_activity_in_sq_km:= 0;


clearing_activity_Number_of_times:= 0;


filling_activity:= 0;


filling_activity_in_sq_km:= 0;


filling_activity_Number_of_times:= 0;


households_who_own_bednets:= 0;


households_who_own_but_not_use:= 0;


households_with_no_bednets:= 0;


peoples_involved_in_prevention:= 0;


males_involved_in_prevention:= 0;


females_involved_in_prevention:= 0;


organizations_involved_in_prevention:= 0;


people_who_took_behav_change_comm_training:= 0;


male_who_took_behav_change_comm_training:= 0;


female_who_took_behav_change_comm_training:= 0;


organizations_who_took_behav_change_comm_training:= 0;


households_eligible_delineated_for_investigation:= 0;


individuals_living_in_index_case:= 0;


suspected_schistosomiasis_referral:= 0;


MAL_1:= 0;


MAL_2:= 0;


MAL_3:= 0;


MAL_4:= 0;


MAL_5:= 0;


MAL_6:= 0;


MAL_POS_1_1:= 0;


MAL_POS_1_2:= 0;


MAL_POS_1_3:= 0;


MAL_POS_1_4:= 0;


MAL_POS_1_5:= 0;


MAL_POS_1_6:= 0;


Mal_Travel_:= 0;


FP_CYP_1:= 0;


FP_CYP_3:= 0;


FP_CYP_5:= 0;


FP_CYP_8:= 0;


FP_CYP_9:= 0;


FP_CYP_10:= 0;


Mal_LLITN_1:= 0;


Mal_ELLITN_1:= 0;


total_confirmed_malaria_cases:= 0;


number_of_confirmed_malaria_cases_within_hp_catchment:= 0;


number_of_confirmed_malaria_cases_outside_hp_catchment:= 0;


number_of_index_cases_eligible_for_investigation:= 0;


number_of_index_cases_investigated:= 0;


Number_of_households_eligible_delineated_for_investigation:= 0;


hh_members_eligible_butnot_indexcases:= 0;


number_of_household_members_tested:= 0;


number_of_households_investigated:= 0;


total_number_of_positive_cases_secondary:= 0;


total_number_of_pf_cases:= 0;


total_number_of_pv_cases:= 0;


total_number_of_Mixed_cases:= 0;


imported_cases__cases_with_travel_history:= 0;


indigenous_or_local_cases_cases_without_travel_history:= 0;


suspected_trachomatous_trichiasis_referral:= 0;


suspected_tcutaneous_leishmaniasis:= 0;


suspected_tcutaneous_leishmaniasis_referral:= 0;


suspected_guinea_worm:= 0;


suspected_guinea_worm_referral:= 0;


num_tt_medication:= 0;


num_oncho_medication:= 0;


num_lf_medication:= 0;


num_sch_medication:= 0;


num_sth_medication_child:= 0;


num_sth_medication_adult:= 0;


TB_1:= 0;


TB_2:= 0;


TB_3:= 0;


TB_4:= 0;


TB_5:= 0;


TB_6:= 0;


TB_7:= 0;


TB_8:= 0;


TB_9:= 0;


TB_10:= 0;


TB_11:= 0;


TB_12:= 0;


TB_13:= 0;


TB_14:= 0;


TB_15:= 0;


TB_16:= 0;


TB_17:= 0;


TB_18:= 0;


TB_19:= 0;


TB_20:= 0;


TB_TX_PTB_2_1:= 0;


TB_TX_PTB_2_2:= 0;


TB_TX_PTB_2_3:= 0;


TB_TX_PTB_2_4:= 0;


TB_TX_PTB_2_5:= 0;


TB_TX_PTB_2_6:= 0;


TB_TX_PTB_2_7:= 0;


TB_TX_PTB_2_8:= 0;


TB_TX_PTB_2_9:= 0;


TB_TX_PTB_2_10:= 0;


TB_TX_PTB_2_11:= 0;


TB_TX_PTB_2_12:= 0;


TB_TX_PTB_2_13:= 0;


TB_TX_PTB_2_14:= 0;


TB_TX_PTB_2_15:= 0;


TB_TX_PTB_2_16:= 0;


TB_TX_PTB_2_17:= 0;


TB_TX_PTB_2_18:= 0;


TB_TX_PTB_2_19:= 0;


TB_TX_PTB_2_20:= 0;


TB_TX_EPTB_1_1:= 0;


TB_TX_EPTB_1_2:= 0;


TB_TX_EPTB_1_3:= 0;


TB_TX_EPTB_1_4:= 0;


TB_TX_EPTB_1_5:= 0;


TB_TX_EPTB_1_6:= 0;


TB_TX_EPTB_1_7:= 0;


TB_TX_EPTB_1_8:= 0;


TB_TX_EPTB_1_9:= 0;


TB_TX_EPTB_1_10:= 0;


TB_TX_EPTB_1_11:= 0;


TB_TX_EPTB_1_12:= 0;


TB_TX_EPTB_1_13:= 0;


TB_TX_EPTB_1_14:= 0;


TB_TX_EPTB_1_15:= 0;


TB_TX_EPTB_1_16:= 0;


TB_TX_EPTB_1_17:= 0;


TB_TX_EPTB_1_18:= 0;


TB_TX_EPTB_1_19:= 0;


TB_TX_EPTB_1_20:= 0;


TB_CR_PTB_1_1_1:= 0;


TB_CR_PTB_1_1_2:= 0;


TB_CR_PTB_1_1_3:= 0;


TB_CR_PTB_1_1_4:= 0;


TB_CR_PTB_1_1_5:= 0;


TB_CR_PNTB_2_1_1:= 0;


TB_CR_PNTB_2_1_2:= 0;


TB_CR_PNTB_2_1_3:= 0;


TB_CR_PNTB_2_1_4:= 0;


TB_CR_PNTB_2_1_5:= 0;


TB_CR_EPTB_3_1_1:= 0;


TB_CR_EPTB_3_1_2:= 0;


TB_CR_EPTB_3_1_3:= 0;


TB_CR_EPTB_3_1_4:= 0;


TB_CR_EPTB_3_1_5:= 0;


TB_COMM_:= 0;


TB_CBTSR_2_:= 0;


TB_CI_1_1_1:= 0;


TB_CI_1_1_2:= 0;


TB_CI_1_1_3:= 0;


TB_CI_1_2_1:= 0;


TB_CI_1_2_2:= 0;


TB_CI_1_2_3:= 0;


TB_CI_SCR_1_1:= 0;


TB_CI_SCR_1_2:= 0;


TB_CI_SCR_1_3:= 0;


TB_CI_SCR_2_1:= 0;


TB_CI_SCR_2_2:= 0;


TB_CI_SCR_2_3:= 0;


TB_TPT_1:= 0;


TB_TPT_2:= 0;


TB_TPT_3:= 0;


TB_TPT_1_4_1:= 0;


TB_TPT_1_4_2:= 0;


TB_TPT_1_4_3:= 0;


TB_DST_1_1:= 0;


TB_DR_NUT_1_1:= 0;


TB_DR_NUT_1_2:= 0;


TB_DR_NUT_1_3:= 0;


Leprosy_case_notification__All_leprosy_case_detected:= 0;


Leprosy_case_notification__Male:= 0;


Leprosy_case_notification_Female:= 0;


Leprosy_case_notification_New_Leprosy_cases_detected_:= 0;


Leprosy_case_notification_PB_Male_lt_15_yrs:= 0;


Leprosy_case_notification_PB_Male_gte_15_yrs:= 0;


Leprosy_case_notification_PB_Female_lt_15_yrs:= 0;


Leprosy_case_notification_PB_Female_gte_15_yrs:= 0;


Leprosy_case_notification_MB__Male_lt_15_yrs:= 0;


Leprosy_case_notification_MB__Male_gte_15_yrs:= 0;


Leprosy_case_notification_MB__Female_lt__15_yrs:= 0;


Leprosy_case_notification_MB__Female_gte_15_yrs:= 0;


Grade_II_disability_rate:= 0;


Grade_II_disability_rate_among_new_cases_of_leprosy_Male_lt_15:= 0;


Grade_II_disability_rate_among_new_cases_of_leprosy_Male_gte_15:= 0;


Grade_II_disability_rate_among_new_cases_of_leprosy_Fem_gt_15:= 0;


Grade_II_disability_rate_among_new_cases_of_leprosy_Fem_gte_15:= 0;


LEP_NOT__1_1_1:= 0;


LEP_NOT__1_1_2:= 0;


LEP_NOT__1_1_3:= 0;


LEP_NOT__1_1_4:= 0;


LEP_NOT__1_1_5_1:= 0;


LEP_NOT__1_1_5_2:= 0;


LEP_NOT__1_1_5_3:= 0;


LEP_NOT__1_1_5_4:= 0;


LEP_DIS_1_1:= 0;


LEP_DIS_1_2:= 0;


LEP_DIS_1_3:= 0;


LEP_DIS_1_4:= 0;


LEP_TX_2_:= 0;


LEP_TX_3_:= 0;


LEP_TX_4_:= 0;


LEP_TX_5_:= 0;


xsum:= 0;


MS_OPD_NumOV_1_1:= 0;


MS_OPD_NumOV_1_2:= 0;


MS_OPD_NumOV_1_3:= 0;


MS_OPD_NumOV_1_4:= 0;


MS_OPD_NumOV_1_5:= 0;


MS_OPD_NumOV_1_6:= 0;


MS_OPD_NumOV_1_7:= 0;


MS_OPD_NumOV_1_8:= 0;


MS_OPD_NumOV_1_9:= 0;


MS_OPD_NumOV_1_10:= 0;


MS_OPD_NumOV_1_11:= 0;


MS_OPD_NumOV_1_12:= 0;


MS_OPD_NumOV_1_13:= 0;


MS_OPD_NumOV_1_14:= 0;


MS_OPD_NumOV_2:= 0;


HCSM_EDA_TDR:= 0;


PMS_AVAIL_1_26_:= 0;


PMS_AVAIL_1_27_:= 0;


PMS_AVAIL_1_28_:= 0;


PMS_AVAIL_1_29_:= 0;


PMS_AVAIL_1_30_:= 0;


PMS_AVAIL_1_31_:= 0;


PMS_AVAIL_1_32_:= 0;


PMS_AVAIL_1_33_:= 0;


--NEW
CHIM_ECND_2_1:= 0;


CHIM_ECND_2_2:= 0;


CHIM_ECND_2_3:= 0;


CHIM_ECND_1_1:= 0;


CHIM_ECND_1_2:= 0;


CHIM_ECND_1:= 0;

EPI_VWR_Penta_giv_:= 0;

--nutrition
 NTR_LBW_1_ := 0;
 NTR_LBW_2_ := 0;
 NTR_GMP_1 := 0;
 NTR_GMP_2 := 0;
 NTR_GMP_MM_1 := 0;
 NTR_GMP_MM_2 := 0;
 GMP_SM_1 := 0;
 GMP_SM_2 := 0;
 NUT_VITA_1_1 := 0;
 NUT_VITA_1_2 := 0;
 NUT_VITA_2_1 := 0;
 NUT_VITA_2_2 := 0;
 NUT_DeW_1_1 := 0;
 NUT_DeW_1_2 := 0;
 NUT_DeW_2 := 0;
 NUT_IFA_1_1 := 0;
 NUT_IFA_1_2 := 0;
 NUT_IFA_1_3 := 0;
 PLW_S4AM := 0;
 PLW_S4AM_1 := 0;
 PLW_S4AM_2 := 0;
 NUT_PreSMN_2_1 := 0;
 NUT_PreSMN_2_2 := 0;
 NUT_U5SMN_1_1 := 0;
 NUT_U5SMN_1_2 := 0;
 NUT_U5SMN_1_3 := 0;
 NUT_U5SMN_MAM_1_1 := 0;
 NUT_U5SMN_MAM_1_2 := 0;
 NUT_U5SMN_MAM_1_3 := 0;
 NUT_U5SMN_SAM_1_1 := 0;
 NUT_U5SMN_SAM_1_2 := 0;
 NUT_U5SMN_SAM_1_3 := 0;
 NUT_TX_U5MN_SAM_Beging_SC_1_1 := 0;
 NUT_TX_U5MN_SAM_Beging_SC_1_2 := 0;
 NUT_TX_U5MN_SAM_Beging_SC_1_3 := 0;
 NUT_TX_U5MN_SAM__Adt_SC_2_1 := 0;
 NUT_TX_U5MN_SAM__Adt_SC_2_2 := 0;
 NUT_TX_U5MN_SAM__Adt_SC_2_3 := 0;
 NUT_TX_U5MN_SAM_Stab_SC_3_1 := 0;
 NUT_TX_U5MN_SAM_Stab_SC_3_2 := 0;
 NUT_TX_U5MN_SAM_Stab_SC_3_3 := 0;
 NUT_TX_U5MN_SAM_Cur_SC_4_1 := 0;
 NUT_TX_U5MN_SAM_Cur_SC_4_2 := 0;
 NUT_TX_U5MN_SAM_Cur_SC_4_3 := 0;
 NUT_TX_U5MN_SAM_died_SC_5_1 := 0;
 NUT_TX_U5MN_SAM_died_SC_5_2 := 0;
 NUT_TX_U5MN_SAM_died_SC_5_3 := 0;
 NUT_TX_U5MN_SAM_TO_SC_6_1 := 0;
 NUT_TX_U5MN_SAM_TO_SC_6_2 := 0;
 NUT_TX_U5MN_SAM_TO_SC_6_3 := 0;
 NUT_TX_U5MN_SAM_Def_SC_7_1 := 0;
 NUT_TX_U5MN_SAM_Def_SC_7_2 := 0;
 NUT_TX_U5MN_SAM_Def_SC_7_3 := 0;
 NUT_TX_U5MN_SAM_NR_SC_8_1 := 0;
 NUT_TX_U5MN_SAM_NR_SC_8_2 := 0;
 NUT_TX_U5MN_SAM_NR_SC_8_3 := 0;
 NUT_TX_U5MN_SAM_Ext_SC_9_1 := 0;
 NUT_TX_U5MN_SAM_Ext_SC_9_2 := 0;
 NUT_TX_U5MN_SAM_Ext_SC_9_3 := 0;
 NUT_TX_U5MN_SAM_OTP := 0;
 NUT_TX_U5MN_SAM_Adt_OTP := 0;
 NUT_TX_U5MN_SAM_Cur_OTP_1 := 0;
 NUT_TX_U5MN_SAM_died_OTP_2 := 0;
 NUT_TX_U5MN_SAM_TO_OTP_3 := 0;
 NUT_TX_U5MN_SAM_Def_OTP_4 := 0;
 NUT_TX_U5MN_SAM_NR_OTP_5 := 0;
 NUT_TX_U5MN_SAM_Ext_OTP_E := 0;
 NUT_TX_U5MN__MAM_Beging_OTP := 0;
 NUT_TX_U5MN_MAM_Adt_TSFP := 0;
 
 NUT_TX_U5MN_SAM_Cur_TSFP_1 := 0;
 NUT_TX_U5MN_SAM_died_TSFP_2 := 0;
 NUT_TX_U5MN_SAM_TO_TSFP_3 := 0;
 NUT_TX_U5MN_SAM_Def_TSFP_4 := 0;
 NUT_TX_U5MN_SAM_NR_TSFP_5 := 0;
 NUT_TX_U5MN__SAM_Ext_TSFP_E := 0;
 NUT_TX_U5MN_MAM_Beging_OTP := 0;
 NUT_TX_U5MN_MAM_Adt_OTP := 0;
 NUT_TX_U5MN_Cur_TSFP_1 := 0;
 NUT_TX_U5MN_died_TSFP_2 := 0;
 NUT_TX_U5MN_TO_TSFP_3 := 0;
 NUT_TX_U5MN__Def_TSFP_4 := 0;
 NUT_TX_U5MN_MAM__NR_TSFP_5 := 0;
 NUT_TX_U5MN_MAM_Ext_TSFP_E := 0;
 NUT_DeW_Numerator := 0;
 NUT_TX_U5MN_SAM_us_OTP_8_ := 0;
 NUT_TX_U5MN_SAM_US_TSFP_8_ := 0;

begin


 -- ANC_1stV_GA.1:ANC:Total Number of pregnant women that received ANC First visit by gestational week
IF p_indic_name = 'indic_pregnant_women_received_ANC_First_visit_by_gestational_week' THEN 

IF p_record_x.anc1_date IS NOT NULL
AND p_record_x.anc1_date <> ''
AND p_record_x.anc1_gestational_age = '0' THEN

 pregnant_women_received_ANC_First_visit_by_gestational_week:= 1;

END IF;


-- Mal_Pos.1:CDC:Number of slides or RDT positive for malaria
ELSIF p_indic_name = 'indic_Number_of_slides_or_RDT_positive_for_malaria' THEN IF p_record_x.hew_rdt_result = 'positive' THEN Number_of_slides_or_RDT_positive_for_malaria:= 1;


END IF;


-- ANC_1stV_GA.1.1:ANC:<16 weeks gestation
ELSIF p_indic_name = 'indic_pregnant_women_received_ANC_First_visit_by_gw_less_than_16' THEN IF p_record_x.anc1_date IS NOT NULL
AND p_record_x.anc1_date <> ''
AND p_record_x.anc1_gestational_age = '16' THEN pregnant_women_received_ANC_First_visit_by_gw_less_than_16:= 1;


END IF;


-- ANC_1stV_GA.1.2:ANC:>16 weeks gestation
ELSIF p_indic_name = 'indic_pregnant_women_received_ANC_First_visit_by_gw_geq_to_16' THEN IF p_record_x.anc1_date IS NOT NULL
AND p_record_x.anc1_date <> ''
AND p_record_x.anc1_gestational_age = '16' THEN pregnant_women_received_ANC_First_visit_by_gw_geq_to_16:= 1;


END IF;


-- ANC_1stV_MA.1.1:ANC:Pregnant women aged 10 to 14 years that received ANC first visit
ELSIF p_indic_name = 'indic_ANC_1stV_MA_1_1' THEN IF p_record_x.anc1_date IS NOT NULL
AND p_record_x.anc1_date <> ''
AND p_record_x.age_years = '10'
AND p_record_x.age_years = '14' THEN ANC_1stV_MA_1_1:= 1;


END IF;


-- ANC_1stV_MA.1.2:ANC:Pregnant women aged 15 to 19 years that received ANC first visit
ELSIF p_indic_name = 'indic_ANC_1stV_MA_1_2' THEN IF p_record_x.anc1_date IS NOT NULL
AND p_record_x.anc1_date <> ''
AND p_record_x.age_years = '15'
AND p_record_x.age_years = '19' THEN ANC_1stV_MA_1_2:= 1;


END IF;


-- ANC_1stV_MA.1.3:ANC:Pregnant women above 20 years that received ANC first visit
ELSIF p_indic_name = 'indic_ANC_1stV_MA_1_3' THEN IF p_record_x.anc1_date IS NOT NULL
AND p_record_x.anc1_date <> ''
AND p_record_x.age_years = '20' THEN ANC_1stV_MA_1_3:= 1;


END IF;


-- ANC_1stV_MA.1:ANC:Number of pregnant women that received ANC first visit by maternal age
ELSIF p_indic_name = 'indic_number_of_pregnant_received_anc_first_visit' THEN IF p_record_x.anc1_date IS NOT NULL
AND p_record_x.anc1_date <> ''
AND p_record_x.age_years = '0' THEN number_of_pregnant_received_anc_first_visit:= 1;


END IF;


-- EPI_BCG1:Immunization (EPI):Number of children under one yr of age who have received BCG vaccine
ELSIF p_indic_name = 'indic_number_of_children_under_one_yr_received_bcg' THEN IF EXTRACT(
  MONTH
  FROM
    AGE(p_record_x.bcg_date:: DATE, p_record_x.dob:: DATE)
) <= 12 THEN number_of_children_under_one_yr_received_bcg:= 1;


END IF;


-- MV_TT1.1:Immunization (EPI):Number of women who have received TT1 vaccination
ELSIF p_indic_name = 'indic_Number_of_women_who_have_received_TT1_vaccination' THEN IF p_record_x.tt1_date IS NOT NULL
AND p_record_x.tt1_date <> ''
AND p_record_x.case_type = 'client' THEN Number_of_women_who_have_received_TT1_vaccination:= 1;


END IF;


-- MV_TT2.1:Immunization (EPI):Number of women who have received TT2 vaccination
ELSIF p_indic_name = 'indic_Number_of_women_who_have_received_TT2_vaccination' THEN IF p_record_x.tt2_date IS NOT NULL
AND p_record_x.tt2_date <> ''
AND p_record_x.case_type = 'client' THEN Number_of_women_who_have_received_TT2_vaccination:= 1;


END IF;


-- MV.TT3.1:Immunization (EPI):Number of women who have received TT3 vaccination
ELSIF p_indic_name = 'indic_Number_of_women_who_have_received_TT3_vaccination' THEN IF p_record_x.tt3_date IS NOT NULL
AND p_record_x.tt3_date <> ''
AND p_record_x.case_type = 'client' THEN Number_of_women_who_have_received_TT3_vaccination:= 1;


END IF;


-- MV.TT4.1:Immunization (EPI):Number of women who have received TT4 vaccination
ELSIF p_indic_name = 'indic_Number_of_women_who_have_received_TT4_vaccination' THEN IF p_record_x.tt4_date IS NOT NULL
AND p_record_x.tt4_date <> ''
AND p_record_x.case_type = 'client' THEN Number_of_women_who_have_received_TT4_vaccination:= 1;


END IF;


-- MV.TT5.1:Immunization (EPI):Number of women who have received TT5 vaccination
ELSIF p_indic_name = 'indic_Number_of_women_who_have_received_TT5_vaccination' THEN IF p_record_x.tt5_date IS NOT NULL
AND p_record_x.tt5_date <> ''
AND p_record_x.case_type = 'client' THEN Number_of_women_who_have_received_TT5_vaccination:= 1;


END IF;


-- RMH_FP_CAR:Family Planning:Contraceptive acceptANCe rate
ELSIF p_indic_name = 'indic_fp_contraceptive_acceptance_rate' THEN IF p_record_x.yearly_report = 'yes' THEN fp_contraceptive_acceptance_rate:= 1;


END IF;


-- FP_CAR_Age.1.1:Family Planning:10-14 yr
ELSIF p_indic_name = 'indic_fp_new_at_10_to_14' THEN IF p_record_x.yearly_report = 'yes'
AND p_record_x.fp_acceptor_type = 'new'
AND p_record_x.age_range = '10-14' THEN fp_new_at_10_to_14:= 1;


END IF;


-- FP_CAR_Age.1.2:Family Planning:15-19 yr
ELSIF p_indic_name = 'indic_fp_new_at_15_to_19' THEN IF p_record_x.yearly_report = 'yes'
AND p_record_x.fp_acceptor_type = 'new'
AND p_record_x.age_range = '15-19' THEN fp_new_at_15_to_19:= 1;


END IF;


-- FP_CAR_Age.1.3:Family Planning:20 - 24 yr
ELSIF p_indic_name = 'indic_fp_new_at_20_to_24' THEN IF p_record_x.yearly_report = 'yes'
AND p_record_x.fp_acceptor_type = 'new'
AND p_record_x.age_range = '20-24' THEN fp_new_at_20_to_24:= 1;


END IF;


-- FP_CAR_Age.1.4:Family Planning:25 -29 yr
ELSIF p_indic_name = 'indic_fp_new_at_25_to_29' THEN IF p_record_x.yearly_report = 'yes'
AND p_record_x.fp_acceptor_type = 'new'
AND p_record_x.age_range = '25-29' THEN fp_new_at_25_to_29:= 1;


END IF;


-- FP_CAR_Age.1.5:Family Planning:30 -49 yr
ELSIF p_indic_name = 'indic_fp_new_at_30_to_49' THEN IF p_record_x.yearly_report = 'yes'
AND p_record_x.fp_acceptor_type = 'new'
AND p_record_x.age_range = '30-49' THEN fp_new_at_30_to_49:= 1;


END IF;


-- FP_CAR_Age.2.1:Family Planning:10-14 yr
ELSIF p_indic_name = 'indic_fp_repeat_at_10_to_14' THEN IF p_record_x.yearly_report = 'yes'
AND p_record_x.fp_acceptor_type = 'repeat'
AND p_record_x.age_range = '10-14' THEN fp_repeat_at_10_to_14:= 1;


END IF;


-- FP_CAR_Age.2.2:Family Planning:15-19 yr
ELSIF p_indic_name = 'indic_fp_repeat_at_15_to_19' THEN IF p_record_x.yearly_report = 'yes'
AND p_record_x.fp_acceptor_type = 'repeat'
AND p_record_x.age_range = '15-19' THEN fp_repeat_at_15_to_19:= 1;


END IF;


-- FP_CAR_Age.2.3:Family Planning:20 - 24 yr
ELSIF p_indic_name = 'indic_fp_repeat_at_20_to_24' THEN IF p_record_x.yearly_report = 'yes'
AND p_record_x.fp_acceptor_type = 'repeat'
AND p_record_x.age_range = '20-24' THEN fp_repeat_at_20_to_24:= 1;


END IF;


-- FP_CAR_Age.2.4:Family Planning:25 -29 yr
ELSIF p_indic_name = 'indic_fp_repeat_at_25_to_29' THEN IF p_record_x.yearly_report = 'yes'
AND p_record_x.fp_acceptor_type = 'repeat'
AND p_record_x.age_range = '25-29' THEN fp_repeat_at_25_to_29:= 1;


END IF;


-- FP_CAR_Age.2.5:Family Planning:30 -49 yr
ELSIF p_indic_name = 'indic_fp_repeat_at_30_to_49' THEN IF p_record_x.yearly_report = 'yes'
AND p_record_x.fp_acceptor_type = 'repeat'
AND p_record_x.age_range = '30-49' THEN fp_repeat_at_30_to_49:= 1;


END IF;


-- FP_CAR_Mtd.1.1:Family Planning:Oral contraceptives
ELSIF p_indic_name = 'indic_fp_new_oral_contraceptives' THEN IF p_record_x.yearly_report = 'yes'
AND p_record_x.fp_acceptor_type = 'new'
AND p_record_x.fp_method = 'oral_contraceptives' THEN fp_new_oral_contraceptives:= 1;


END IF;


-- FP_CAR_Mtd.1.2:Family Planning:Injectable
ELSIF p_indic_name = 'indic_fp_new_injectables' THEN IF p_record_x.yearly_report = 'yes'
AND p_record_x.fp_acceptor_type = 'new'
AND p_record_x.fp_method = 'injections' THEN fp_new_injectables:= 1;


END IF;


-- FP_CAR_Mtd.1.3:Family Planning:Implants
ELSIF p_indic_name = 'indic_fp_new_implants' THEN IF p_record_x.yearly_report = 'yes'
AND p_record_x.fp_acceptor_type = 'new'
AND p_record_x.fp_method = 'implants' THEN fp_new_implants:= 1;


END IF;


-- FP_CAR_Mtd.1.4:Family Planning:IUCD
ELSIF p_indic_name = 'indic_fp_new_iucd' THEN IF p_record_x.yearly_report = 'yes'
AND p_record_x.fp_acceptor_type = 'new'
AND p_record_x.fp_method = 'iucd' THEN fp_new_iucd:= 1;


END IF;


-- FP_CAR_Mtd.2.1:Family Planning:Oral contraceptives
ELSIF p_indic_name = 'indic_fp_repeat_oral_contraceptives' THEN IF p_record_x.yearly_report = 'yes'
AND p_record_x.fp_acceptor_type = 'repeat'
AND p_record_x.fp_method = 'oral_contraceptives' THEN fp_repeat_oral_contraceptives:= 1;


END IF;


-- FP_CAR_Mtd.2.2:Family Planning:Injectable
ELSIF p_indic_name = 'indic_fp_repeat_injectables' THEN IF p_record_x.yearly_report = 'yes'
AND p_record_x.fp_acceptor_type = 'repeat'
AND p_record_x.fp_method = 'injections' THEN fp_repeat_injectables:= 1;


END IF;


-- FP_CAR_Mtd.2.3:Family Planning:Implants
ELSIF p_indic_name = 'indic_fp_repeat_implants' THEN IF p_record_x.yearly_report = 'yes'
AND p_record_x.fp_acceptor_type = 'repeat'
AND p_record_x.fp_method = 'implants' THEN fp_repeat_implants:= 1;


END IF;


-- FP_CAR_Mtd.2.4:Family Planning:IUCD
ELSIF p_indic_name = 'indic_fp_repeat_iucd' THEN IF p_record_x.yearly_report = 'yes'
AND p_record_x.fp_acceptor_type = 'repeat'
AND p_record_x.fp_method = 'iucd' THEN fp_repeat_iucd:= 1;


END IF;


-- FP_IPPF_Age.1:Family Planning:10-14 yr
ELSIF p_indic_name = 'indic_fp_at_10_to_14' THEN IF p_record_x.ppfp = 'yes'
AND p_record_x.age_range = '10-14' THEN fp_at_10_to_14:= 1;


END IF;


-- FP_IPPF_Age.2:Family Planning:15-19 yr
ELSIF p_indic_name = 'indic_fp_at_15_to_19' THEN IF p_record_x.ppfp = 'yes'
AND p_record_x.age_range = '15-19' THEN fp_at_15_to_19:= 1;


END IF;


-- FP_IPPF_Age.3:Family Planning:20 - 24 yr
ELSIF p_indic_name = 'indic_fp_at_20_to_24' THEN IF p_record_x.ppfp = 'yes'
AND p_record_x.age_range = '20-24' THEN fp_at_20_to_24:= 1;


END IF;


-- FP_IPPF_Age.4:Family Planning:25 -29 yr
ELSIF p_indic_name = 'indic_fp_at_25_to_29' THEN IF p_record_x.ppfp = 'yes'
AND p_record_x.age_range = '25-29' THEN fp_at_25_to_29:= 1;


END IF;


-- FP_IPPF_Age.5:Family Planning:30-49 yr
ELSIF p_indic_name = 'indic_fp_at_30_to_49' THEN IF p_record_x.ppfp = 'yes'
AND p_record_x.age_range = '30-49' THEN fp_at_30_to_49:= 1;


END IF;


-- FP_IPPF_Mtd.1:Family Planning:Pills(POP)
ELSIF p_indic_name = 'indic_fp_oral_contraceptives' THEN IF p_record_x.ppfp = 'yes'
AND p_record_x.fp_method = 'oral_contraceptives' THEN fp_oral_contraceptives:= 1;


END IF;


-- FP_IPPF_Mtd.2:Family Planning:Implants
ELSIF p_indic_name = 'indic_fp_implants' THEN IF p_record_x.ppfp = 'yes'
AND p_record_x.fp_method = 'implants' THEN fp_implants:= 1;


END IF;


-- FP_IPPF_Mtd.3:Family Planning:IUCD
ELSIF p_indic_name = 'indic_fp_iucd' THEN IF p_record_x.ppfp = 'yes'
AND p_record_x.fp_method = 'iucd' THEN fp_iucd:= 1;


END IF;


-- PNC_E1stV.1.1:Birth Attendants (BA):Early first postnatal care attendANCes 0-24 hrs
ELSIF p_indic_name = 'indic_postnatal_0_24' THEN IF p_record_x.pnc1_hrs_after_birth = '24'
AND p_record_x.pnc1_hrs_after_birth = '0' THEN postnatal_0_24:= 1;


END IF;


-- PNC_E1stV.1.3:Birth Attendants (BA):Early first postnatal care attendANCes 25-48 hrs
ELSIF p_indic_name = 'indic_postnatal_25_48' THEN IF p_record_x.pnc1_hrs_after_birth = '48'
AND p_record_x.pnc1_hrs_after_birth = '25' THEN postnatal_25_48:= 1;


END IF;


-- PNC_E1stV.1.4:Birth Attendants (BA):Early first postnatal care attendANCes49-72 hrs
ELSIF p_indic_name = 'indic_postnatal_49_72' THEN IF p_record_x.pnc1_hrs_after_birth = '72'
AND p_record_x.pnc1_hrs_after_birth = '49' THEN postnatal_49_72:= 1;


END IF;


-- PNC_E1stV.1.5:Birth Attendants (BA):Early first postnatal care attendANCes 73hrs-7 days
ELSIF p_indic_name = 'indic_postnatal_73_168' THEN IF p_record_x.pnc1_hrs_after_birth = '168'
AND p_record_x.pnc1_hrs_after_birth = '73' THEN postnatal_73_168:= 1;


END IF;


-- CMD_CMMR.1.1:Birth Attendants (BA):Number of maternal deaths at home
ELSIF p_indic_name = 'indic_deaths_of_home' THEN IF p_record_x.death_location = 'community'
AND p_record_x.death_maternal = 'yes' THEN deaths_of_home:= 1;


END IF;


-- CMD_CMMR.1.2:Birth Attendants (BA):Number of maternal deaths on the way to health facility
ELSIF p_indic_name = 'indic_deaths_on_the_way' THEN IF p_record_x.death_location = 'en_route_hp'
AND p_record_x.death_maternal = 'yes' THEN deaths_on_the_way:= 1;


END IF;


-- CMD_CMMR.1.3:Birth Attendants (BA):Number of maternal deaths at health post
ELSIF p_indic_name = 'indic_deaths_at_health_post' THEN IF p_record_x.death_location = 'health_post'
AND p_record_x.death_maternal = 'yes' THEN deaths_at_health_post:= 1;


END IF;


-- EPI_Penta1.1:Immunization (EPI):Number of children under one yr of age who have received first dose of pentavalent vaccine
ELSIF p_indic_name = 'indic_penta1' THEN IF p_record_x.epi_location = 'health_post' THEN penta1:= 1;


END IF;


-- EPI_Penta3.1:Immunization (EPI):Number of children under one yr of age who have received third dose of pentavalent vaccine
ELSIF p_indic_name = 'indic_penta3' THEN IF p_record_x.epi_location = 'health_post' THEN penta3:= 1;


END IF;


-- EPI_PCV1.1:Immunization (EPI):Number of children under one yr of age who have received first dose of pneumococcal vaccine
ELSIF p_indic_name = 'indic_pcv1' THEN 
IF p_record_x.epi_location = 'health_post'
AND p_record_x.pcv1_date <= p_record_x.dob + INTERVAL '1 year'
 
 THEN pcv1:= 1;


END IF;


-- EPI_PCV3.1:Immunization (EPI):Number of children under one yr of age who have received third dose of pneumococcal vaccine
ELSIF p_indic_name = 'indic_pcv3' THEN IF p_record_x.epi_location = 'health_post'
AND p_record_x.pcv3_date <= p_record_x.dob + INTERVAL '1 year'
 THEN pcv3:= 1;


END IF;


-- EPI_IPV.1:Immunization (EPI):Number of children under one yr of age who have received one dose of inactivated polio vaccine
ELSIF p_indic_name = 'indic_ipv' THEN IF p_record_x.epi_location = 'health_post' THEN ipv:= 1;


END IF;


-- EPI_RT1.1:Immunization (EPI):Number of children under one yr of age who have received first dose of Rotavirus vaccine
ELSIF p_indic_name = 'indic_rota1' THEN IF p_record_x.epi_location = 'health_post' THEN rota1:= 1;


END IF;


-- EPI_RT1.2:Immunization (EPI):Number of children under one yr of age who have received 2nd dose of Rotavirus vaccine
ELSIF p_indic_name = 'indic_rota2' THEN IF p_record_x.epi_location = 'health_post' THEN rota2:= 1;


END IF;


-- EPI_MCV1.1:Immunization (EPI):Number of children under one yr of age who have received first dose of measles vaccine
ELSIF p_indic_name = 'indic_measles_1' THEN IF p_record_x.epi_location = 'health_post' THEN measles_1:= 1;


END IF;


-- s#check#
ELSIF p_indic_name = 'indic_infants_whose_mother' THEN IF p_record_x.preventative_tt = 'yes' THEN infants_whose_mother:= 1;


END IF;


-- None
ELSIF p_indic_name = 'indic_FP_CAR_Mtd_2_7' THEN IF p_record_x.fp_acceptor_type = 'repeat' THEN FP_CAR_Mtd_2_7:= 1;


END IF;


-- None
ELSIF p_indic_name = 'indic_FP_IPPF_Mtd_5' THEN IF p_record_x.ppfp = 'yes' THEN FP_IPPF_Mtd_5:= 1;


END IF;


-- L&D_SBA.1:Birth Attendants (BA):Total Number of births attended by level IV HEW and nurses at Health post
ELSIF p_indic_name = 'indic_L_D_SBA_1' THEN IF p_record_x.outcome_date IS NOT NULL
AND p_record_x.outcome_date <> ''
AND p_record_x.outcome_location = 'health_post' THEN L_D_SBA_1:= 1;


END IF;


-- CHIM_PnRX.1:Child Health:Number of under 5 children treated for pneumonia
ELSIF p_indic_name = 'indic_number_of_under_5__pnemonia' THEN IF EXTRACT(
  MONTH
  FROM
    AGE(
      p_record_x.illness_start_date:: DATE,
      p_record_x.dob:: DATE
    )
) <= 60
and p_record_x.current_classification like '%pneumonia%' THEN number_of_under_5__pnemonia:= 1;


END IF;


-- CHIM_VSD.1:Child Health:Number of sick young infants 0-2 months treated for sepsis
ELSIF p_indic_name = 'indic_CHIM_VSD_1' THEN IF EXTRACT(
  MONTH
  FROM
    AGE(
      p_record_x.illness_start_date:: DATE,
      p_record_x.dob:: DATE
    )
) <= 60
and p_record_x.current_classification like '%vsd%' THEN CHIM_VSD_1:= 1;


END IF;


-- CHIM_VSD.2:Child Health:Number of sick young infants 0-2 months treated for local bacterial infection(LBI)
ELSIF p_indic_name = 'indic_CHIM_VSD_2' THEN IF EXTRACT(
  MONTH
  FROM
    AGE(
      p_record_x.illness_start_date:: DATE,
      p_record_x.dob:: DATE
    )
) < 60
and p_record_x.current_classification like '%local_bacterial_infection%' THEN CHIM_VSD_2:= 1;


END IF;


-- ANC_4thV_MA.1.3:ANC:> 20 yr
ELSIF p_indic_name = 'indic_antenatal_care_coverage_four_visits_from_gte_20_yr' THEN IF p_record_x.anc1_date IS NOT NULL
AND p_record_x.anc1_date <> ''
AND p_record_x.age_years = '20' THEN antenatal_care_coverage_four_visits_from_gte_20_yr:= 1;


END IF;


-- ANC_4thV_MA.1.1:ANC:Pregnant women aged 10 to 14 years that received four ANC visits
ELSIF p_indic_name = 'indic_ANC_4thV_MA_1_1' THEN IF p_record_x.anc1_date IS NOT NULL
AND p_record_x.anc1_date <> ''
AND p_record_x.age_years = '14'
AND p_record_x.age_years = '10' THEN ANC_4thV_MA_1_1:= 1;


END IF;


-- ANC_4thV_MA.1.2:Family Planning:15-19 yr
ELSIF p_indic_name = 'indic_antenatal_care_coverage_four_visits_from_15_19_yr' THEN IF p_record_x.anc1_date IS NOT NULL
AND p_record_x.anc1_date <> ''
AND p_record_x.age_years = '19'
AND p_record_x.age_years = '15' THEN antenatal_care_coverage_four_visits_from_15_19_yr:= 1;


END IF;


-- NCH_CHIM_PnRX:Under-five children with pneumonia received antibiotic treatment
ELSIF p_indic_name = 'indic_nch_chim_pnrx' THEN IF p_record_x.age_months = '60' THEN nch_chim_pnrx:= 1;


END IF;


-- NCH_CHIM_AsfxRS.2:Asphyxiated neonates who were resuscitated (with bag & mask) and survived
ELSIF p_indic_name = 'indic_nch_chim_asfxrs' THEN IF (
  p_record_x.current_classification like '%severe_dehydration%'
  OR p_record_x.current_classification like '%some_dehydration%'
  or p_record_x.current_classification like '%no_dehydration%'
)
AND (
  p_record_x.all_med_names like '%ors%'
  or p_record_x.all_med_names like '%ors_planb%'
  or p_record_x.all_med_names like '%zink%'
)
and p_record_x.asphyxiated_neonate = 'yes' THEN nch_chim_asfxrs:= 1;


END IF;


-- Contraceptive new acceptors by method - Others(MAT_CAR_Mtd17):Family Planning 
ELSIF p_indic_name = 'indic_MAT_CAR_Mtd_1_7' THEN IF p_record_x.fp_method = 'other'
AND p_record_x.fp_acceptor_type = 'new'
AND p_record_x.monthly_report = 'yes' THEN MAT_CAR_Mtd_1_7:= 1;


END IF;


-- Contraceptive repeat acceptors by method - Others(MAT_CAR_Mtd27):Family Planning 
ELSIF p_indic_name = 'indic_MAT_CAR_Mtd_2_7' THEN IF p_record_x.fp_method = 'other'
AND p_record_x.fp_acceptor_type = 'repeat'
AND p_record_x.monthly_report = 'yes' THEN MAT_CAR_Mtd_2_7:= 1;


END IF;


-- Total Immediate Postpartum Contraceptive acceptors disaggregated by method - Others(FP_IPPF_Mtd5):Family Planning 
ELSIF p_indic_name = 'indic_FP_IPPF_Mtd_5_' THEN IF p_record_x.fp_method = 'other'
AND p_record_x.ppfp = 'yes'
AND p_record_x.monthly_report = 'yes' THEN FP_IPPF_Mtd_5_:= 1;


END IF;


-- Total number of premature removal of LAFP within 6 month insertion - Implants(MAT_LAFPPR11):Family Planning 
ELSIF p_indic_name = 'indic_MAT_LAFPPR_1_1' THEN IF p_record_x.fp_prev_method = 'implants'
AND p_record_x.monthly_report = 'yes' THEN MAT_LAFPPR_1_1:= 1;


END IF;


-- Total number of premature removal of LAFP within 6 month insertion - IUCD(MAT_LAFPPR.1. 2):Family Planning 
ELSIF p_indic_name = 'indic_MAT_LAFPPR_1_2' THEN IF p_record_x.fp_prev_method = 'iusd'
AND p_record_x.monthly_report = 'yes' THEN MAT_LAFPPR_1_2:= 1;


END IF;


-- Total number of premature removal of LAFP within 6 month insertion - Others(MAT_LAFPPR.1. 3):Family Planning 
ELSIF p_indic_name = 'indic_MAT_LAFPPR_1_3' THEN IF p_record_x.fp_prev_method = 'other'
AND p_record_x.monthly_report = 'yes' THEN MAT_LAFPPR_1_3:= 1;


END IF;


-- Total number of premature removal of LAFP within 6 month insertion - Total LAFP removal in the reporting period(MAT_TLAFPR.):Family Planning 
ELSIF p_indic_name = 'indic_MAT_TLAFPR_' THEN IF p_record_x.fp_prev_method_switch_date IS NOT NULL
AND p_record_x.fp_prev_method_switch_date <> ''
AND p_record_x.monthly_report = 'yes' THEN MAT_TLAFPR_:= 1;


END IF;


-- Total Number of pregnant women that received antenatal care First contact by gestational week - <= 12 weeks(MAT_ANC1_GA.1. 1):ANC 
ELSIF p_indic_name = 'indic_MAT_ANC1_GA_1_1' THEN IF p_record_x.closed = 'False'
AND p_record_x.anc1_gestational_age = '12' THEN MAT_ANC1_GA_1_1:= 1;


END IF;


-- Total number of pregnant women that received four or more antenatal care contacts by gestational week - <= 30 weeks(MAT_ANC4+_GA.1. 1):ANC 
ELSIF p_indic_name = 'indic_MAT_ANC4__GA_1_1' THEN IF p_record_x.anc4_date IS NOT NULL
AND p_record_x.anc4_date <> ''
AND p_record_x.closed = 'False'
AND p_record_x.gestational_age = '30'
AND p_record_x.next_visit_num_hp = '5' THEN MAT_ANC4__GA_1_1:= 1;


END IF;


-- Total number of pregnant women that received four or more antenatal care contacts by gestational week - > 30 weeks(MAT_ANC4+_GA.1. 2):ANC 
ELSIF p_indic_name = 'indic_MAT_ANC4__GA_1_2' THEN IF p_record_x.anc4_date IS NOT NULL
AND p_record_x.anc4_date <> ''
AND p_record_x.gestational_age = '30'
AND p_record_x.next_visit_num_hp = '5'
AND p_record_x.closed = 'False' THEN MAT_ANC4__GA_1_2:= 1;


END IF;


-- Birth and Death Notifications - Number of Community birth notifications given(MAT_B&D_CBN_1.):Birth Attendants (BA) 
ELSIF p_indic_name = 'indic_MAT_B_D_CBN_1_' THEN IF p_record_x.closed = 'False'
AND p_record_x.outcome_maternal = 'delivery'
AND p_record_x.outcome_location = 'community' THEN MAT_B_D_CBN_1_:= 1;


END IF;


-- Birth and Death Notifications - Number of Community death notifications given(MAT_B&D_CDN_2.):Birth Attendants (BA) 
ELSIF p_indic_name = 'indic_MAT_B_D_CDN_2_' THEN IF p_record_x.closed = 'False'
AND p_record_x.outcome_maternal = 'delivery'
AND p_record_x.outcome_location = 'community' THEN MAT_B_D_CDN_2_:= 1;


END IF;


-- Number of postnatal visits within 7 days of delivery - Number of postnatal visits within 7 days of delivery(MAT_EPNC.1):Birth Attendants (BA) 
ELSIF p_indic_name = 'indic_MAT_EPNC_1' THEN IF p_record_x.closed = 'False'
AND p_record_x.pnc1_hrs_after_birth = '168' THEN MAT_EPNC_1:= 1;


END IF;


-- Number of postnatal visits within 7 days of delivery - 0 - 24 hrs(MAT_EPNC.1. 1):Birth Attendants (BA) 
ELSIF p_indic_name = 'indic_MAT_EPNC_1_1' THEN IF p_record_x.closed = 'False'
AND p_record_x.pnc1_hrs_after_birth = '24' THEN MAT_EPNC_1_1:= 1;


END IF;


-- Number of postnatal visits within 7 days of delivery - 25 - 48 hrs (1 - 2 days)(MAT_EPNC.1. 3):Birth Attendants (BA) 
ELSIF p_indic_name = 'indic_MAT_EPNC_1_3' THEN IF p_record_x.closed = 'False'
AND p_record_x.pnc1_hrs_after_birth = '24'
AND p_record_x.pnc1_hrs_after_birth = '48' THEN MAT_EPNC_1_3:= 1;


END IF;


-- Number of postnatal visits within 7 days of delivery - 49 - 72 hrs (2 - 3 days)(MAT_EPNC.1. 4):Birth Attendants (BA) 
ELSIF p_indic_name = 'indic_MAT_EPNC_1_4' THEN IF p_record_x.closed = 'False'
AND p_record_x.pnc1_hrs_after_birth = '48'
AND p_record_x.pnc1_hrs_after_birth = '72' THEN MAT_EPNC_1_4:= 1;


END IF;


-- Number of postnatal visits within 7 days of delivery - 73 hrs - 7 days (4 - 7 days)(MAT_EPNC.1. 5):Birth Attendants (BA) 
ELSIF p_indic_name = 'indic_MAT_EPNC_1_5' THEN IF p_record_x.closed = 'False'
AND p_record_x.pnc1_hrs_after_birth = '72'
AND p_record_x.pnc1_hrs_after_birth = '168' THEN MAT_EPNC_1_5:= 1;


END IF;


-- Neonatal death at community disaggregated by place of death - Total number of live births in the kebele(CH_CND_LB_kebele.):Child Health 
ELSIF p_indic_name = 'indic_CH_CND_LB_kebele_' THEN IF p_record_x.closed = 'False'
AND p_record_x.outcome_maternal = 'delivery'
AND COALESCE(p_record_x.num_still_birth, '') <> '' THEN CH_CND_LB_kebele_:= 1;


END IF;


-- Number of sick young infants 0-2 months treated for Critical illness - Treated for Pneumonia(CH_TX_SYI.1. 3):Child Health 
ELSIF p_indic_name = 'indic_CH_TX_SYI_1_3' THEN IF p_record_x.closed = 'False'
AND p_record_x.current_classification like '%pneumonia%'
AND EXTRACT(
  MONTH
  FROM
    AGE(
      p_record_x.illness_start_date:: DATE,
      p_record_x.dob:: DATE
    )
) < 60 THEN CH_TX_SYI_1_3:= 1;


END IF;


-- Asphyxiated neonates who were resuscitated (with bag & mask) and survived - Total number of neonates resuscitated(CH_ASPH.2.):Child Health 
ELSIF p_indic_name = 'indic_CH_ASPH_2_' THEN IF (
  p_record_x.current_classification like '%severe_dehydration%'
  OR p_record_x.current_classification like '%some_dehydration%'
  or p_record_x.current_classification like '%no_dehydration%'
)
AND (
  p_record_x.all_med_names like '%ors%'
  or p_record_x.all_med_names like '%ors_planb%'
  or p_record_x.all_med_names like '%zink%'
)
and p_record_x.asphyxiated_neonate = 'yes' THEN CH_ASPH_2_:= 1;


END IF;


-- Newborns that received at least one dose of CHX to the cord on the first day after birth - Number of Newborns that received at least one dose of CHX to the cord on the first day after birth(CH_CHX.1.):Child Health 
ELSIF p_indic_name = 'indic_CH_CHX_1_' THEN IF (
  p_record_x.current_classification like '%severe_dehydration%'
  OR p_record_x.current_classification like '%some_dehydration%'
  or p_record_x.current_classification like '%no_dehydration%'
)
AND (
  p_record_x.all_med_names like '%ors%'
  or p_record_x.all_med_names like '%ors_planb%'
  or p_record_x.all_med_names like '%zink%'
)
and p_record_x.received_chlorhexidine = 'yes'
and EXTRACT(
  day
  FROM
    AGE(
      p_record_x.illness_start_date:: DATE,
      p_record_x.dob:: DATE
    )
) <= 1 THEN CH_CHX_1_:= 1;


END IF;


-- Number of Live births who receive a HepB-Birth dose(BD) - Number of children received all vaccine doses before 1st birthday(EPI_FI.1.):EPI 
ELSIF p_indic_name = 'indic_EPI_FI_1_' THEN IF p_record_x.full_immunization_under_1 = 'yes'
AND p_record_x.closed = 'False' THEN EPI_FI_1_:= 1;


END IF;


-- BCG Vaccine wastage rate - BCG doses damaged(EPI_VWR_BCG_dam.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_BCG_dam_' THEN IF p_record_x.loss_adjustment_reason = 'item_broken'
AND p_record_x.medication_name = 'BCG''`(Bacillus`Calmette`Guerin)`Vaccine`Injection`with`Diluent' 
AND COALESCE(p_record_x.loss_or_adjustment, '') <> ''

THEN EPI_VWR_BCG_dam_:= 1;


END IF;


-- BCG Vaccine wastage rate - BCG doses expired(EPI_VWR_BCG_dis.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_BCG_dis_' THEN IF p_record_x.loss_adjustment_reason = 'item_expired'
AND p_record_x.medication_name = 'BCG''`(Bacillus`Calmette`Guerin)`Vaccine`Injection`with`Diluent' 
AND COALESCE(p_record_x.loss_or_adjustment, '') <> ''

THEN EPI_VWR_BCG_dis_:= 1;


END IF;


-- Penta Vaccine wastage rate - Pentavalent (DPT-HepB-Hib) doses damaged(EPI_VWR_Penta_dam.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_Penta_dam_' THEN IF p_record_x.loss_adjustment_reason = 'item_broken'
AND p_record_x.medication_name = 'Pentavalent`(DTPHibHep)`Vaccine`Injection'
AND COALESCE(p_record_x.loss_or_adjustment, '') <> ''

 THEN EPI_VWR_Penta_dam_:= 1;


END IF;


-- Penta Vaccine wastage rate - Pentavalent (DPT-HepB-Hib) doses expired(EPI_VWR_Penta_dis.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_Penta_dis_' THEN IF p_record_x.loss_adjustment_reason = 'item_expired'
AND p_record_x.medication_name = 'Pentavalent`(DTPHibHep)`Vaccine`Injection'
AND COALESCE(p_record_x.loss_or_adjustment, '') <> ''

 THEN EPI_VWR_Penta_dis_:= 1;


END IF;


-- PCV Vaccine wastage rate - Pneumococcal conjugated vaccine doses damaged(EPI_VWR_PCV_dam.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_PCV_dam_' THEN IF p_record_x.loss_adjustment_reason = 'item_broken'
AND p_record_x.medication_name = 'Pneumeccocal`Conjugate`Vaccine`(10`Valent)`Injection`(Polysaccharide)'
AND COALESCE(p_record_x.loss_or_adjustment, '') <> ''

 THEN EPI_VWR_PCV_dam_:= 1;


END IF;


-- PCV Vaccine wastage rate - Pneumococcal conjugated vaccine doses expired(EPI_VWR_PCV-dis.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_PCV_dis_' THEN IF p_record_x.loss_adjustment_reason = 'item_expired'
AND p_record_x.medication_name = 'Pneumeccocal`Conjugate`Vaccine`(10`Valent)`Injection`(Polysaccharide)' 
AND COALESCE(p_record_x.loss_or_adjustment, '') <> ''

THEN EPI_VWR_PCV_dis_:= 1;


END IF;


-- Rota Vaccine wastage rate - Rota doses damaged(EPI_VWR_RT_dam.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_RT_dam_' THEN IF p_record_x.loss_adjustment_reason = 'item_broken'
AND p_record_x.medication_name = 'Rota`Virus`Vaccine' 
AND COALESCE(p_record_x.loss_or_adjustment, '') <> ''

THEN EPI_VWR_RT_dam_:= 1;


END IF;


-- Rota Vaccine wastage rate - Rota doses expired(EPI_VWR_RT_dis.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_RT_dis_' THEN IF p_record_x.loss_adjustment_reason = 'item_expired'
AND p_record_x.medication_name = 'Rota`Virus`Vaccine' 
AND COALESCE(p_record_x.loss_or_adjustment, '') <> ''

THEN EPI_VWR_RT_dis_:= 1;


END IF;


-- Polio Vaccine wastage rate - Polio doses damaged(EPI_VWR_PV_dam.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_PV_dam_' THEN IF p_record_x.loss_adjustment_reason = 'item_broken'
AND p_record_x.medication_name = 'BOPV`(Bivalent`Oral`Polio)`Vaccine`Oral`Drop'
AND COALESCE(p_record_x.loss_or_adjustment, '') <> ''

 THEN EPI_VWR_PV_dam_:= 1;


END IF;


-- Polio Vaccine wastage rate - Polio doses expired(EPI_VWR_PV_dis.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_PV_dis_' THEN IF p_record_x.loss_adjustment_reason = 'item_expired'
AND p_record_x.medication_name = 'BOPV`(Bivalent`Oral`Polio)`Vaccine`Oral`Drop' THEN EPI_VWR_PV_dis_:= 1;


END IF;


-- Measles Vaccine wastage rate - Measles doses damaged(EPI_VWR_MCV_dam.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_MCV_dam_' THEN IF p_record_x.loss_adjustment_reason = 'item_broken'
AND p_record_x.medication_name = 'Measles`Virus`Vaccine`Injection`(Live`Attenuated`and`Freeze`Dried)`with`Diluent)' THEN EPI_VWR_MCV_dam_:= 1;


END IF;


-- Measles Vaccine wastage rate - Measles doses expired(EPI_VWR_MCV_dis.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_MCV_dis_' THEN IF p_record_x.loss_adjustment_reason = 'item_expired'
AND p_record_x.medication_name = 'Measles`Virus`Vaccine`Injection`(Live`Attenuated`and`Freeze`Dried)`with`Diluent)' THEN EPI_VWR_MCV_dis_:= 1;


END IF;


-- IPV Vaccine wastage rate - IPV doses damaged(EPI_VWR_IPV_dam.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_IPV_dam_' THEN IF p_record_x.loss_adjustment_reason = 'item_broken'
AND p_record_x.medication_name = 'IPV`(Inactivated`Polio`Vaccine)' THEN EPI_VWR_IPV_dam_:= 1;


END IF;


-- IPV Vaccine wastage rate - IPV doses expired(EPI_VWR_IPV_dis.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_IPV_dis_' THEN IF p_record_x.loss_adjustment_reason = 'item_expired'
AND p_record_x.medication_name = 'IPV`(Inactivated`Polio`Vaccine)' THEN EPI_VWR_IPV_dis_:= 1;


END IF;


-- Lymphedema suspected on Screening  @@@ [NTD and NCD Datasource 1 ]
ELSIF p_indic_name = 'indic_suspected_lymphedema' THEN IF p_record_x.illness_type = 'ntd'
AND p_record_x.ntd_lf = 'yes' THEN suspected_lymphedema:= 1;


END IF;


-- Lymphedema suspected on Screening and Referral
ELSIF p_indic_name = 'indic_refered_suspected_lymphedema' THEN IF p_record_x.illness_type = 'ntd'
AND p_record_x.ntd_lf = 'yes'
AND p_record_x.ever_referred_to_hc = 'yes' THEN refered_suspected_lymphedema:= 1;


END IF;


-- Trachomatous Trichiasis Suspected on Screening
ELSIF p_indic_name = 'indic_suspected_trachomatous_trichiasis' THEN IF p_record_x.illness_type = 'ntd'
AND p_record_x.ntd_trachomatous_trichiasis = 'yes' THEN suspected_trachomatous_trichiasis:= 1;


END IF;


-- Refered Trachomatous Trichiasis Suspected on Screening
ELSIF p_indic_name = 'indic_refered_trachomatous_trichiasis' THEN IF p_record_x.illness_type = 'ntd'
AND p_record_x.ntd_trachomatous_trichiasis = 'yes'
AND p_record_x.ever_referred_to_hc = 'yes' THEN refered_trachomatous_trichiasis:= 1;


END IF;


-- Cutaneous leishmaniasis Suspected on Screening
ELSIF p_indic_name = 'indic_suspected_Cutaneous_leishmaniasis' THEN IF p_record_x.illness_type = 'ntd'
AND p_record_x.ntd_cutaneous_leishmaniasis = 'yes' THEN suspected_Cutaneous_leishmaniasis:= 1;


END IF;


-- Refered :Cutaneous leishmaniasis Suspected on Screening 
ELSIF p_indic_name = 'indic_refered_suspected_Cutaneous_leishmaniasis' THEN IF p_record_x.illness_type = 'ntd'
AND p_record_x.ntd_cutaneous_leishmaniasis = 'yes'
AND p_record_x.ever_referred_to_hc = 'yes' THEN refered_suspected_Cutaneous_leishmaniasis:= 1;


END IF;


-- Human Guinea Worm Suspected on Screening
ELSIF p_indic_name = 'indic_suspected_Human_Guinea_Worm' THEN IF p_record_x.illness_type = 'ntd'
AND p_record_x.ntd_guinea_worm = 'yes' THEN suspected_Human_Guinea_Worm:= 1;


END IF;


-- Refered :Human Guinea Worm Suspected on Screening
ELSIF p_indic_name = 'indic_refered_suspected__Human_Guinea_Worm' THEN IF p_record_x.illness_type = 'ntd'
AND p_record_x.ntd_guinea_worm = 'yes'
AND p_record_x.ever_referred_to_hc = 'yes' THEN refered_suspected__Human_Guinea_Worm:= 1;


END IF;


-- Number of people who swallowed azithromycin or took tetracycline eye ointment to prevent trachoma from the expected eligible population 
ELSIF p_indic_name = 'indic_totNum_swallowed_azithromycin_or_took_tetracycline_eye_ointment' THEN IF p_record_x.tt_medication_received = 'yes' THEN totNum_swallowed_azithromycin_or_took_tetracycline_eye_ointment:= 1;


END IF;


-- Number of who swallowed ivermectin to prevent onchocerciasis from the expected eligible population (>=5 Years)
ELSIF p_indic_name = 'indic_ivermectin' THEN IF p_record_x.oncho_medication_received = 'yes' THEN ivermectin:= 1;


END IF;


-- Number of people who swallowed a drug to prevent lymphatic filariasis from the expected eligible population (>=5 Years)
ELSIF p_indic_name = 'indic_lymphatic_filariasis' THEN IF p_record_x.lf_medication_received = 'yes' THEN lymphatic_filariasis:= 1;


END IF;


-- Number of children who swallowed a drug to prevent schistosomiasis from the expected eligible children (5 to 15 Years)
ELSIF p_indic_name = 'indic_prevent_schistosomiasis' THEN IF p_record_x.sch_medication_received = 'yes' THEN prevent_schistosomiasis:= 1;


END IF;


-- Number of children who swallowed a drug to prevent soil transmitted helminthiasis from the expected eligible children (5 to 19 Years )
ELSIF p_indic_name = 'indic_prevent_soil_transmitted_helminthiasis' THEN IF p_record_x.sth_medication_received = 'yes'
AND p_record_x.age_years = '5'
AND p_record_x.age_years = '19' THEN prevent_soil_transmitted_helminthiasis:= 1;


END IF;


-- Number of Women who swallowed a drug to prevent soil transmitted helminthiasis from women reproductive age (20-49 Years)
ELSIF p_indic_name = 'indic_prevent_schistosomiasis_gt' THEN IF p_record_x.sch_medication_received = 'yes'
AND p_record_x.age_years = '20'
AND p_record_x.age_years = '49' THEN prevent_schistosomiasis_gt:= 1;


END IF;


-- Number of individuals swallowed MDA drug for trachoma - < 6 months, Male(NTD_TR.1. 1):NTD 
ELSIF p_indic_name = 'indic_NTD_TR_1_1' THEN IF p_record_x.tt_medication_received = 'yes'
AND p_record_x.gender = 'male' THEN NTD_TR_1_1:= 1;


END IF;


-- Number of individuals swallowed MDA drug for trachoma - < 6 months, Female(NTD_TR.1. 2):NTD 
ELSIF p_indic_name = 'indic_NTD_TR_1_2' THEN IF p_record_x.tt_medication_received = 'yes'
AND p_record_x.gender = 'female' THEN NTD_TR_1_2:= 1;


END IF;


-- Number of individuals swallowed MDA drug for trachoma - 6 months-7 years, Male(NTD_TR.1. 3):NTD 
ELSIF p_indic_name = 'indic_NTD_TR_1_3' THEN IF p_record_x.tt_medication_received = 'yes'
AND p_record_x.gender = 'male' THEN NTD_TR_1_3:= 1;


END IF;


-- Number of individuals swallowed MDA drug for trachoma - 6 months-7 years, Female(NTD_TR.1. 4):NTD 
ELSIF p_indic_name = 'indic_NTD_TR_1_4' THEN IF p_record_x.tt_medication_received = 'yes'
AND p_record_x.gender = 'female' THEN NTD_TR_1_4:= 1;


END IF;


-- Number of individuals swallowed MDA drug for trachoma - 7 - 14 years, Male(NTD_TR.1. 5):NTD 
ELSIF p_indic_name = 'indic_NTD_TR_1_5' THEN IF p_record_x.tt_medication_received = 'yes'
AND p_record_x.gender = 'male' THEN NTD_TR_1_5:= 1;


END IF;


-- Number of individuals swallowed MDA drug for trachoma - 7 - 14 years, Female(NTD_TR.1. 6):NTD 
ELSIF p_indic_name = 'indic_NTD_TR_1_6' THEN IF p_record_x.tt_medication_received = 'yes'
AND p_record_x.gender = 'female' THEN NTD_TR_1_6:= 1;


END IF;


-- Number of individuals swallowed MDA drug for trachoma - >= 15 years, Male(NTD_TR.1. 7):NTD 
ELSIF p_indic_name = 'indic_NTD_TR_1_7' THEN IF p_record_x.tt_medication_received = 'yes'
AND p_record_x.gender = 'male' THEN NTD_TR_1_7:= 1;


END IF;


-- Number of individuals swallowed MDA drug for trachoma - >= 15 years, Female(NTD_TR.1. 8):NTD 
ELSIF p_indic_name = 'indic_NTD_TR_1_8' THEN IF p_record_x.tt_medication_received = 'yes'
AND p_record_x.gender = 'female' THEN NTD_TR_1_8:= 1;


END IF;


-- Number of individuals swallowed MDA drug for Onchocerciasis - 5 - 14 years, Male(NTD_ONCH.1. 1):NTD 
ELSIF p_indic_name = 'indic_NTD_ONCH_1_1' THEN IF p_record_x.oncho_medication_received = 'yes'
AND p_record_x.gender = 'male' THEN NTD_ONCH_1_1:= 1;


END IF;


-- Number of individuals swallowed MDA drug for Onchocerciasis - 5 - 14 years, Female(NTD_ONCH.1. 2):NTD 
ELSIF p_indic_name = 'indic_NTD_ONCH_1_2' THEN IF p_record_x.oncho_medication_received = 'yes'
AND p_record_x.gender = 'female' THEN NTD_ONCH_1_2:= 1;


END IF;


-- Number of individuals swallowed MDA drug for Onchocerciasis - >= 15 years, Male(NTD_ONCH.1. 3):NTD 
ELSIF p_indic_name = 'indic_NTD_ONCH_1_3' THEN IF p_record_x.oncho_medication_received = 'yes'
AND p_record_x.gender = 'male' THEN NTD_ONCH_1_3:= 1;


END IF;


-- Number of individuals swallowed MDA drug for Onchocerciasis - >= 15 years, Female(NTD_ONCH.1. 4):NTD 
ELSIF p_indic_name = 'indic_NTD_ONCH_1_4' THEN IF p_record_x.oncho_medication_received = 'yes'
AND p_record_x.gender = 'female' THEN NTD_ONCH_1_4:= 1;


END IF;


-- Number of individuals swallowed MDA drug for Lymphatic Filariasis - 5 - 14 years, Male(NTD_LF.1. 1):NTD 
ELSIF p_indic_name = 'indic_NTD_LF_1_1' THEN IF p_record_x.lf_medication_received = 'yes'
AND p_record_x.gender = 'male' THEN NTD_LF_1_1:= 1;


END IF;


-- Number of individuals swallowed MDA drug for Lymphatic Filariasis - 5 - 14 years, Female(NTD_LF.1. 2):NTD 
ELSIF p_indic_name = 'indic_NTD_LF_1_2' THEN IF p_record_x.lf_medication_received = 'yes'
AND p_record_x.gender = 'female' THEN NTD_LF_1_2:= 1;


END IF;


-- Number of individuals swallowed MDA drug for Lymphatic Filariasis - >= 15 years, Male(NTD_LF.1. 3):NTD 
ELSIF p_indic_name = 'indic_NTD_LF_1_3' THEN IF p_record_x.lf_medication_received = 'yes'
AND p_record_x.gender = 'male' THEN NTD_LF_1_3:= 1;


END IF;


-- Number of individuals swallowed MDA drug for Lymphatic Filariasis - >= 15 years, Female(NTD_LF.1. 4):NTD 
ELSIF p_indic_name = 'indic_NTD_LF_1_4' THEN IF p_record_x.lf_medication_received = 'yes'
AND p_record_x.gender = 'female' THEN NTD_LF_1_4:= 1;


END IF;


-- Number of individuals swallowed MDA drug for Schistosomiasis - 5 - 14 years, Male(NTD_SCH.1. 1):NTD 
ELSIF p_indic_name = 'indic_NTD_SCH_1_1' THEN IF p_record_x.sch_medication_received = 'yes'
AND p_record_x.gender = 'male' THEN NTD_SCH_1_1:= 1;


END IF;


-- Number of individuals swallowed MDA drug for Schistosomiasis - 5 - 14 years, Female(NTD_SCH.1. 2):NTD 
ELSIF p_indic_name = 'indic_NTD_SCH_1_2' THEN IF p_record_x.sch_medication_received = 'yes'
AND p_record_x.gender = 'female' THEN NTD_SCH_1_2:= 1;


END IF;


-- Number of individuals swallowed MDA drug for Schistosomiasis - >= 15 years, Male(NTD_SCH.1. 3):NTD 
ELSIF p_indic_name = 'indic_NTD_SCH_1_3' THEN IF p_record_x.sch_medication_received = 'yes'
AND p_record_x.gender = 'male' THEN NTD_SCH_1_3:= 1;


END IF;


-- Number of individuals swallowed MDA drug for Schistosomiasis - >= 15 years, Female(NTD_SCH.1. 4):NTD 
ELSIF p_indic_name = 'indic_NTD_SCH_1_4' THEN IF p_record_x.sch_medication_received = 'yes'
AND p_record_x.gender = 'female' THEN NTD_SCH_1_4:= 1;


END IF;


-- Number of individuals swallowed MDA drug for Soil transmitting helminthes (STH) - 5 - 14 years, Male(NTD_STH.1. 1):NTD 
ELSIF p_indic_name = 'indic_NTD_STH_1_1' THEN IF p_record_x.sth_medication_received = 'yes'
AND p_record_x.gender = 'male' THEN NTD_STH_1_1:= 1;


END IF;


-- Number of individuals swallowed MDA drug for Soil transmitting helminthes (STH) - 5 - 14 years, Female(NTD_STH.1. 2):NTD 
ELSIF p_indic_name = 'indic_NTD_STH_1_2' THEN IF p_record_x.sth_medication_received = 'yes'
AND p_record_x.gender = 'female' THEN NTD_STH_1_2:= 1;


END IF;


-- Number of individuals swallowed MDA drug for Soil transmitting helminthes (STH) - 15 - 19 years, Male(NTD_STH.1. 3):NTD 
ELSIF p_indic_name = 'indic_NTD_STH_1_3' THEN IF p_record_x.sth_medication_received = 'yes'
AND p_record_x.gender = 'male' THEN NTD_STH_1_3:= 1;


END IF;


-- Number of individuals swallowed MDA drug for Soil transmitting helminthes (STH) - 15 - 19 years, Female(NTD_STH.1. 4):NTD 
ELSIF p_indic_name = 'indic_NTD_STH_1_4' THEN IF p_record_x.sth_medication_received = 'yes'
AND p_record_x.gender = 'female' THEN NTD_STH_1_4:= 1;


END IF;


-- Number of individuals swallowed MDA drug for Soil transmitting helminthes (STH) - >= 20 years, Male(NTD_STH.1. 5):NTD 
ELSIF p_indic_name = 'indic_NTD_STH_1_5' THEN IF p_record_x.sth_medication_received = 'yes'
AND p_record_x.gender = 'male' THEN NTD_STH_1_5:= 1;


END IF;


-- Number of individuals swallowed MDA drug for Soil transmitting helminthes (STH) - >= 20 years, Female(NTD_STH.1. 6):NTD 
ELSIF p_indic_name = 'indic_NTD_STH_1_6' THEN IF p_record_x.sth_medication_received = 'yes'
AND p_record_x.gender = 'female' THEN NTD_STH_1_6:= 1;


END IF;


-- Number of Individuals screened for hypertension - 18 - 29 years, Male(NCT_HTN. 1):NCD 
ELSIF p_indic_name = 'indic_NCT_HTN_1' THEN IF p_record_x.illness_type = 'ncd'
AND p_record_x.illnesses_to_screen = 'hypertension'
AND p_record_x.gender = 'male' THEN NCT_HTN_1:= 1;


END IF;


-- Number of Individuals screened for hypertension - 18 - 29 years, Female(NCT_HTN. 2):NCD 
ELSIF p_indic_name = 'indic_NCT_HTN_2' THEN IF p_record_x.illness_type = 'ncd'
AND p_record_x.illnesses_to_screen = 'hypertension'
AND p_record_x.gender = 'female' THEN NCT_HTN_2:= 1;


END IF;


-- Number of Individuals screened for hypertension - 30 - 39 years, Male(NCT_HTN. 3):NCD 
ELSIF p_indic_name = 'indic_NCT_HTN_3' THEN IF p_record_x.illness_type = 'ncd'
AND p_record_x.illnesses_to_screen = 'hypertension'
AND p_record_x.gender = 'male' THEN NCT_HTN_3:= 1;


END IF;


-- Number of Individuals screened for hypertension - 30 - 39 years, Female(NCT_HTN. 4):NCD 
ELSIF p_indic_name = 'indic_NCT_HTN_4' THEN IF p_record_x.illness_type = 'ncd'
AND p_record_x.illnesses_to_screen = 'hypertension'
AND p_record_x.gender = 'female' THEN NCT_HTN_4:= 1;


END IF;


-- Number of Individuals screened for hypertension - 40 - 69 years, Male(NCT_HTN. 5):NCD 
ELSIF p_indic_name = 'indic_NCT_HTN_5' THEN IF p_record_x.illness_type = 'ncd'
AND p_record_x.illnesses_to_screen = 'hypertension'
AND p_record_x.gender = 'male' THEN NCT_HTN_5:= 1;


END IF;


-- Number of Individuals screened for hypertension - 40 - 69 years, Female(NCT_HTN. 6):NCD 
ELSIF p_indic_name = 'indic_NCT_HTN_6' THEN IF p_record_x.illness_type = 'ncd'
AND p_record_x.illnesses_to_screen = 'hypertension'
AND p_record_x.gender = 'female' THEN NCT_HTN_6:= 1;


END IF;


-- Number of Individuals screened for hypertension - >=70 years, Male(NCT_HTN. 7):NCD 
ELSIF p_indic_name = 'indic_NCT_HTN_7' THEN IF p_record_x.illness_type = 'ncd'
AND p_record_x.illnesses_to_screen = 'hypertension'
AND p_record_x.gender = 'male' THEN NCT_HTN_7:= 1;


END IF;


-- Number of Individuals screened for hypertension - >=70 years, Female(NCT_HTN. 8):NCD 
ELSIF p_indic_name = 'indic_NCT_HTN_8' THEN IF p_record_x.illness_type = 'ncd'
AND p_record_x.illnesses_to_screen = 'hypertension'
AND p_record_x.gender = 'female' THEN NCT_HTN_8:= 1;


END IF;


-- Number of Individuals screened for hypertension by result of screening - Raised BP(NCD_HTNDX.1.2. 1):NCD 
ELSIF p_indic_name = 'indic_NCD_HTNDX_1_2_1' THEN IF p_record_x.illness_type = 'ncd'
AND p_record_x.illnesses_to_screen = 'hypertension' THEN NCD_HTNDX_1_2_1:= 1;


END IF;


-- Number of Individuals screened for hypertension by result of screening - Normal BP(NCD_HTNDX.1.2. 2):NCD 
ELSIF p_indic_name = 'indic_NCD_HTNDX_1_2_2' THEN IF p_record_x.illness_type = 'ncd'
AND p_record_x.illnesses_to_screen = 'hypertension' THEN NCD_HTNDX_1_2_2:= 1;


END IF;


-- Number of Individuals screened for hypertension by result of screening - Hypertensive patients refered to Health Center for further investigation(NCD_HTNDX.1.2. 3):NCD 
ELSIF p_indic_name = 'indic_NCD_HTNDX_1_2_3' THEN IF p_record_x.illness_type = 'ncd'
AND p_record_x.illnesses_to_screen = 'hypertension' THEN NCD_HTNDX_1_2_3:= 1;


END IF;


-- Individuals screened for Diabetes Mellitus by age and sex - < 40 years, Male(NCD_DMDX.1.2. 1):NCD 
ELSIF p_indic_name = 'indic_NCD_DMDX_1_2_1' THEN IF p_record_x.illness_type = 'ncd'
AND p_record_x.illnesses_to_screen = 'diabetes'
AND p_record_x.gender = 'male' THEN NCD_DMDX_1_2_1:= 1;


END IF;


-- Individuals screened for Diabetes Mellitus by age and sex - < 40 years, Female(NCD_DMDX.1.2. 2):NCD 
ELSIF p_indic_name = 'indic_NCD_DMDX_1_2_2' THEN IF p_record_x.illness_type = 'ncd'
AND p_record_x.illnesses_to_screen = 'diabetes'
AND p_record_x.gender = 'female' THEN NCD_DMDX_1_2_2:= 1;


END IF;


-- Individuals screened for Diabetes Mellitus by age and sex - >= 40 years, Male(NCD_DMDX.1.2. 3):NCD 
ELSIF p_indic_name = 'indic_NCD_DMDX_1_2_3' THEN IF p_record_x.illness_type = 'ncd'
AND p_record_x.illnesses_to_screen = 'diabetes'
AND p_record_x.gender = 'male' THEN NCD_DMDX_1_2_3:= 1;


END IF;


-- Individuals screened for Diabetes Mellitus by age and sex - >= 40 years, Female(NCD_DMDX.1.2. 4):NCD 
ELSIF p_indic_name = 'indic_NCD_DMDX_1_2_4' THEN IF p_record_x.illness_type = 'ncd'
AND p_record_x.illnesses_to_screen = 'diabetes'
AND p_record_x.gender = 'female' THEN NCD_DMDX_1_2_4:= 1;


END IF;


-- Total number of malaria case (or infection) in which the parasite has been detected in a diagnostic test, i.e. microscopy, a rapid diagnostic test or a molecular diagnostic test @@@[Malaria Datasource v2]
ELSIF p_indic_name = 'indic_confirmed_malaria_cases_ftat' THEN IF p_record_x.illness_type = 'malaria'
AND p_record_x.visit_type = 'FTAT' THEN confirmed_malaria_cases_ftat:= 1;


END IF;


-- Number of malaria case (or infection) in which the parasite has been detected in a diagnostic test within the jurisdiction of the health post
ELSIF p_indic_name = 'indic_confirmed_malaria_cases_hp' THEN IF p_record_x.illness_type = 'malaria'
AND p_record_x.investigated_for_malaria = 'yes' THEN confirmed_malaria_cases_hp:= 1;


END IF;


-- Number of index case households and those demarcated from the index case house within 70m radius or nearest five households where houses densely clustered and visited
ELSIF p_indic_name = 'indic_households_investigated' THEN IF p_record_x.ftat_status = 'Case investigation completed'
OR p_record_x.ftat_status = 'In progress' THEN households_investigated:= 1;


END IF;


-- Number of individuals listed in the investigated index case and neighboring households and entitled for finger prick except index cases, < 6 months infants, and sever malaria cases
ELSIF p_indic_name = 'indic_entitled_for_finger_prick' THEN IF p_record_x.complications = ''
AND rpt_fn_get_parent_value(
  'investigated_for_malaria',
  'client',
  'illness',
  'indices.client',
  p_record_x.id
) = 'yes'
AND EXTRACT(
  month
  FROM
    AGE(
      p_record_x.ftat_report_month_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 6 THEN entitled_for_finger_prick:= 1;


END IF;


-- Number of individuals listed in the investigated index case and neighboring households whom received finger prick
ELSIF p_indic_name = 'indic_received_finger_prick' THEN IF p_record_x.investigated_for_malaria = 'yes' THEN received_finger_prick:= 1;


END IF;


-- Number of confirmed malaria cases/infections reported during case investigation
ELSIF p_indic_name = 'indic_confirmed_malaria_cases' THEN IF p_record_x.illness_type = 'malaria'
AND p_record_x.investigated_for_malaria = 'yes' THEN confirmed_malaria_cases:= 1;


END IF;


-- Number of confirmed malaria cases/infections reported as plasmodium falciparium during case investigation
ELSIF p_indic_name = 'indic_confirmed_malaria_cases_plasmodium_falciparium' THEN IF p_record_x.illness_type = 'malaria'
AND p_record_x.investigated_for_malaria = 'yes'
AND p_record_x.rdt_type = 'pf' THEN confirmed_malaria_cases_plasmodium_falciparium:= 1;


END IF;


-- Number of confirmed malaria cases/infections reported as plasmodium vivax during case investigation
ELSIF p_indic_name = 'indic_confirmed_malaria_cases_plasmodium_vivax' THEN IF p_record_x.illness_type = 'malaria'
AND p_record_x.investigated_for_malaria = 'yes'
AND p_record_x.rdt_type = 'pv' THEN confirmed_malaria_cases_plasmodium_vivax:= 1;


END IF;


-- Number of confirmed malaria cases/infections reported as mixed (pf/pv) during case investigation
ELSIF p_indic_name = 'indic_confirmed_malaria_cases_mixed' THEN IF p_record_x.illness_type = 'malaria'
AND p_record_x.investigated_for_malaria = 'yes'
AND p_record_x.rdt_type = 'mixed' THEN confirmed_malaria_cases_mixed:= 1;


END IF;


-- Confirmed malaria case or infection in which the infection was acquired outside the area in s/he lives
ELSIF p_indic_name = 'indic_Cases_with_travel_history' THEN IF p_record_x.illness_type = 'malaria'
AND p_record_x.investigated_for_malaria = 'yes'
AND p_record_x.travel_history = 'yes' THEN Cases_with_travel_history:= 1;


END IF;


-- Confirmed malaria case or infection contracted locally with no evidence of importation
ELSIF p_indic_name = 'indic_Cases_without_travel_history' THEN IF p_record_x.illness_type = 'malaria'
AND p_record_x.investigated_for_malaria = 'yes'
AND p_record_x.travel_history = 'no' THEN Cases_without_travel_history:= 1;


END IF;


-- Number of households sprayed
ELSIF p_indic_name = 'indic_Number_of_households_sprayed' THEN IF p_record_x.chemical_spray = 'yes' THEN Number_of_households_sprayed:= 1;


END IF;


-- Number of people protected because of chemical spray
ELSIF p_indic_name = 'indic_number_people_protected_by_chemical_spray' THEN IF p_record_x.chemical_spray = 'yes'
AND COALESCE(
  p_record_x.number_people_protected_by_chemical_spray,
  ''
) <> '' THEN number_people_protected_by_chemical_spray:= p_record_x.number_people_protected_by_chemical_spray:: INTEGER;


END IF;


-- Amount of chemical used in kg
ELSIF p_indic_name = 'indic_chemical_used_in_kg' THEN IF p_record_x.chemical_spray = 'yes'
AND COALESCE(p_record_x.chemical_used_in_kg, '') <> '' THEN chemical_used_in_kg:= p_record_x.chemical_used_in_kg:: INTEGER;


END IF;


-- Number of visited households on bednet usage
ELSIF p_indic_name = 'indic_bednet_usage' THEN IF COALESCE(p_record_x.llitn_properly_used, '') <> '' THEN bednet_usage:= 1;


END IF;


-- Number of visited households who have properly used their bednet
ELSIF p_indic_name = 'indic_llitn_properly_used' THEN IF COALESCE(p_record_x.llitn_properly_used, '') = 'yes' THEN llitn_properly_used:= 1;


END IF;


-- Number of clients suspected for malaria, and tested with RDT
ELSIF p_indic_name = 'indic_suspected_and_tested_with_rdt' THEN IF p_record_x.illness_type = 'malaria'
AND p_record_x.suspected = 'yes'
AND p_record_x.rdt_type <> 'yes'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
) THEN suspected_and_tested_with_rdt:= 1;


END IF;


-- Total Malaria Cases Confirmed by RDT
ELSIF p_indic_name = 'indic_Total_Malaria_Cases_Confirmed_RDT' THEN IF p_record_x.illness_type = 'malaria'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
AND COALESCE(p_record_x.rdt_type, '') <> '' THEN Total_Malaria_Cases_Confirmed_RDT:= 1;


END IF;


-- RDT Confirmed Malaria Cases by Plasmodium Species- P. Falciparum
ELSIF p_indic_name = 'indic_RDT_Confirmed_Malaria_Cases_pf' THEN IF p_record_x.illness_type = 'malaria'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
AND COALESCE(p_record_x.rdt_type, '') = 'pf' THEN RDT_Confirmed_Malaria_Cases_pf:= 1;


END IF;


-- RDT Confirmed Malaria Cases by Plasmodium Species- P. Vivax
ELSIF p_indic_name = 'indic_RDT_Confirmed_Malaria_Cases_pv' THEN IF p_record_x.illness_type = 'malaria'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
AND COALESCE(p_record_x.rdt_type, '') = 'pv' THEN RDT_Confirmed_Malaria_Cases_pv:= 1;


END IF;


-- Total Malaria Cases by Age Category- Under 5 years
ELSIF p_indic_name = 'indic_Malaria_Cases_under_5' THEN IF p_record_x.illness_type = 'malaria'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
)
AND COALESCE(p_record_x.rdt_type, '') <> ''
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) < 5 THEN Malaria_Cases_under_5:= 1;


END IF;


-- Total Malaria Cases by Age Category- From 5 to 14 years
ELSIF p_indic_name = 'indic_Malaria_Cases_5_to_14' THEN IF p_record_x.illness_type = 'malaria'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
)
AND COALESCE(p_record_x.rdt_type, '') <> ''
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 5
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) <= 14 THEN Malaria_Cases_5_to_14:= 1;


END IF;


-- Total Malaria Cases by Age Category- over 15 years
ELSIF p_indic_name = 'indic_Malaria_Cases_over_15' THEN IF p_record_x.illness_type = 'malaria'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
)
AND COALESCE(p_record_x.rdt_type, '') <> ''
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 15 THEN Malaria_Cases_over_15:= 1;


END IF;


-- Pregant mothers with positive malaria cases
ELSIF p_indic_name = 'indic_positive_Pregant_mothers' THEN IF p_record_x.illness_type = 'malaria'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
)
AND COALESCE(p_record_x.rdt_type, '') <> ''
AND rpt_fn_get_parent_value(
  'pregnant',
  'client',
  'illness',
  'indices.client',
  p_record_x.id
) = 'yes' THEN positive_Pregant_mothers:= 1;


END IF;


-- Mal_Pos.1:Number of slides or RDT positive for malaria
ELSIF p_indic_name = 'indic_RDT_positive_for_malaria' THEN IF p_record_x.illness_type = 'malaria'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
) THEN RDT_positive_for_malaria:= 1;


END IF;


-- Mal_Pos.1.1:Number of slides or RDT positive for malaria< 5 yr : Male
ELSIF p_indic_name = 'indic_RDT_positive_for_malaria_male_under_5' THEN IF p_record_x.illness_type = 'malaria'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
)
AND rpt_fn_get_parent_value(
  'gender',
  'client',
  'illness',
  'indices.client',
  p_record_x.id
) = 'male'
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) < 5 THEN RDT_positive_for_malaria_male_under_5:= 1;


END IF;


-- Mal_Pos.1.2:Number of slides or RDT positive for malaria< 5 yr : FeMale
ELSIF p_indic_name = 'indic_RDT_positive_for_malaria_female_under_5' THEN IF p_record_x.illness_type = 'malaria'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
)
AND COALESCE(p_record_x.rdt_type, '') <> ''
AND rpt_fn_get_parent_value(
  'gender',
  'client',
  'illness',
  'indices.client',
  p_record_x.id
) = 'female'
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) < 5 THEN RDT_positive_for_malaria_female_under_5:= 1;


END IF;


-- Mal_Pos.1.3:Number of slides or RDT positive for malaria > 5 yr and < 14 yr : Male
ELSIF p_indic_name = 'indic_RDT_positive_for_malaria_male_over_5_under_14' THEN IF p_record_x.illness_type = 'malaria'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
)
AND rpt_fn_get_parent_value(
  'gender',
  'client',
  'illness',
  'indices.client',
  p_record_x.id
) = 'male'
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 5
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) <= 14 THEN RDT_positive_for_malaria_male_over_5_under_14:= 1;


END IF;


-- Mal_Pos.1.4:Number of slides or RDT positive for malaria > 5 yr and < 14 yr : FeMale
ELSIF p_indic_name = 'indic_RDT_positive_for_malaria_female_over_5_under_14' THEN IF p_record_x.illness_type = 'malaria'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
)
AND rpt_fn_get_parent_value(
  'gender',
  'client',
  'illness',
  'indices.client',
  p_record_x.id
) = 'female'
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 5
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) <= 14 THEN RDT_positive_for_malaria_female_over_5_under_14:= 1;


END IF;


-- Mal_Pos.1.5:Number of slides or RDT positive for malaria > 15 yr : Male
ELSIF p_indic_name = 'indic_RDT_positive_for_malaria_male_over_15' THEN IF p_record_x.illness_type = 'malaria'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
)
AND rpt_fn_get_parent_value(
  'gender',
  'client',
  'illness',
  'indices.client',
  p_record_x.id
) = 'male'
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 15 THEN RDT_positive_for_malaria_male_over_15:= 1;


END IF;


-- Mal_Pos.1.6:Number of slides or RDT positive for malaria > 15 yr : FeMale
ELSIF p_indic_name = 'indic_RDT_positive_for_malaria_female_over_15' THEN IF p_record_x.illness_type = 'malaria'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
)
AND rpt_fn_get_parent_value(
  'gender',
  'client',
  'illness',
  'indices.client',
  p_record_x.id
) = 'female'
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 15 THEN RDT_positive_for_malaria_female_over_15:= 1;


END IF;


-- Mal_DX : Total number of slides or RDT performed for malaria diagnosis
ELSIF p_indic_name = 'indic_rdt_performed_for_malaria_diagnosis' THEN IF p_record_x.screened_for_malaria = 'yes' THEN rdt_performed_for_malaria_diagnosis:= 1;


END IF;


-- Number of malaria positive clients disaggregated by age
ELSIF p_indic_name = 'indic_malaria_positive_clients' THEN IF p_record_x.illness_type = 'malaria'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
) THEN malaria_positive_clients:= 1;


END IF;


-- Number of malaria positive clients disaggregated by age < 1
ELSIF p_indic_name = 'indic_malaria_positive_clients_under_1' THEN IF p_record_x.illness_type = 'malaria'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
)
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) < 1 THEN malaria_positive_clients_under_1:= 1;


END IF;


-- Number of malaria positive clients disaggregated by age < 1 - New
ELSIF p_indic_name = 'indic_malaria_positive_clients_under_1_new' THEN IF p_record_x.illness_type = 'malaria'
AND p_record_x.client_type = 'new'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
)
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) < 1 THEN malaria_positive_clients_under_1_new:= 1;


END IF;


-- Number of malaria positive clients disaggregated by age < 1 - Repeat
ELSIF p_indic_name = 'indic_malaria_positive_clients_under_1_repeat' THEN IF p_record_x.illness_type = 'malaria'
AND p_record_x.client_type = 'repeat'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
)
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 1
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) <= 4 THEN malaria_positive_clients_under_1_repeat:= 1;


END IF;


-- Number of malaria positive clients disaggregated by age over 1 under 4
ELSIF p_indic_name = 'indic_malaria_positive_clients_over_1_under_4' THEN IF p_record_x.illness_type = 'malaria'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
)
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 1
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) <= 4 THEN malaria_positive_clients_over_1_under_4:= 1;


END IF;


-- Number of malaria positive clients disaggregated by age over 1 under 4-New
ELSIF p_indic_name = 'indic_malaria_positive_clients_over_1_under_4_new' THEN IF p_record_x.illness_type = 'malaria'
AND p_record_x.client_type = 'new'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
)
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 1
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) <= 4 THEN malaria_positive_clients_over_1_under_4_new:= 1;


END IF;


-- Number of malaria positive clients disaggregated by age over 1 under 4-Repeat
ELSIF p_indic_name = 'indic_malaria_positive_clients_over_1_under_4_repeat' THEN IF p_record_x.illness_type = 'malaria'
AND p_record_x.client_type = 'repeat'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
)
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 1
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) <= 4 THEN malaria_positive_clients_over_1_under_4_repeat:= 1;


END IF;


-- Number of malaria positive clients disaggregated by age over 5 under 14
ELSIF p_indic_name = 'indic_malaria_positive_clients_over_5_under_14' THEN IF p_record_x.illness_type = 'malaria'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
)
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 5
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) <= 15 THEN malaria_positive_clients_over_5_under_14:= 1;


END IF;


-- Number of malaria positive clients disaggregated by age over 5 under 14-New
ELSIF p_indic_name = 'indic_malaria_positive_clients_over_5_under_14_new' THEN IF p_record_x.illness_type = 'malaria'
AND p_record_x.client_type = 'new'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
)
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 5
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) <= 15 THEN malaria_positive_clients_over_5_under_14_new:= 1;


END IF;


-- Number of malaria positive clients disaggregated by age over 5 under 14-Repeat
ELSIF p_indic_name = 'indic_malaria_positive_clients_over_5_under_14_repeat' THEN IF p_record_x.illness_type = 'malaria'
AND p_record_x.client_type = 'repeat'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
)
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 5
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) <= 15 THEN malaria_positive_clients_over_5_under_14_repeat:= 1;


END IF;


-- Number of malaria positive clients disaggregated by age over 15
ELSIF p_indic_name = 'indic_malaria_positive_clients_over_15' THEN IF p_record_x.illness_type = 'malaria'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
)
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 15 THEN malaria_positive_clients_over_15:= 1;


END IF;


-- Number of malaria positive clients disaggregated by age over 15-New
ELSIF p_indic_name = 'indic_malaria_positive_clients_over_15_new' THEN IF p_record_x.illness_type = 'malaria'
AND p_record_x.client_type = 'new'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
)
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 15 THEN malaria_positive_clients_over_15_new:= 1;


END IF;


-- Number of malaria positive clients disaggregated by age over 15-Repeat
ELSIF p_indic_name = 'indic_malaria_positive_clients_over_15_repeat' THEN IF p_record_x.illness_type = 'malaria'
AND p_record_x.client_type = 'repeat'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
)
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 15 THEN malaria_positive_clients_over_15_repeat:= 1;


END IF;


-- Number of pregnant women with positive malaria case (HP Level)
ELSIF p_indic_name = 'indic_hp_positive_malaria_pregnant_women' THEN IF p_record_x.illness_type = 'malaria'
AND p_record_x.pregnant = 'yes'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
) THEN hp_positive_malaria_pregnant_women:= 1;


END IF;


-- Number of clients suspected for malaria, but not tested
ELSIF p_indic_name = 'indic_malaria_suspect_but_not_tested' THEN IF p_record_x.illness_type = 'malaria'
AND p_record_x.suspected = 'yes'
AND p_record_x.tested = 'no'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
) THEN malaria_suspect_but_not_tested:= 1;


END IF;


-- Number of clients tested for malaria
ELSIF p_indic_name = 'indic_malaria_suspect_tested' THEN IF p_record_x.illness_type = 'malaria'
AND p_record_x.tested = 'yes'
AND (
  p_record_x.screening_location = 'health_post'
  OR p_record_x.screening_location = 'community'
) THEN malaria_suspect_tested:= 1;


END IF;


-- Number of breeding sites
ELSIF p_indic_name = 'indic_breeding_site' THEN IF p_record_x.case_type = 'breeding_site' THEN breeding_site:= 1;


END IF;


-- Number of breeding sites- Permanent
ELSIF p_indic_name = 'indic_breeding_site_permanent' THEN IF p_record_x.type_of_site = 'permanent' THEN breeding_site_permanent:= 1;


END IF;


-- Number of breeding sites- Temporary
ELSIF p_indic_name = 'indic_breeding_site_temporary' THEN IF p_record_x.type_of_site = 'temporary' THEN breeding_site_temporary:= 1;


END IF;


-- Draining Activity-larva_control
ELSIF p_indic_name = 'indic_larva_control' THEN IF p_record_x.draining_date IS NOT NULL
AND COALESCE(p_record_x.draining_date, '') <> '' THEN larva_control:= 1;


END IF;


-- Draining Activity- Area in sq.m
ELSIF p_indic_name = 'indic_larva_control_in_sq_km' THEN IF p_record_x.draining_date IS NOT NULL
AND COALESCE(p_record_x.draining_date, '') <> ''
AND COALESCE(p_record_x.area_of_site_in_sq_m, '') <> '' THEN larva_control_in_sq_km:= ROUND(p_record_x.area_of_site_in_sq_m:: NUMERIC):: INTEGER;


END IF;


-- Draining Activity-Number of times 
ELSIF p_indic_name = 'indic_larva_control_Number_of_times' THEN IF p_record_x.draining_date IS NOT NULL
AND COALESCE(p_record_x.draining_date, '') <> '' THEN larva_control_Number_of_times:= 1;


END IF;


-- Compacting Activity- Number of Locations
ELSIF p_indic_name = 'indic_compacting_activity' THEN IF p_record_x.compacting_date IS NOT NULL
AND COALESCE(p_record_x.compacting_date, '') <> '' THEN compacting_activity:= 1;


END IF;


-- Compacting Activity- Area in sq.m:Malaria   
ELSIF p_indic_name = 'indic_compacting_activity_in_sq_km' THEN IF p_record_x.compacting_date IS NOT NULL
AND COALESCE(p_record_x.compacting_date, '') <> ''
AND COALESCE(p_record_x.area_of_site_in_sq_m, '') <> '' THEN compacting_activity_in_sq_km:= ROUND(p_record_x.area_of_site_in_sq_m:: NUMERIC):: INTEGER;


END IF;


-- Compacting Activity-Number of times
ELSIF p_indic_name = 'indic_compacting_activity_Number_of_times' THEN IF p_record_x.compacting_date IS NOT NULL
AND COALESCE(p_record_x.compacting_date, '') <> '' THEN compacting_activity_Number_of_times:= 1;


END IF;


-- Clearing Activity- Number of Locations
ELSIF p_indic_name = 'indic_clearing_activity' THEN IF p_record_x.clearing_date IS NOT NULL
AND COALESCE(p_record_x.clearing_date, '') <> '' THEN clearing_activity:= 1;


END IF;


-- Clearing Activity- Area in sq.m
ELSIF p_indic_name = 'indic_clearing_activity_in_sq_km' THEN IF p_record_x.clearing_date IS NOT NULL
AND COALESCE(p_record_x.clearing_date, '') <> ''
AND COALESCE(p_record_x.area_of_site_in_sq_m, '') <> '' THEN clearing_activity_in_sq_km:= ROUND(p_record_x.area_of_site_in_sq_m:: NUMERIC):: INTEGER;


END IF;


-- Clearing Activity-Number of times
ELSIF p_indic_name = 'indic_clearing_activity_Number_of_times' THEN IF p_record_x.clearing_date IS NOT NULL
AND COALESCE(p_record_x.clearing_date, '') <> '' THEN clearing_activity_Number_of_times:= 1;


END IF;


-- Filling Activity- Number of Locations
ELSIF p_indic_name = 'indic_filling_activity' THEN IF p_record_x.filling_date IS NOT NULL
AND COALESCE(p_record_x.filling_date, '') <> '' THEN filling_activity:= 1;


END IF;


-- Filling Activity- Area in sq.m
ELSIF p_indic_name = 'indic_filling_activity_in_sq_km' THEN IF p_record_x.filling_date IS NOT NULL
AND COALESCE(p_record_x.filling_date, '') <> ''
AND COALESCE(p_record_x.area_of_site_in_sq_m, '') <> '' THEN filling_activity_in_sq_km:= ROUND(p_record_x.area_of_site_in_sq_m:: NUMERIC):: INTEGER;


END IF;


-- Filling Activity-Number of times
ELSIF p_indic_name = 'indic_filling_activity_Number_of_times' THEN IF p_record_x.filling_date IS NOT NULL
AND COALESCE(p_record_x.filling_date, '') <> '' THEN filling_activity_Number_of_times:= 1;


END IF;


-- Bednet Usage-Number of households who own bednets and use them properly
ELSIF p_indic_name = 'indic_households_who_own_bednets' THEN IF COALESCE((p_record_x.llitn_properly_used):: INTEGER, 0) >= 1 THEN households_who_own_bednets:= 1;


END IF;


-- Bednet Usage-Number of households who own bednets and do not use them
ELSIF p_indic_name = 'indic_households_who_own_but_not_use' THEN IF COALESCE((p_record_x.llitn_properly_used):: INTEGER, 0) = 0
AND COALESCE((p_record_x.llitn_distributed):: INTEGER, 0) >= 1 THEN households_who_own_but_not_use:= 1;


END IF;


-- Bednet Usage-Number of households who do not own bednets
ELSIF p_indic_name = 'indic_households_with_no_bednets' THEN IF COALESCE((p_record_x.llitn_properly_used):: INTEGER, 0) = 0
AND COALESCE((p_record_x.llitn_distributed):: INTEGER, 0) = 1 THEN households_with_no_bednets:= 1;


END IF;


-- Number of people involved in prevention (larva control activities) -+-       
ELSIF p_indic_name = 'indic_peoples_involved_in_prevention' THEN IF p_record_x.case_type = 'malaria_reporting' THEN peoples_involved_in_prevention:= 1;


END IF;


-- MALE-Number of people involved in prevention (larva control activities)
ELSIF p_indic_name = 'indic_males_involved_in_prevention' THEN IF p_record_x.case_type = 'malaria_reporting' THEN males_involved_in_prevention:= 1;


END IF;


-- FEMALE-Number involved in prevention (larva control activities)
ELSIF p_indic_name = 'indic_females_involved_in_prevention' THEN IF p_record_x.case_type = 'malaria_reporting' THEN females_involved_in_prevention:= 1;


END IF;


-- Organizations involved in prevention (larva control activities) -+-
ELSIF p_indic_name = 'indic_organizations_involved_in_prevention' THEN IF p_record_x.case_type = 'malaria_reporting' THEN organizations_involved_in_prevention:= 1;


END IF;


-- Number of people who took Behavioural Change Communication Training
ELSIF p_indic_name = 'indic_people_who_took_behav_change_comm_training' THEN IF p_record_x.type_of_training LIKE '%malaria_behavioural_change_communication%'
AND COALESCE(p_record_x.total_people_trained, '') <> '' THEN people_who_took_behav_change_comm_training:= p_record_x.total_people_trained:: INTEGER;


END IF;


-- Number of Males who took Behavioural Change Communication Training
ELSIF p_indic_name = 'indic_male_who_took_behav_change_comm_training' THEN IF p_record_x.type_of_training LIKE '%malaria_behavioural_change_communication%'
AND COALESCE(p_record_x.male_trained, '') <> '' THEN male_who_took_behav_change_comm_training:= p_record_x.male_trained:: INTEGER;


END IF;


-- Number of FeMales who took Behavioural Change Communication Training
ELSIF p_indic_name = 'indic_female_who_took_behav_change_comm_training' THEN IF p_record_x.type_of_training LIKE '%malaria_behavioural_change_communication%'
AND COALESCE(p_record_x.female_trained, '') <> '' THEN female_who_took_behav_change_comm_training:= p_record_x.female_trained:: INTEGER;


END IF;


-- Number of Organizations who took Behavioural Change Communication Training
ELSIF p_indic_name = 'indic_organizations_who_took_behav_change_comm_training' THEN IF p_record_x.type_of_training LIKE '%malaria_behavioural_change_communication%'
AND COALESCE(p_record_x.organizations_trained, '') <> '' THEN organizations_who_took_behav_change_comm_training:= p_record_x.organizations_trained:: INTEGER;


END IF;


-- Number of index households and those demarcated from the index case house within 70m radius or nearest five households where houses densely clustered.
ELSIF p_indic_name = 'indic_households_eligible_delineated_for_investigation' THEN IF (
  COALESCE((p_record_x.distance_from_index, ''):: INTEGER, 0) <= 70
  AND COALESCE((p_record_x.distance_from_index, ''):: INTEGER, 0) >= 0
) THEN households_eligible_delineated_for_investigation:= 1;


END IF;


-- Number of individuals living in the index case and neighboring households including visitors listed during case investigated
ELSIF p_indic_name = 'indic_individuals_living_in_index_case' THEN IF COALESCE((p_record_x.distance_from_index, ''):: INTEGER, 0) >= 0
AND COALESCE((p_record_x.distance_from_index, ''):: INTEGER, 0) <= 70 THEN
select
  count(*) into individuals_living_in_index_case
from
  client c
where
  c."indices.family" = p_record_x.id
  and c.closed = false;


END IF;


-- Total number of slides or RDT performed for malaria diagnosis - < 5 years, Male(MAL. 1):Malaria 
ELSIF p_indic_name = 'indic_MAL_1' THEN IF p_record_x.closed = 'False'
AND p_record_x.screened_for_malaria = 'yes'
AND p_record_x.gender = 'male'
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) < 5 THEN MAL_1:= 1;


END IF;


-- Total number of slides or RDT performed for malaria diagnosis - < 5 years, Female(MAL. 2):Malaria 
ELSIF p_indic_name = 'indic_MAL_2' THEN IF p_record_x.closed = 'False'
AND p_record_x.screened_for_malaria = 'yes'
AND p_record_x.gender = 'female'
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) < 5 THEN MAL_2:= 1;


END IF;


-- Total number of slides or RDT performed for malaria diagnosis - 5 - 14 years, Male(MAL. 3):Malaria 
ELSIF p_indic_name = 'indic_MAL_3' THEN IF p_record_x.closed = 'False'
AND p_record_x.screened_for_malaria = 'yes'
AND p_record_x.gender = 'male'
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 5
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) <= 14 THEN MAL_3:= 1;


END IF;


-- Total number of slides or RDT performed for malaria diagnosis - 5 - 14 years, Female(MAL. 4):Malaria 
ELSIF p_indic_name = 'indic_MAL_4' THEN IF p_record_x.closed = 'False'
AND p_record_x.screened_for_malaria = 'yes'
AND p_record_x.gender = 'female'
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 5
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) <= 14 THEN MAL_4:= 1;


END IF;


-- Total number of slides or RDT performed for malaria diagnosis - >= 15 years, Male(MAL. 5):Malaria 
ELSIF p_indic_name = 'indic_MAL_5' THEN IF p_record_x.closed = 'False'
AND p_record_x.screened_for_malaria = 'yes'
AND p_record_x.gender = 'male'
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 15 THEN MAL_5:= 1;


END IF;


-- Total number of slides or RDT performed for malaria diagnosis - >= 15 years, Female(MAL. 6):Malaria 
ELSIF p_indic_name = 'indic_MAL_6' THEN IF p_record_x.closed = 'False'
AND p_record_x.screened_for_malaria = 'yes'
AND p_record_x.gender = 'female'
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 15 THEN MAL_6:= 1;


END IF;


-- Total number of slides or RDT Positive - < 5 years, Male(MAL_POS.1. 1):Malaria 
ELSIF p_indic_name = 'indic_MAL_POS_1_1' THEN IF p_record_x.rdt_type = 'positive'
AND p_record_x.screened_for_malaria = 'yes'
AND p_record_x.gender = 'male'
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) < 5 THEN MAL_POS_1_1:= 1;


END IF;


-- Total number of slides or RDT Positive - < 5 years, Female(MAL_POS.1. 2):Malaria 
ELSIF p_indic_name = 'indic_MAL_POS_1_2' THEN IF p_record_x.screened_for_malaria = 'yes'
AND p_record_x.gender = 'female'
AND p_record_x.rdt_type = 'positive'
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) < 5 THEN MAL_POS_1_2:= 1;


END IF;


-- Total number of slides or RDT Positive - 5 - 14 years, Male(MAL_POS.1. 3):Malaria 
ELSIF p_indic_name = 'indic_MAL_POS_1_3' THEN IF p_record_x.screened_for_malaria = 'yes'
AND p_record_x.gender = 'male'
AND p_record_x.rdt_type = 'positive'
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 5
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) <= 14 THEN MAL_POS_1_3:= 1;


END IF;


-- Total number of slides or RDT Positive - 5 - 14 years, Female(MAL_POS.1. 4):Malaria 
ELSIF p_indic_name = 'indic_MAL_POS_1_4' THEN IF p_record_x.screened_for_malaria = 'yes'
AND p_record_x.gender = 'female'
AND p_record_x.rdt_type = 'positive'
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 5
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) <= 14 THEN MAL_POS_1_4:= 1;


END IF;


-- Total number of slides or RDT Positive - >= 15 years, Male(MAL_POS.1. 5):Malaria 
ELSIF p_indic_name = 'indic_MAL_POS_1_5' THEN IF p_record_x.screened_for_malaria = 'yes'
AND p_record_x.gender = 'male'
AND p_record_x.rdt_type = 'positive'
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 15 THEN MAL_POS_1_5:= 1;


END IF;


-- Total number of slides or RDT Positive - >= 15 years, Female(MAL_POS.1. 6):Malaria 
ELSIF p_indic_name = 'indic_MAL_POS_1_6' THEN IF p_record_x.screened_for_malaria = 'yes'
AND p_record_x.gender = 'female'
AND p_record_x.rdt_type = 'positive'
AND EXTRACT(
  YEAR
  FROM
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: TEXT
      ):: DATE
    )
) >= 15 THEN MAL_POS_1_6:= 1;


END IF;


-- Total number of slides or RDT Positive - Malaria with Travel History(Mal_Travel.):Malaria 
ELSIF p_indic_name = 'indic_Mal_Travel_' THEN IF p_record_x.screened_for_malaria = 'yes'
AND p_record_x.travel_history = 'yes'
AND p_record_x.rdt_type = 'positive'
AND (
  p_record_x.gender = 'female'
  or p_record_x.gender = 'male'
) THEN Mal_Travel_:= 1;


END IF;


-- FP_CYP.1:Male Condom (number of condoms distributed) @@@[Annual Service Delivery DS V1]
ELSIF p_indic_name = 'indic_FP_CYP_1' THEN IF p_record_x.case_type = 'client' THEN FP_CYP_1:= 1;


END IF;


-- FP_CYP.3:Oral contraceptives (number of monthly cycles distributed)
ELSIF p_indic_name = 'indic_FP_CYP_3' THEN IF p_record_x.case_type = 'client' THEN FP_CYP_3:= 1;


END IF;


-- FP_CYP.5:Injectable (Depo provera) (number of injections)
ELSIF p_indic_name = 'indic_FP_CYP_5' THEN IF p_record_x.case_type = 'client' THEN FP_CYP_5:= 1;


END IF;


-- FP_CYP.8:Implanon (number of Implanon insertions)
ELSIF p_indic_name = 'indic_FP_CYP_8' THEN IF p_record_x.case_type = 'client' THEN FP_CYP_8:= 1;


END IF;


-- FP_CYP.9:Jadelle (number of Jadelle insertions)
ELSIF p_indic_name = 'indic_FP_CYP_9' THEN IF p_record_x.case_type = 'client' THEN FP_CYP_9:= 1;


END IF;


-- FP_CYP.10:IUCD (number of IUCDs inserted)
ELSIF p_indic_name = 'indic_FP_CYP_10' THEN IF p_record_x.case_type = 'client' THEN FP_CYP_10:= 1;


END IF;


-- Mal_LLITN.1:Number of targeted HH received at least one LLITN in the last 12 month
ELSIF p_indic_name = 'indic_Mal_LLITN_1' THEN IF p_record_x.case_type = 'family' THEN Mal_LLITN_1:= 1;


END IF;


-- Mal_ELLITN.1:Number of HHs that need LLITN in the last 12 month
ELSIF p_indic_name = 'indic_Mal_ELLITN_1' THEN IF p_record_x.case_type = 'family' THEN Mal_ELLITN_1:= 1;


END IF;


-- Total confirmed malaria cases @@@[FTAT Weekly Report]
ELSIF p_indic_name = 'indic_total_confirmed_malaria_cases' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'malaria'
AND p_record_x.screening_location = 'ftat'
AND p_record_x.screening_location = 'ftat'
AND p_record_x.has_malaria = 'yes' THEN total_confirmed_malaria_cases:= 1;


END IF;


-- Number of confirmed malaria cases within HP catchment
ELSIF p_indic_name = 'indic_number_of_confirmed_malaria_cases_within_hp_catchment' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'malaria'
AND p_record_x.screening_location = 'ftat'
AND p_record_x.has_malaria = 'yes' THEN number_of_confirmed_malaria_cases_within_hp_catchment:= 1;


END IF;


-- Number of confirmed malaria cases outside HP catchment
ELSIF p_indic_name = 'indic_number_of_confirmed_malaria_cases_outside_hp_catchment' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'malaria'
AND p_record_x.screening_location = 'ftat'
AND p_record_x.has_malaria = 'yes' THEN number_of_confirmed_malaria_cases_outside_hp_catchment:= 1;


END IF;


-- Number of index cases eligible for investigation
ELSIF p_indic_name = 'indic_number_of_index_cases_eligible_for_investigation' THEN IF p_record_x.case_type = 'family'
AND p_record_x.index_case = 'yes'
AND p_record_x.closed = 'False' THEN number_of_index_cases_eligible_for_investigation:= 1;


END IF;


-- Number of index cases investigated
ELSIF p_indic_name = 'indic_number_of_index_cases_investigated' THEN IF p_record_x.case_type = 'family'
AND p_record_x.index_case = 'yes'
AND p_record_x.closed = 'False' THEN number_of_index_cases_investigated:= 1;


END IF;


-- Number of households eligible (delineated) for investigation
ELSIF p_indic_name = 'indic_Number_of_households_eligible_delineated_for_investigation' THEN IF p_record_x.case_type = 'family'
AND p_record_x.elligible_household = 'yes'
AND p_record_x.closed = 'False' THEN Number_of_households_eligible_delineated_for_investigation:= 1;


END IF;


-- Number of household members eligible for investigation (other than index cases, <6 months infants, severe cases)
ELSIF p_indic_name = 'indic_hh_members_eligible_butnot_indexcases' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'malaria'
AND p_record_x.screening_location = 'ftat'
AND p_record_x.severe_illness = 'no' THEN hh_members_eligible_butnot_indexcases:= 1;


END IF;


-- Number of household members tested
ELSIF p_indic_name = 'indic_number_of_household_members_tested' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'malaria'
AND p_record_x.screening_location = 'ftat' THEN number_of_household_members_tested:= 1;


END IF;


-- Number of households investigated
ELSIF p_indic_name = 'indic_number_of_households_investigated' THEN IF p_record_x.case_type = 'family'
AND p_record_x.closed = 'False' THEN number_of_households_investigated:= 1;


END IF;


-- Total number of positive cases (secondary)
ELSIF p_indic_name = 'indic_total_number_of_positive_cases_secondary' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'malaria'
AND p_record_x.screening_location = 'ftat'
AND p_record_x.rdt_result = 'positive' THEN total_number_of_positive_cases_secondary:= 1;


END IF;


-- Total number of PF cases
ELSIF p_indic_name = 'indic_total_number_of_pf_cases' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'malaria'
AND p_record_x.screening_location = 'ftat'
AND p_record_x.rdt_result = 'positive'
AND p_record_x.rdt_type = 'pf' THEN total_number_of_pf_cases:= 1;


END IF;


-- Total number of PV cases
ELSIF p_indic_name = 'indic_total_number_of_pv_cases' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'malaria'
AND p_record_x.screening_location = 'ftat'
AND p_record_x.rdt_result = 'positive'
AND p_record_x.rdt_type = 'pv' THEN total_number_of_pv_cases:= 1;


END IF;


-- Total number of Mixed cases
ELSIF p_indic_name = 'indic_total_number_of_Mixed_cases' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'malaria'
AND p_record_x.screening_location = 'ftat'
AND p_record_x.rdt_result = 'positive'
AND p_record_x.rdt_type = 'mixed' THEN total_number_of_Mixed_cases:= 1;


END IF;


-- Imported cases (Cases with travel history)
ELSIF p_indic_name = 'indic_imported_cases__cases_with_travel_history' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'malaria'
AND p_record_x.screening_location = 'ftat'
AND p_record_x.rdt_result = 'positive'
AND p_record_x.travel_history = 'yes' THEN imported_cases__cases_with_travel_history:= 1;


END IF;


-- Indigenous or local cases (Cases without travel history)
ELSIF p_indic_name = 'indic_indigenous_or_local_cases_cases_without_travel_history' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'malaria'
AND p_record_x.screening_location = 'ftat'
AND p_record_x.malarious_area = 'yes' THEN indigenous_or_local_cases_cases_without_travel_history:= 1;


END IF;


-- NTD pos2.1:Trachomatous Trichiasis Suspected on Screening and Referral @@@ [NTD monthly report datasource ] 
ELSIF p_indic_name = 'indic_suspected_trachomatous_trichiasis_referral' THEN IF p_record_x.illness_type = 'ntd'
AND p_record_x.ntd_trachomatous_trichiasis = 'yes'
AND p_record_x.ever_referred_to_hc = 'yes' THEN suspected_trachomatous_trichiasis_referral:= 1;


END IF;


-- NTD pos3:Schistosomiasis (SCH) Suspected on Screening
ELSIF p_indic_name = 'indic_suspected_schistosomiasis' THEN IF p_record_x.illness_type = 'ntd'
AND p_record_x.ntd_schistosomiasis = 'yes' THEN suspected_schistosomiasis:= 1;


END IF;


-- NTD pos3.1:Schistosomiasis (SCH) Suspected on Screening and Referral
ELSIF p_indic_name = 'indic_suspected_schistosomiasis_referral' THEN IF p_record_x.illness_type = 'ntd'
AND p_record_x.ntd_schistosomiasis = 'yes'
AND p_record_x.ever_referred_to_hc = 'yes' THEN suspected_schistosomiasis_referral:= 1;


END IF;


-- NTD pos4:Cutaneous leishmaniasis Suspected on Screening
ELSIF p_indic_name = 'indic_suspected_tcutaneous_leishmaniasis' THEN IF p_record_x.illness_type = 'ntd'
AND p_record_x.ntd_cutaneous_leishmaniasis = 'yes' THEN suspected_tcutaneous_leishmaniasis:= 1;


END IF;


-- NTD pos4.1:Cutaneous leishmaniasis Suspected on Screening and referral
ELSIF p_indic_name = 'indic_suspected_tcutaneous_leishmaniasis_referral' THEN IF p_record_x.illness_type = 'ntd'
AND p_record_x.ntd_cutaneous_leishmaniasis = 'yes'
AND p_record_x.ever_referred_to_hc = 'yes' THEN suspected_tcutaneous_leishmaniasis_referral:= 1;


END IF;


-- NTD pos5:Scabies suspected on Screening
ELSIF p_indic_name = 'indic_suspected_scabies' THEN IF p_record_x.illness_type = 'ntd'
AND p_record_x.ntd_scabies = 'yes' THEN suspected_scabies:= 1;


END IF;


-- NTD pos5.1:Scabies suspected on Screening and referral
ELSIF p_indic_name = 'indic_suspected_scabies_referral' THEN IF p_record_x.illness_type = 'ntd'
AND p_record_x.ntd_scabies = 'yes'
AND p_record_x.ever_referred_to_hc = 'yes' THEN suspected_scabies_referral:= 1;


END IF;


-- NTD pos6:Human Guinea Worm Suspected on Screening
ELSIF p_indic_name = 'indic_suspected_guinea_worm' THEN IF p_record_x.illness_type = 'ntd'
AND p_record_x.ntd_guinea_worm = 'yes' THEN suspected_guinea_worm:= 1;


END IF;


-- NTD pos6.1:Human Guinea Worm Suspected on Screening and Referral
ELSIF p_indic_name = 'indic_suspected_guinea_worm_referral' THEN IF p_record_x.illness_type = 'ntd'
AND p_record_x.ntd_guinea_worm = 'yes'
AND p_record_x.ever_referred_to_hc = 'yes' THEN suspected_guinea_worm_referral:= 1;


END IF;


-- NTD pos7:Number of people who swallowed azithromycin or took tetracycline eye ointment to prevent trachoma from the expected eligible population 
ELSIF p_indic_name = 'indic_num_tt_medication' THEN IF p_record_x.case_type = 'client'
AND p_record_x.closed = 'False'
AND p_record_x.tt_medication_received = 'yes' THEN num_tt_medication:= 1;


END IF;


-- NTD pos8:Number of who swallowed ivermectin to prevent onchocerciasis from the expected eligible population (>=5 Years)
ELSIF p_indic_name = 'indic_num_oncho_medication' THEN IF p_record_x.case_type = 'client'
AND p_record_x.closed = 'False'
AND p_record_x.oncho_medication_received = 'yes' THEN num_oncho_medication:= 1;


END IF;


-- NTD pos9:Number of people who swallowed a drug to prevent lymphatic filariasis from the expected eligible population (>=5 Years)
ELSIF p_indic_name = 'indic_num_lf_medication' THEN IF p_record_x.case_type = 'client'
AND p_record_x.closed = 'False'
AND p_record_x.lf_medication_received = 'yes' THEN num_lf_medication:= 1;


END IF;


-- NTD pos10:Number of children who swallowed a drug to prevent schistosomiasis from the expected eligible children (5 to 15 Years)
ELSIF p_indic_name = 'indic_num_sch_medication' THEN IF p_record_x.case_type = 'client'
AND p_record_x.closed = 'False'
AND p_record_x.sch_medication_received = 'yes' THEN num_sch_medication:= 1;


END IF;


-- NTD pos11:Number of children who swallowed a drug to prevent soil transmitted helminthiasis from the expected eligible children (5 to 19 Years )
ELSIF p_indic_name = 'indic_num_sth_medication_child' THEN IF p_record_x.case_type = 'client'
AND p_record_x.closed = 'False'
AND p_record_x.sth_medication_received = 'yes'
AND p_record_x.age_years = '5'
AND p_record_x.age_years = '19' THEN num_sth_medication_child:= 1;


END IF;


-- NTD pos12:Number of Women who swallowed a drug to prevent soil transmitted helminthiasis from women reproductive age (20-49 Years) 
ELSIF p_indic_name = 'indic_num_sth_medication_adult' THEN IF p_record_x.case_type = 'client'
AND p_record_x.closed = 'False'
AND p_record_x.sth_medication_received = 'yes'
AND p_record_x.age_years = '20'
AND p_record_x.age_years = '49' THEN num_sth_medication_adult:= 1;


END IF;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 0 - 4 years, Male(TB. 1):TB 
ELSIF p_indic_name = 'indic_TB_1' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_1:= 1;


END IF;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 0 - 4 years, Female(TB. 2):TB 
ELSIF p_indic_name = 'indic_TB_2' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_2:= 1;


END IF;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 5 - 9 years, Male(TB. 3):TB 
ELSIF p_indic_name = 'indic_TB_3' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_3:= 1;


END IF;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 5 - 9 years, Female(TB. 4):TB 
ELSIF p_indic_name = 'indic_TB_4' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_4:= 1;


END IF;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 10 - 14 years, Male(TB. 5):TB 
ELSIF p_indic_name = 'indic_TB_5' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_5:= 1;


END IF;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 10 - 14 years, Female(TB. 6):TB 
ELSIF p_indic_name = 'indic_TB_6' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_6:= 1;


END IF;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 15 - 19 years, Male(TB. 7):TB 
ELSIF p_indic_name = 'indic_TB_7' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_7:= 1;


END IF;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 15 - 19 years, Female(TB. 8):TB 
ELSIF p_indic_name = 'indic_TB_8' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_8:= 1;


END IF;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 20 - 24 years, Male(TB. 9):TB 
ELSIF p_indic_name = 'indic_TB_9' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_9:= 1;


END IF;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 20 - 24 years, Female(TB. 10):TB 
ELSIF p_indic_name = 'indic_TB_10' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_10:= 1;


END IF;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 25 - 34 years, Male(TB. 11):TB 
ELSIF p_indic_name = 'indic_TB_11' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_11:= 1;


END IF;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 25 - 34 years, Female(TB. 12):TB 
ELSIF p_indic_name = 'indic_TB_12' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_12:= 1;


END IF;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 35 - 44 years, Male(TB. 13):TB 
ELSIF p_indic_name = 'indic_TB_13' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_13:= 1;


END IF;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 35 - 44 years, Female(TB. 14):TB 
ELSIF p_indic_name = 'indic_TB_14' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_14:= 1;


END IF;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 45 - 54 years, Male(TB. 15):TB 
ELSIF p_indic_name = 'indic_TB_15' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_15:= 1;


END IF;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 45 - 54 years, Female(TB. 16):TB 
ELSIF p_indic_name = 'indic_TB_16' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_16:= 1;


END IF;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 55 - 64 years, Male(TB. 17):TB 
ELSIF p_indic_name = 'indic_TB_17' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_17:= 1;


END IF;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 55 - 64 years, Female(TB. 18):TB 
ELSIF p_indic_name = 'indic_TB_18' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_18:= 1;


END IF;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - >=65 yr, Male(TB. 19):TB 
ELSIF p_indic_name = 'indic_TB_19' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_19:= 1;


END IF;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - >=65 yr, Female(TB. 20):TB 
ELSIF p_indic_name = 'indic_TB_20' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_20:= 1;


END IF;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 0 - 4 years, Male(TB_TX_PTB.2. 1):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_1' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically' THEN TB_TX_PTB_2_1:= 1;


END IF;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 0 - 4 years, Female(TB_TX_PTB.2. 2):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_2' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically' THEN TB_TX_PTB_2_2:= 1;


END IF;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 5 - 9 years, Male(TB_TX_PTB.2. 3):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_3' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically' THEN TB_TX_PTB_2_3:= 1;


END IF;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 5 - 9 years, Female(TB_TX_PTB.2. 4):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_4' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically' THEN TB_TX_PTB_2_4:= 1;


END IF;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 10 - 14 years, Male(TB_TX_PTB.2. 5):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_5' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically' THEN TB_TX_PTB_2_5:= 1;


END IF;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 10 - 14 years, Female(TB_TX_PTB.2. 6):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_6' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically' THEN TB_TX_PTB_2_6:= 1;


END IF;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 15 - 19 years, Male(TB_TX_PTB.2. 7):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_7' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically' THEN TB_TX_PTB_2_7:= 1;


END IF;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 15 - 19 years, Female(TB_TX_PTB.2. 8):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_8' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically' THEN TB_TX_PTB_2_8:= 1;


END IF;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 20 - 24 years, Male(TB_TX_PTB.2. 9):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_9' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically' THEN TB_TX_PTB_2_9:= 1;


END IF;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 20 - 24 years, Female(TB_TX_PTB.2. 10):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_10' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically' THEN TB_TX_PTB_2_10:= 1;


END IF;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 25 - 34 years, Male(TB_TX_PTB.2. 11):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_11' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically' THEN TB_TX_PTB_2_11:= 1;


END IF;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 25 - 34 years, Female(TB_TX_PTB.2. 12):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_12' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically' THEN TB_TX_PTB_2_12:= 1;


END IF;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 35 - 44 years, Male(TB_TX_PTB.2. 13):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_13' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically' THEN TB_TX_PTB_2_13:= 1;


END IF;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 35 - 44 years, Female(TB_TX_PTB.2. 14):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_14' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically' THEN TB_TX_PTB_2_14:= 1;


END IF;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 45 - 54 years, Male(TB_TX_PTB.2. 15):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_15' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically' THEN TB_TX_PTB_2_15:= 1;


END IF;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 45 - 54 years, Female(TB_TX_PTB.2. 16):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_16' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically' THEN TB_TX_PTB_2_16:= 1;


END IF;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 55 - 64 years, Male(TB_TX_PTB.2. 17):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_17' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically' THEN TB_TX_PTB_2_17:= 1;


END IF;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 55 - 64 years, Female(TB_TX_PTB.2. 18):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_18' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically' THEN TB_TX_PTB_2_18:= 1;


END IF;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - >=65 yr, Male(TB_TX_PTB.2. 19):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_19' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically' THEN TB_TX_PTB_2_19:= 1;


END IF;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - >=65 yr, Female(TB_TX_PTB.2. 20):TB 
ELSIF p_indic_name = 'indic_TB_TX_PTB_2_20' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically' THEN TB_TX_PTB_2_20:= 1;


END IF;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 0 - 4 years, Male(TB_TX_EPTB.1. 1):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_1' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_TX_EPTB_1_1:= 1;


END IF;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 0 - 4 years, Female(TB_TX_EPTB.1. 2):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_2' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_TX_EPTB_1_2:= 1;


END IF;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 5 - 9 years, Male(TB_TX_EPTB.1. 3):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_3' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_TX_EPTB_1_3:= 1;


END IF;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 5 - 9 years, Female(TB_TX_EPTB.1. 4):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_4' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_TX_EPTB_1_4:= 1;


END IF;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 10 - 14 years, Male(TB_TX_EPTB.1. 5):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_5' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_TX_EPTB_1_5:= 1;


END IF;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 10 - 14 years, Female(TB_TX_EPTB.1. 6):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_6' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_TX_EPTB_1_6:= 1;


END IF;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 15 - 19 years, Male(TB_TX_EPTB.1. 7):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_7' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_TX_EPTB_1_7:= 1;


END IF;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 15 - 19 years, Female(TB_TX_EPTB.1. 8):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_8' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_TX_EPTB_1_8:= 1;


END IF;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 20 - 24 years, Male(TB_TX_EPTB.1. 9):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_9' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_TX_EPTB_1_9:= 1;


END IF;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 20 - 24 years, Female(TB_TX_EPTB.1. 10):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_10' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_TX_EPTB_1_10:= 1;


END IF;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 25 - 34 years, Male(TB_TX_EPTB.1. 11):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_11' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_TX_EPTB_1_11:= 1;


END IF;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 25 - 34 years, Female(TB_TX_EPTB.1. 12):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_12' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_TX_EPTB_1_12:= 1;


END IF;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 35 - 44 years, Male(TB_TX_EPTB.1. 13):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_13' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_TX_EPTB_1_13:= 1;


END IF;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 35 - 44 years, Female(TB_TX_EPTB.1. 14):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_14' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_TX_EPTB_1_14:= 1;


END IF;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 45 - 54 years, Male(TB_TX_EPTB.1. 15):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_15' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_TX_EPTB_1_15:= 1;


END IF;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 45 - 54 years, Female(TB_TX_EPTB.1. 16):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_16' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_TX_EPTB_1_16:= 1;


END IF;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 55 - 64 years, Male(TB_TX_EPTB.1. 17):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_17' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_TX_EPTB_1_17:= 1;


END IF;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 55 - 64 years, Female(TB_TX_EPTB.1. 18):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_18' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_TX_EPTB_1_18:= 1;


END IF;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - >=65 yr, Male(TB_TX_EPTB.1. 19):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_19' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_TX_EPTB_1_19:= 1;


END IF;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - >=65 yr, Female(TB_TX_EPTB.1. 20):TB 
ELSIF p_indic_name = 'indic_TB_TX_EPTB_1_20' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'female'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_TX_EPTB_1_20:= 1;


END IF;


-- Treatment outcome of cohort of new PTB+ bacteriologically confirmed TB cases - Completed(TB_CR_PTB.1.1. 1):TB 
ELSIF p_indic_name = 'indic_TB_CR_PTB_1_1_1' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_CR_PTB_1_1_1:= 1;


END IF;


-- Treatment outcome of cohort of new PTB+ bacteriologically confirmed TB cases - Cured(TB_CR_PTB.1.1. 2):TB 
ELSIF p_indic_name = 'indic_TB_CR_PTB_1_1_2' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically'
AND p_record_x.illness_status = 'cured' THEN TB_CR_PTB_1_1_2:= 1;


END IF;


-- Treatment outcome of cohort of new PTB+ bacteriologically confirmed TB cases - Lost to follow-up(TB_CR_PTB.1.1. 3):TB 
ELSIF p_indic_name = 'indic_TB_CR_PTB_1_1_3' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically'
AND p_record_x.client_follow_up_status_at_hc = 'lost_to_follow_up' THEN TB_CR_PTB_1_1_3:= 1;


END IF;


-- Treatment outcome of cohort of new PTB+ bacteriologically confirmed TB cases - Dead(TB_CR_PTB.1.1. 4):TB 
ELSIF p_indic_name = 'indic_TB_CR_PTB_1_1_4' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically'
AND p_record_x.illness_status = 'client_died' THEN TB_CR_PTB_1_1_4:= 1;


END IF;


-- Treatment outcome of cohort of new PTB+ bacteriologically confirmed TB cases - Failed(TB_CR_PTB.1.1. 5):TB 
ELSIF p_indic_name = 'indic_TB_CR_PTB_1_1_5' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically'
AND p_record_x.illness_status = 'treatment_failed' THEN TB_CR_PTB_1_1_5:= 1;


END IF;


-- Treatment outcome of cohort of clinically diagnosed pulmonary TB cases(P/Neg) - Completed(TB_CR_PNTB.2.1. 1):TB 
ELSIF p_indic_name = 'indic_TB_CR_PNTB_2_1_1' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically' THEN TB_CR_PNTB_2_1_1:= 1;


END IF;


-- Treatment outcome of cohort of clinically diagnosed pulmonary TB cases(P/Neg) - Lost to follow-up(TB_CR_PNTB.2.1. 2):TB 
ELSIF p_indic_name = 'indic_TB_CR_PNTB_2_1_2' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically'
AND p_record_x.client_follow_up_status_at_hc = 'lost_to_follow_up' THEN TB_CR_PNTB_2_1_2:= 1;


END IF;


-- Treatment outcome of cohort of clinically diagnosed pulmonary TB cases(P/Neg) - Deaths(TB_CR_PNTB.2.1. 3):TB 
ELSIF p_indic_name = 'indic_TB_CR_PNTB_2_1_3' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically'
AND p_record_x.illness_status = 'client_died' THEN TB_CR_PNTB_2_1_3:= 1;


END IF;


-- Treatment outcome of cohort of clinically diagnosed pulmonary TB cases(P/Neg) - Failed(TB_CR_PNTB.2.1. 4):TB 
ELSIF p_indic_name = 'indic_TB_CR_PNTB_2_1_4' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically'
AND p_record_x.illness_status = 'treatment_failed' THEN TB_CR_PNTB_2_1_4:= 1;


END IF;


-- Treatment outcome of cohort of clinically diagnosed pulmonary TB cases(P/Neg) - Moved to DR TB Register(TB_CR_PNTB.2.1. 5):TB 
ELSIF p_indic_name = 'indic_TB_CR_PNTB_2_1_5' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'clinically'
AND p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_resistant' THEN TB_CR_PNTB_2_1_5:= 1;


END IF;


-- Treatment outcome of cohort of new extra pulmonary TB (EPTB)cases - Completed(TB_CR_EPTB.3.1. 1):TB 
ELSIF p_indic_name = 'indic_TB_CR_EPTB_3_1_1' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.client_follow_up_status_at_hc = 'follow_up_completed'
AND p_record_x.illness_status = 'treatment_completed' THEN TB_CR_EPTB_3_1_1:= 1;


END IF;


-- Treatment outcome of cohort of new extra pulmonary TB (EPTB)cases - Lost to follow-up(TB_CR_EPTB.3.1. 2):TB 
ELSIF p_indic_name = 'indic_TB_CR_EPTB_3_1_2' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.client_follow_up_status_at_hc = 'lost_to_follow_up' THEN TB_CR_EPTB_3_1_2:= 1;


END IF;


-- Treatment outcome of cohort of new extra pulmonary TB (EPTB)cases - Deaths(TB_CR_EPTB.3.1. 3):TB 
ELSIF p_indic_name = 'indic_TB_CR_EPTB_3_1_3' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.illness_status = 'client_died' THEN TB_CR_EPTB_3_1_3:= 1;


END IF;


-- Treatment outcome of cohort of new extra pulmonary TB (EPTB)cases - Failed(TB_CR_EPTB.3.1. 4):TB 
ELSIF p_indic_name = 'indic_TB_CR_EPTB_3_1_4' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.illness_status = 'treatment_failed' THEN TB_CR_EPTB_3_1_4:= 1;


END IF;


-- Treatment outcome of cohort of new extra pulmonary TB (EPTB)cases - Moved to DR TB Register(TB_CR_EPTB.3.1. 5):TB 
ELSIF p_indic_name = 'indic_TB_CR_EPTB_3_1_5' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
AND p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_resistant' THEN TB_CR_EPTB_3_1_5:= 1;


END IF;


-- Treatment outcome of cohort of all Relapse cases - Number of all forms TB cases detected and registered on TB unit register who are initially referred by the community(TB_COMM.):TB 
ELSIF p_indic_name = 'indic_TB_COMM_' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed' THEN TB_COMM_:= 1;


END IF;


-- Treatment outcome of cohort of all Relapse cases - Total number of patients who started TB treatment in same reporting month of pervious year and who received any form of treatment adherence support from Health extension workers(TB_CBTSR.2.):TB 
ELSIF p_indic_name = 'indic_TB_CBTSR_2_' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.gender = 'male'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_CBTSR_2_:= 1;


END IF;


-- Total number of contacts with index bacteriologically confirmed pulmonary drug susceptible TB cases during the reporting Month by age - 0 - 4 years(TB_CI.1.1. 1):TB 
ELSIF p_indic_name = 'indic_TB_CI_1_1_1' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.contact_screening_visit = 'yes'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_susceptible' THEN TB_CI_1_1_1:= 1;


END IF;


-- Total number of contacts with index bacteriologically confirmed pulmonary drug susceptible TB cases during the reporting Month by age - 5 - 14 years(TB_CI.1.1. 2):TB 
ELSIF p_indic_name = 'indic_TB_CI_1_1_2' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.contact_screening_visit = 'yes'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_susceptible' THEN TB_CI_1_1_2:= 1;


END IF;


-- Total number of contacts with index bacteriologically confirmed pulmonary drug susceptible TB cases during the reporting Month by age - >= 15 years(TB_CI.1.1. 3):TB 
ELSIF p_indic_name = 'indic_TB_CI_1_1_3' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.contact_screening_visit = 'yes'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically'
AND p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
AND p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_susceptible' THEN TB_CI_1_1_3:= 1;


END IF;


-- Total number of contacts with index bacteriologically confirmed DR-TB cases during the reporting Month - 0 - 4 years(TB_CI.1.2. 1):TB 
ELSIF p_indic_name = 'indic_TB_CI_1_2_1' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.contact_screening_visit = 'yes'
AND p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_resistant'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_CI_1_2_1:= 1;


END IF;


-- Total number of contacts with index bacteriologically confirmed DR-TB cases during the reporting Month - 5 - 14 years(TB_CI.1.2. 2):TB 
ELSIF p_indic_name = 'indic_TB_CI_1_2_2' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.contact_screening_visit = 'yes'
AND p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_resistant'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_CI_1_2_2:= 1;


END IF;


-- Total number of contacts with index bacteriologically confirmed DR-TB cases during the reporting Month - >= 15 years(TB_CI.1.2. 3):TB 
ELSIF p_indic_name = 'indic_TB_CI_1_2_3' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.contact_screening_visit = 'yes'
AND p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_resistant'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_CI_1_2_3:= 1;


END IF;


-- Contacts of drug susceptible bacteriological confirmed pulmonary TB cases screened for TB - 0 - 4 years(TB_CI_SCR.1. 1):TB 
ELSIF p_indic_name = 'indic_TB_CI_SCR_1_1' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.contact_screening_visit = 'yes'
AND p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_susceptible'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_CI_SCR_1_1:= 1;


END IF;


-- Contacts of drug susceptible bacteriological confirmed pulmonary TB cases screened for TB - 4 - 14 years(TB_CI_SCR.1. 2):TB 
ELSIF p_indic_name = 'indic_TB_CI_SCR_1_2' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.contact_screening_visit = 'yes'
AND p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_susceptible'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_CI_SCR_1_2:= 1;


END IF;


-- Contacts of drug susceptible bacteriological confirmed pulmonary TB cases screened for TB - >= 15 years(TB_CI_SCR.1. 3):TB 
ELSIF p_indic_name = 'indic_TB_CI_SCR_1_3' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.contact_screening_visit = 'yes'
AND p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_susceptible'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_CI_SCR_1_3:= 1;


END IF;


-- Contacts of drug Resistant TB cases screened for TB - 0 - 4 years(TB_CI_SCR.2. 1):TB 
ELSIF p_indic_name = 'indic_TB_CI_SCR_2_1' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.contact_screening_visit = 'yes'
AND p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_resistant' THEN TB_CI_SCR_2_1:= 1;


END IF;


-- Contacts of drug Resistant TB cases screened for TB - 5 - 14 years(TB_CI_SCR.2. 2):TB 
ELSIF p_indic_name = 'indic_TB_CI_SCR_2_2' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.contact_screening_visit = 'yes'
AND p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_resistant' THEN TB_CI_SCR_2_2:= 1;


END IF;


-- Contacts of drug Resistant TB cases screened for TB - >= 15 years(TB_CI_SCR.2. 3):TB 
ELSIF p_indic_name = 'indic_TB_CI_SCR_2_3' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.contact_screening_visit = 'yes'
AND p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_resistant' THEN TB_CI_SCR_2_3:= 1;


END IF;


-- Number of contacts screened negative for TB and put on TB Preventive Therapy (TPT) in the reporting period by Age Group - 0 - 4 years(TB_TPT. 1):TB 
ELSIF p_indic_name = 'indic_TB_TPT_1' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.contact_screening_visit = 'yes'
AND p_record_x.hc_screening_classification = 'latent_tb_infection' THEN TB_TPT_1:= 1;


END IF;


-- Number of contacts screened negative for TB and put on TB Preventive Therapy (TPT) in the reporting period by Age Group - 5 - 14 years(TB_TPT. 2):TB 
ELSIF p_indic_name = 'indic_TB_TPT_2' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.contact_screening_visit = 'yes'
AND p_record_x.hc_screening_classification = 'latent_tb_infection' THEN TB_TPT_2:= 1;


END IF;


-- Number of contacts screened negative for TB and put on TB Preventive Therapy (TPT) in the reporting period by Age Group - >= 15 years(TB_TPT. 3):TB 
ELSIF p_indic_name = 'indic_TB_TPT_3' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.contact_screening_visit = 'yes'
AND p_record_x.hc_screening_classification = 'latent_tb_infection' THEN TB_TPT_3:= 1;


END IF;


-- Number of contacts screened negative for TB and put on TB Preventive Therapy (TPT) in the reporting period by regimen type - 3HP(TB_TPT.1.4. 1):TB 
ELSIF p_indic_name = 'indic_TB_TPT_1_4_1' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.contact_screening_visit = 'yes'
AND p_record_x.hc_screening_classification = 'latent_tb_infection'
AND p_record_x.tpt_med_names = '3HP' THEN TB_TPT_1_4_1:= 1;


END IF;


-- Number of contacts screened negative for TB and put on TB Preventive Therapy (TPT) in the reporting period by regimen type - 3RH(TB_TPT.1.4. 2):TB 
ELSIF p_indic_name = 'indic_TB_TPT_1_4_2' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.contact_screening_visit = 'yes'
AND p_record_x.hc_screening_classification = 'latent_tb_infection'
AND p_record_x.tpt_med_names = '3RH' THEN TB_TPT_1_4_2:= 1;


END IF;


-- Number of contacts screened negative for TB and put on TB Preventive Therapy (TPT) in the reporting period by regimen type - 6H(TB_TPT.1.4. 3):TB 
ELSIF p_indic_name = 'indic_TB_TPT_1_4_3' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.contact_screening_visit = 'yes'
AND p_record_x.hc_screening_classification = 'latent_tb_infection'
AND p_record_x.tpt_med_names = '6H' THEN TB_TPT_1_4_3:= 1;


END IF;


-- Number of notified bacteriologically confirmed TB cases evaluated for drug susceptibility testing according to national policy during the reporting month - New(TB_DST.1. 1):TB 
ELSIF p_indic_name = 'indic_TB_DST_1_1' THEN IF p_record_x.tb_client_type = 'new'
AND p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_susceptible'
AND p_record_x.pulmonary_type_identified_by = 'bacteriologically' THEN TB_DST_1_1:= 1;


END IF;


-- Number of drug susceptible TB cases screened for Malnutrition during the reporting period - Normal(TB_DR_NUT.1. 1):TB 
ELSIF p_indic_name = 'indic_TB_DR_NUT_1_1' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_susceptible' THEN TB_DR_NUT_1_1:= 1;


END IF;


-- Number of drug susceptible TB cases screened for Malnutrition during the reporting period - MAM(TB_DR_NUT.1. 2):TB 
ELSIF p_indic_name = 'indic_TB_DR_NUT_1_2' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_susceptible' THEN TB_DR_NUT_1_2:= 1;


END IF;


-- Number of drug susceptible TB cases screened for Malnutrition during the reporting period - SAM(TB_DR_NUT.1. 3):TB 
ELSIF p_indic_name = 'indic_TB_DR_NUT_1_3' THEN IF p_record_x.illness_type = 'tb'
AND p_record_x.hew_screening_classification = 'TB Presumed'
AND p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_susceptible' THEN TB_DR_NUT_1_3:= 1;


END IF;


-- 4.2.3.1.1-Leprosy case notification: All leprosy case detected( N+O+R+D)  @@@ [Leprosy Datasource Monthly]
ELSIF p_indic_name = 'indic_Leprosy_case_notification__All_leprosy_case_detected' THEN IF p_record_x.case_type = 'illness' THEN Leprosy_case_notification__All_leprosy_case_detected:= 1;


END IF;


-- 4.2.3.1.2-Leprosy case notification: Male
ELSIF p_indic_name = 'indic_Leprosy_case_notification__Male' THEN IF p_record_x.case_type = 'illness' THEN Leprosy_case_notification__Male:= 1;


END IF;


-- 4.2.3.1.3-Leprosy case notification: Female
ELSIF p_indic_name = 'indic_Leprosy_case_notification_Female' THEN IF p_record_x.case_type = 'illness' THEN Leprosy_case_notification_Female:= 1;


END IF;


-- 4.2.3.1.4-Leprosy case notification: New Leprosy cases detected :
ELSIF p_indic_name = 'indic_Leprosy_case_notification_New_Leprosy_cases_detected_' THEN IF p_record_x.case_type = 'illness' THEN Leprosy_case_notification_New_Leprosy_cases_detected_:= 1;


END IF;


-- 4.2.3.1.5-Leprosy case notification: PB: Male <15 yrs
ELSIF p_indic_name = 'indic_Leprosy_case_notification_PB_Male_lt_15_yrs' THEN IF p_record_x.case_type = 'illness' THEN Leprosy_case_notification_PB_Male_lt_15_yrs:= 1;


END IF;


-- 4.2.3.1.6-Leprosy case notification: PB: Male = >15 yrs
ELSIF p_indic_name = 'indic_Leprosy_case_notification_PB_Male_gte_15_yrs' THEN IF p_record_x.case_type = 'illness' THEN Leprosy_case_notification_PB_Male_gte_15_yrs:= 1;


END IF;


-- 4.2.3.1.7-Leprosy case notification: PB: Female <15 yrs
ELSIF p_indic_name = 'indic_Leprosy_case_notification_PB_Female_lt_15_yrs' THEN IF p_record_x.case_type = 'illness' THEN Leprosy_case_notification_PB_Female_lt_15_yrs:= 1;


END IF;


-- 4.2.3.1.8-Leprosy case notification: PB: Female = >15 yrs
ELSIF p_indic_name = 'indic_Leprosy_case_notification_PB_Female_gte_15_yrs' THEN IF p_record_x.case_type = 'illness' THEN Leprosy_case_notification_PB_Female_gte_15_yrs:= 1;


END IF;


-- 4.2.3.1.9-Leprosy case notification: MB : Male <15 yrs
ELSIF p_indic_name = 'indic_Leprosy_case_notification_MB__Male_lt_15_yrs' THEN IF p_record_x.case_type = 'illness' THEN Leprosy_case_notification_MB__Male_lt_15_yrs:= 1;


END IF;


-- 4.2.3.1.10-Leprosy case notification: MB : Male = >15 yrs
ELSIF p_indic_name = 'indic_Leprosy_case_notification_MB__Male_gte_15_yrs' THEN IF p_record_x.case_type = 'illness' THEN Leprosy_case_notification_MB__Male_gte_15_yrs:= 1;


END IF;


-- 4.2.3.1.11-Leprosy case notification: MB : Female < 15 yrs
ELSIF p_indic_name = 'indic_Leprosy_case_notification_MB__Female_lt__15_yrs' THEN IF p_record_x.case_type = 'illness' THEN Leprosy_case_notification_MB__Female_lt__15_yrs:= 1;


END IF;


-- 4.2.3.1.12-Leprosy case notification: MB : Female => 15 yrs
ELSIF p_indic_name = 'indic_Leprosy_case_notification_MB__Female_gte_15_yrs' THEN IF p_record_x.case_type = 'illness' THEN Leprosy_case_notification_MB__Female_gte_15_yrs:= 1;


END IF;


-- 4.2.3.2.1-Grade II disability rate among new cases of leprosy: New leprosy cases with Grade II disability (MB+PB)
ELSIF p_indic_name = 'indic_Grade_II_disability_rate' THEN IF p_record_x.case_type = 'illness' THEN Grade_II_disability_rate:= 1;


END IF;


-- 4.2.3.2.2-Grade II disability rate among new cases of leprosy: Male <15
ELSIF p_indic_name = 'indic_Grade_II_disability_rate_among_new_cases_of_leprosy_Male_lt_15' THEN IF p_record_x.case_type = 'illness' THEN Grade_II_disability_rate_among_new_cases_of_leprosy_Male_lt_15:= 1;


END IF;


-- 4.2.3.2.3-Grade II disability rate among new cases of leprosy: Male =>15
ELSIF p_indic_name = 'indic_Grade_II_disability_rate_among_new_cases_of_leprosy_Male_gte_15' THEN IF p_record_x.case_type = 'illness' THEN Grade_II_disability_rate_among_new_cases_of_leprosy_Male_gte_15:= 1;


END IF;


-- 4.2.3.2.4-Grade II disability rate among new cases of leprosy: Female<15
ELSIF p_indic_name = 'indic_Grade_II_disability_rate_among_new_cases_of_leprosy_Female_gt_15' THEN IF p_record_x.case_type = 'illness' THEN Grade_II_disability_rate_among_new_cases_of_leprosy_Fem_gt_15:= 1;


END IF;


-- 4.2.3.2.5-Grade II disability rate among new cases of leprosy: Female =>15
ELSIF p_indic_name = 'indic_Grade_II_disability_rate_among_new_cases_of_leprosy_Female_gte_15' THEN IF p_record_x.case_type = 'illness' THEN Grade_II_disability_rate_among_new_cases_of_leprosy_Fem_gte_15:= 1;


END IF;


-- New Leprosy cases detected(PB) - < 15 years, Male(LEP_NOT_.1.1. 1):Leprosy 
ELSIF p_indic_name = 'indic_LEP_NOT__1_1_1' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'leprosy'
AND p_record_x.hew_screening_classification = 'Leprosy Presumed'
AND p_record_x.hc_leprosy_type = 'pb_leprosy' THEN LEP_NOT__1_1_1:= 1;


END IF;


-- New Leprosy cases detected(PB) - < 15 years, Female(LEP_NOT_.1.1. 2): 
ELSIF p_indic_name = 'indic_LEP_NOT__1_1_2' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'leprosy'
AND p_record_x.hew_screening_classification = 'Leprosy Presumed'
AND p_record_x.hc_leprosy_type = 'pb_leprosy' THEN LEP_NOT__1_1_2:= 1;


END IF;


-- New Leprosy cases detected(PB) - >= 15 years, Male(LEP_NOT_.1.1. 3): 
ELSIF p_indic_name = 'indic_LEP_NOT__1_1_3' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'leprosy'
AND p_record_x.hew_screening_classification = 'Leprosy Presumed'
AND p_record_x.hc_leprosy_type = 'pb_leprosy' THEN LEP_NOT__1_1_3:= 1;


END IF;


-- New Leprosy cases detected(PB) - >= 15 years, Female(LEP_NOT_.1.1. 4): 
ELSIF p_indic_name = 'indic_LEP_NOT__1_1_4' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'leprosy'
AND p_record_x.hew_screening_classification = 'Leprosy Presumed'
AND p_record_x.hc_leprosy_type = 'pb_leprosy' THEN LEP_NOT__1_1_4:= 1;


END IF;


-- New Leprosy cases detected(MB) - < 15 years, Male(LEP_NOT_.1.1.5. 1): 
ELSIF p_indic_name = 'indic_LEP_NOT__1_1_5_1' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'leprosy'
AND p_record_x.hew_screening_classification = 'Leprosy Presumed'
AND p_record_x.hc_leprosy_type = 'mb_leprosy' THEN LEP_NOT__1_1_5_1:= 1;


END IF;


-- New Leprosy cases detected(MB) - < 15 years, Female(LEP_NOT_.1.1.5. 2): 
ELSIF p_indic_name = 'indic_LEP_NOT__1_1_5_2' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'leprosy'
AND p_record_x.hew_screening_classification = 'Leprosy Presumed'
AND p_record_x.hc_leprosy_type = 'mb_leprosy' THEN LEP_NOT__1_1_5_2:= 1;


END IF;


-- New Leprosy cases detected(MB) - >= 15 years, Male(LEP_NOT_.1.1.5. 3): 
ELSIF p_indic_name = 'indic_LEP_NOT__1_1_5_3' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'leprosy'
AND p_record_x.hew_screening_classification = 'Leprosy Presumed'
AND p_record_x.hc_leprosy_type = 'mb_leprosy' THEN LEP_NOT__1_1_5_3:= 1;


END IF;


-- New Leprosy cases detected(MB) - >= 15 years, Female(LEP_NOT_.1.1.5. 4): 
ELSIF p_indic_name = 'indic_LEP_NOT__1_1_5_4' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'leprosy'
AND p_record_x.hew_screening_classification = 'Leprosy Presumed'
AND p_record_x.hc_leprosy_type = 'mb_leprosy' THEN LEP_NOT__1_1_5_4:= 1;


END IF;


-- New leprosy cases with Grade II disability (MB+PB) - < 15 years, Male(LEP_DIS.1. 1): 
ELSIF p_indic_name = 'indic_LEP_DIS_1_1' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'leprosy'
AND p_record_x.hew_screening_classification = 'Leprosy Presumed'
AND p_record_x.level_of_leprosy_grade = 'disability_grade_2' THEN LEP_DIS_1_1:= 1;


END IF;


-- New leprosy cases with Grade II disability (MB+PB) - < 15 years, Female(LEP_DIS.1. 2): 
ELSIF p_indic_name = 'indic_LEP_DIS_1_2' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'leprosy'
AND p_record_x.hew_screening_classification = 'Leprosy Presumed'
AND p_record_x.level_of_leprosy_grade = 'disability_grade_2' THEN LEP_DIS_1_2:= 1;


END IF;


-- New leprosy cases with Grade II disability (MB+PB) - >= 15 years, Male(LEP_DIS.1. 3): 
ELSIF p_indic_name = 'indic_LEP_DIS_1_3' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'leprosy'
AND p_record_x.hew_screening_classification = 'Leprosy Presumed'
AND p_record_x.level_of_leprosy_grade = 'disability_grade_2' THEN LEP_DIS_1_3:= 1;


END IF;


-- New leprosy cases with Grade II disability (MB+PB) - >= 15 years, Female(LEP_DIS.1. 4): 
ELSIF p_indic_name = 'indic_LEP_DIS_1_4' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'leprosy'
AND p_record_x.hew_screening_classification = 'Leprosy Presumed'
AND p_record_x.level_of_leprosy_grade = 'disability_grade_2' THEN LEP_DIS_1_4:= 1;


END IF;


-- Leprosy Treatment Completion Rate - Registered cohort of MB cases(LEP_TX.2.): 
ELSIF p_indic_name = 'indic_LEP_TX_2_' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'leprosy'
AND p_record_x.hew_screening_classification = 'Leprosy Presumed'
AND p_record_x.hc_leprosy_type = 'mb_leprosy' THEN LEP_TX_2_:= 1;


END IF;


-- Leprosy Treatment Completion Rate - Treatment completed MB cases(LEP_TX.3.): 
ELSIF p_indic_name = 'indic_LEP_TX_3_' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'leprosy'
AND p_record_x.hew_screening_classification = 'Leprosy Presumed'
AND p_record_x.hc_leprosy_type = 'mb_leprosy' THEN LEP_TX_3_:= 1;


END IF;


-- Leprosy Treatment Completion Rate - Registered cohort of PB cases(LEP_TX.4.): 
ELSIF p_indic_name = 'indic_LEP_TX_4_' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'leprosy'
AND p_record_x.hew_screening_classification = 'Leprosy Presumed'
AND p_record_x.hc_leprosy_type = 'pb_leprosy' THEN LEP_TX_4_:= 1;


END IF;


-- Leprosy Treatment Completion Rate - Treatment completed PB cases(LEP_TX.5.): 
ELSIF p_indic_name = 'indic_LEP_TX_5_' THEN IF p_record_x.case_type = 'illness'
AND p_record_x.illness_type = 'leprosy'
AND p_record_x.hew_screening_classification = 'Leprosy Presumed'
AND p_record_x.hc_leprosy_type = 'pb_leprosy' THEN LEP_TX_5_:= 1;


END IF;


-- xsum
ELSIF p_indic_name = 'indic_xsum' THEN IF p_record_x.property_name = 'xproperty_name' THEN xsum:= 1;


END IF;


-- Number of outpatient visits - < 5 Years, Male(MS_OPD_NumOV.1. 1):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_1' THEN IF p_record_x.gender = 'male' THEN MS_OPD_NumOV_1_1:= 1;


END IF;


-- Number of outpatient visits - < 5 Years, Female(MS_OPD_NumOV.1. 2):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_2' THEN IF p_record_x.gender = 'female' THEN MS_OPD_NumOV_1_2:= 1;


END IF;


-- Number of outpatient visits - 5 - 9 years, Male(MS_OPD_NumOV.1. 3):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_3' THEN IF p_record_x.gender = 'male' THEN MS_OPD_NumOV_1_3:= 1;


END IF;


-- Number of outpatient visits - 5 - 9 years, Female(MS_OPD_NumOV.1. 4):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_4' THEN IF p_record_x.gender = 'female' THEN MS_OPD_NumOV_1_4:= 1;


END IF;


-- Number of outpatient visits - 11 - 19 years, Male(MS_OPD_NumOV.1. 5):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_5' THEN IF p_record_x.gender = 'male' THEN MS_OPD_NumOV_1_5:= 1;


END IF;


-- Number of outpatient visits - 11 - 19 years, Female(MS_OPD_NumOV.1. 6):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_6' THEN IF p_record_x.gender = 'female' THEN MS_OPD_NumOV_1_6:= 1;


END IF;


-- Number of outpatient visits - 20 - 29 years, Male(MS_OPD_NumOV.1. 7):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_7' THEN IF p_record_x.gender = 'male' THEN MS_OPD_NumOV_1_7:= 1;


END IF;


-- Number of outpatient visits - 20 - 29 years, Female(MS_OPD_NumOV.1. 6):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_8' THEN IF p_record_x.gender = 'female' THEN MS_OPD_NumOV_1_8:= 1;


END IF;


-- Number of outpatient visits - 30 - 45 years, Male(MS_OPD_NumOV.1. 9):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_9' THEN IF p_record_x.gender = 'male' THEN MS_OPD_NumOV_1_9:= 1;


END IF;


-- Number of outpatient visits - 30 - 45 years, Female(MS_OPD_NumOV.1. 10):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_10' THEN IF p_record_x.gender = 'female' THEN MS_OPD_NumOV_1_10:= 1;


END IF;


-- Number of outpatient visits - 46 - 65 years, Male(MS_OPD_NumOV.1. 11):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_11' THEN IF p_record_x.gender = 'male' THEN MS_OPD_NumOV_1_11:= 1;


END IF;


-- Number of outpatient visits - 46 - 65 years, Female(MS_OPD_NumOV.1. 12):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_12' THEN IF p_record_x.gender = 'female' THEN MS_OPD_NumOV_1_12:= 1;


END IF;


-- Number of outpatient visits - >= 66 Years, Male(MS_OPD_NumOV.1. 13):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_13' THEN IF p_record_x.gender = 'male' THEN MS_OPD_NumOV_1_13:= 1;


END IF;


-- Number of outpatient visits - >= 66 Years, Female(MS_OPD_NumOV.1. 14):Medical
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_1_14' THEN IF p_record_x.gender = 'female' THEN MS_OPD_NumOV_1_14:= 1;


END IF;


-- Number of outpatient visits - Number of health insurance beneficiaries that visited HF in the reporting period(MS_OPD_NumOV.2):Medical 
ELSIF p_indic_name = 'indic_MS_OPD_NumOV_2' THEN IF p_record_x.cbhi_member = 'yes' THEN MS_OPD_NumOV_2:= 1;


END IF;


-- Tracer drug availability - Tracer drug availability(HCSM_EDA_TDR): 
ELSIF p_indic_name = 'indic_HCSM_EDA_TDR' THEN IF p_record_x.property_name = 'xproperty_name' THEN HCSM_EDA_TDR:= 1;


END IF;


-- Tracer drug availability - HP_Amoxicillin dispersible tablet(PMS_AVAIL.1.26.):Medical 
ELSIF p_indic_name = 'indic_PMS_AVAIL_1_26_' THEN IF p_record_x.balance = '0' THEN PMS_AVAIL_1_26_:= 1;


END IF;


-- Tracer drug availability - HP_Oral Rehydration Salts(PMS_AVAIL.1.27.):Medical 
ELSIF p_indic_name = 'indic_PMS_AVAIL_1_27_' THEN IF p_record_x.medication_name = 'Oral''Rehydration''Salt''20.7g''for''1''Littre''Preparation''Powder(ORS)'
AND p_record_x.balance = '0' THEN PMS_AVAIL_1_27_:= 1;


END IF;


-- Tracer drug availability - HP_Zinc dispersible tablet(PMS_AVAIL.1.28.):Medical 
ELSIF p_indic_name = 'indic_PMS_AVAIL_1_28_' THEN IF p_record_x.medication_name = 'Zinc''Acetate''20mg''Tablet''(Scored''&''Dispersable)'
AND p_record_x.balance = '0' THEN PMS_AVAIL_1_28_:= 1;


END IF;


-- Tracer drug availability - HP_Gentamycin Sulphate injection(PMS_AVAIL.1.29.):Medical 
ELSIF p_indic_name = 'indic_PMS_AVAIL_1_29_' THEN IF p_record_x.medication_name = 'Gentamicin''40mg/ml''in''2ml''Ampoule''Injection'
AND p_record_x.balance = '0' THEN PMS_AVAIL_1_29_:= 1;


END IF;


-- Tracer drug availability - HP_Medroxyprogesterone Injection(PMS_AVAIL.1.30.):Medical 
ELSIF p_indic_name = 'indic_PMS_AVAIL_1_30_' THEN IF p_record_x.medication_name = 'Medroxyprogesterone''Acetate''150mg/ml''in''1ml''vial''Injection''(Aqueous''suspension)(depoprovera)'
AND p_record_x.balance = '0' THEN PMS_AVAIL_1_30_:= 1;


END IF;


-- Tracer drug availability - HP_Arthmeter + Lumfanthrine (Coartem) tablet (any packing)(PMS_AVAIL.1.31.):Medical 
ELSIF p_indic_name = 'indic_PMS_AVAIL_1_31_' THEN IF p_record_x.balance = '0' THEN PMS_AVAIL_1_31_:= 1;


END IF;


-- Tracer drug availability - HP_Ferrous sulphate + folic acid(PMS_AVAIL.1.32.):Medical 
ELSIF p_indic_name = 'indic_PMS_AVAIL_1_32_' THEN IF p_record_x.medication_name = 'Ferrous''Sulphate''+''Folic''Acid''(200mg''+''0.4mg)''Tablet'
AND p_record_x.balance = '0' THEN PMS_AVAIL_1_32_:= 1;


END IF;


-- Tracer drug availability - HP_Albendazole tablet/suspension(PMS_AVAIL.1.33.):Medical 
ELSIF p_indic_name = 'indic_PMS_AVAIL_1_33_' THEN IF p_record_x.medication_name = 'Albendazole''400mg''Tablet'
AND p_record_x.balance = '0' THEN PMS_AVAIL_1_33_:= 1;


END IF;


-- CHIM_ECND.2.1:Child Health:Early neonatal death at home
ELSIF p_indic_name = 'indic_CHIM_ECND_2_1' THEN IF (
  p_record_x.closed = 'True'
  and EXTRACT(
    day
    FROM
      AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
  ) <= 7
  AND COALESCE(p_record_x.pregnancy_pp_case_id, '') <> ''
  and p_record_x.cause_of_death = 'neonatal_death_on_the_way_to_hf'
)
OR (
  p_record_x.closed = 'True'
  and EXTRACT(
    day
    FROM
      AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
  ) <= 7
  AND COALESCE(p_record_x.pregnancy_pp_case_id, '') <> ''
  and p_record_x.close_reason = 'died'
  and p_record_x.death_early_neonatal = 'yes'
  and p_record_x.death_location = 'community'
) THEN CHIM_ECND_2_1:= 1;


END IF;


-- CHIM_ECND.2.2:Child Health:Early neonatal death at HP
ELSIF p_indic_name = 'indic_CHIM_ECND_2_2' THEN IF (
  p_record_x.closed = 'True'
  and EXTRACT(
    day
    FROM
      AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
  ) <= 7
  AND COALESCE(p_record_x.pregnancy_pp_case_id, '') <> ''
  and p_record_x.cause_of_death = 'neonatal_death_at_hp'
)
OR (
  p_record_x.closed = 'True'
  and EXTRACT(
    day
    FROM
      AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
  ) <= 7
  AND COALESCE(p_record_x.pregnancy_pp_case_id, '') <> ''
  and p_record_x.close_reason = 'died'
  and p_record_x.death_early_neonatal = 'yes'
  and p_record_x.death_neonatal = 'yes'
  and p_record_x.death_location = 'health_post'
) THEN CHIM_ECND_2_2:= 1;


END IF;


-- CHIM_ECND.2.3:Child Health:Early neonatal death on the way to health facility
ELSIF p_indic_name = 'indic_CHIM_ECND_2_3' THEN IF (
  p_record_x.closed = 'True'
  and EXTRACT(
    day
    FROM
      AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
  ) <= 7
  AND COALESCE(p_record_x.pregnancy_pp_case_id, '') <> ''
  and p_record_x.cause_of_death = 'neonatal_death_on_the_way_to_hf'
)
OR (
  p_record_x.closed = 'True'
  and EXTRACT(
    day
    FROM
      AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
  ) <= 7
  AND COALESCE(p_record_x.pregnancy_pp_case_id, '') <> ''
  and p_record_x.close_reason = 'died'
  and p_record_x.death_early_neonatal = 'yes'
  and p_record_x.death_neonatal = 'yes'
  and (
    p_record_x.death_location = 'en_route_hc'
    or p_record_x.death_location = 'en_route_hp'
  )
) THEN CHIM_ECND_2_3:= 1;


END IF;


-- CHIM_ECND.1.1:Child Health:Number of neonatal deaths in the first 24 hrs of life/community/
ELSIF p_indic_name = 'indic_CHIM_ECND_1_1' THEN IF (
  p_record_x.closed = 'True'
  and EXTRACT(
    day
    FROM
      AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
  ) <= 7
  AND COALESCE(p_record_x.pregnancy_pp_case_id, '') <> ''
  and p_record_x.cause_of_death = 'neonatal_death_on_the_way_to_hf'
)
OR (
  p_record_x.closed = 'True'
  and EXTRACT(
    day
    FROM
      AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
  ) <= 7
  AND COALESCE(p_record_x.pregnancy_pp_case_id, '') <> ''
  and p_record_x.close_reason = 'died'
  and p_record_x.death_early_neonatal = 'yes'
  and p_record_x.death_neonatal = 'yes'
  and (
    p_record_x.death_location = 'en_route_hc'
    or p_record_x.death_location = 'en_route_hp'
  )
) THEN CHIM_ECND_1_1:= 1;


END IF;


-- CHIM_ECND.1.2:Child Health:Number of neonatal deaths between 1 -7 days of life/community
ELSIF p_indic_name = 'indic_CHIM_ECND_1_2' THEN IF (
  p_record_x.closed = 'True'
  and (
    EXTRACT(
      day
      FROM
        AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
    ) >= 1
    and EXTRACT(
      day
      FROM
        AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
    ) <= 7
  )
  AND COALESCE(p_record_x.pregnancy_pp_case_id, '') <> ''
  and (
    p_record_x.cause_of_death = 'neonatal_death_on_the_way_to_hf'
    or p_record_x.cause_of_death = 'neonatal_death_at_home'
    or p_record_x.cause_of_death = 'neonatal_death_at_hp'
    or p_record_x.cause_of_death = 'neonatal_death_institutional'
  )
)
OR (
  p_record_x.closed = 'True'
  and (
    EXTRACT(
      day
      FROM
        AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
    ) >= 1
    and EXTRACT(
      day
      FROM
        AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
    ) <= 7
  )
  AND COALESCE(p_record_x.pregnancy_pp_case_id, '') <> ''
  and p_record_x.close_reason = 'died'
  and p_record_x.death_early_neonatal = 'yes'
  and p_record_x.death_neonatal = 'yes'
) THEN CHIM_ECND_1_2:= 1;


END IF;


-- CHIM_ECND.1:Child Health:Early neonatal death at community dis aggregated by time of death
ELSIF p_indic_name = 'indic_CHIM_ECND_1' THEN IF (
  (
    p_record_x.closed = 'True'
    and EXTRACT(
      day
      FROM
        AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
    ) <= 1
    AND COALESCE(p_record_x.pregnancy_pp_case_id, '') <> ''
    and (
      p_record_x.cause_of_death = 'neonatal_death_on_the_way_to_hf'
      or p_record_x.cause_of_death = 'neonatal_death_at_home'
      or p_record_x.cause_of_death = 'neonatal_death_at_hp'
      or p_record_x.cause_of_death = 'neonatal_death_institutional'
    )
  )
  OR (
    p_record_x.closed = 'True'
    and EXTRACT(
      day
      FROM
        AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
    ) <= 1
    AND COALESCE(p_record_x.pregnancy_pp_case_id, '') <> ''
    and p_record_x.close_reason = 'died'
    and p_record_x.death_early_neonatal = 'yes'
    and p_record_x.death_neonatal = 'yes'
  )
)
OR (
  (
    p_record_x.closed = 'True'
    and (
      EXTRACT(
        day
        FROM
          AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
      ) >= 1
      AND EXTRACT(
        day
        FROM
          AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
      ) <= 7
    )
    AND COALESCE(p_record_x.pregnancy_pp_case_id, '') <> ''
    and (
      p_record_x.cause_of_death = 'neonatal_death_on_the_way_to_hf'
      or p_record_x.cause_of_death = 'neonatal_death_at_home'
      or p_record_x.cause_of_death = 'neonatal_death_at_hp'
      or p_record_x.cause_of_death = 'neonatal_death_institutional'
    )
  )
  or (
    p_record_x.closed = 'True'
    and (
      EXTRACT(
        day
        FROM
          AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
      ) >= 1
      AND EXTRACT(
        day
        FROM
          AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
      ) <= 7
    )
    AND COALESCE(p_record_x.pregnancy_pp_case_id, '') <> ''
    and p_record_x.close_reason = 'died'
    and p_record_x.death_early_neonatal = 'yes'
    and p_record_x.death_neonatal = 'yes'
  )
)
or (
  p_record_x.closed = 'True'
  and (
    EXTRACT(
      day
      FROM
        AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
    ) >= 1
    and EXTRACT(
      day
      FROM
        AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
    ) <= 7
  )
  AND COALESCE(p_record_x.pregnancy_pp_case_id, '') <> ''
  and (
    p_record_x.cause_of_death = 'neonatal_death_on_the_way_to_hf'
    or p_record_x.cause_of_death = 'neonatal_death_at_home'
    or p_record_x.cause_of_death = 'neonatal_death_at_hp'
    or p_record_x.cause_of_death = 'neonatal_death_institutional'
  )
)
OR (
  p_record_x.closed = 'True'
  and (
    EXTRACT(
      day
      FROM
        AGE(p_record_x.dob:: DATE, p_record_x.dob:: DATE)
    ) >= 1
    and EXTRACT(
      day
      FROM
        AGE(p_record_x.dob:: DATE, p_record_x.dob:: DATE)
    ) <= 7
  )
  AND COALESCE(p_record_x.pregnancy_pp_case_id, '') <> ''
  and p_record_x.close_reason = 'died'
  and p_record_x.death_early_neonatal = 'yes'
  and p_record_x.death_neonatal = 'yes'
) THEN CHIM_ECND_1:= 1;


END IF;


ELSIF p_indic_name = 'indic_children_who_treated_for_diarrhea_by_ors_and_zinc' THEN IF (
  p_record_x.current_classification like '%some_dehydration%'
  OR p_record_x.current_classification like '%no_dehydration%'
)
AND (
  p_record_x.all_med_names like '%ors%'
  or p_record_x.all_med_names like '%ors_planb%'
)
AND p_record_x.all_med_names like '%zink%' THEN children_who_treated_for_diarrhea_by_ors_and_zinc:= 1;


END IF;


-- CHIM_DhRX.2:Child Health:Treated by ORS only
ELSIF p_indic_name = 'indic_children_who_treated_for_diarrhea_by_ors' THEN IF (
  p_record_x.current_classification like '%severe_dehydration%'
  OR p_record_x.current_classification like '%some_dehydration%'
  or p_record_x.current_classification like '%no_dehydration%'
)
AND (
  p_record_x.all_med_names like '%ors%'
  or p_record_x.all_med_names like '%ors_planb%'
) THEN children_who_treated_for_diarrhea_by_ors:= 1;


END IF;



-- Number of Live births who receive a HepB-Birth dose(BD) - Number of children under one year of age who have received first dose of polio vaccine(EPI_OPV1.1.):EPI 
ELSIF p_indic_name = 'indic_EPI_OPV1_1_' THEN

    IF 
p_record_x.opv0_date <= p_record_x.dob + INTERVAL '1 year'

    THEN   

        EPI_OPV1_1_ := 1;
    END IF;

 

-- Number of Live births who receive a HepB-Birth dose(BD) - Number of children under one year of age who have received third dose of Polio vaccine(EPI_OPV3.1.):EPI 
ELSIF p_indic_name = 'indic_EPI_OPV3_1_' THEN

    IF 
p_record_x.opv3_date <= p_record_x.dob + INTERVAL '1 year'
    
    THEN   

        EPI_OPV3_1_ := 1;
    END IF;

 

-- BCG Vaccine wastage rate - BCG doses given (all ages)(EPI_VWR_BCG_giv.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_BCG_giv_' THEN  EPI_VWR_BCG_giv_ := 1;
 
-- (MULTIPLE REPORT DATES)Penta Vaccine wastage rate - Pentavalent (DPT-HepB-Hib) doses given (all ages)(EPI_VWR_Penta_giv.):EPI 
ELSIF p_indic_name = 'indic_EPI_VWR_Penta_giv_' THEN

      

        EPI_VWR_Penta_giv_ := 1;


        --NUTRITION


-- Number of live-born babies with birth weight less than 2500 gm (NTR_LBW_1.)
ELSIF p_indic_name = 'indic_NTR_LBW_1_' THEN  IF
 p_record_x.live_birth_alive = 'yes'
    
        AND COALESCE(p_record_x.outcome_location, '') <> ''and 
         ( COALESCE((p_record_x.birth_weight):: INTEGER, 0) < 2500 
        or COALESCE((p_record_x.weight):: INTEGER, 0) < 2500 )
 
 THEN

    NTR_LBW_1_ := 1;
END IF;

-- Total number of live births weighed (NTR_LBW_2.)
ELSIF p_indic_name = 'indic_NTR_LBW_2_' THEN  IF
 p_record_x.live_birth_alive = 'yes'
    
        AND COALESCE(p_record_x.outcome_location, '') <> ''
    and    ( COALESCE((p_record_x.birth_weight):: INTEGER, 0) > 0 
        or COALESCE((p_record_x.weight):: INTEGER, 0) > 0 )
 THEN

    NTR_LBW_2_ := 1;
END IF;

-- Number of children 0 - 5 months weighted during GMP session- (NTR_GMP. 1)
ELSIF p_indic_name = 'indic_NTR_GMP_1' THEN  IF 
    (
    DATE_PART('year', AGE(p_record_x.gmp_newest_date::DATE, p_record_x.dob::DATE)) * 12
    + DATE_PART('month', AGE(p_record_x.gmp_newest_date::DATE, p_record_x.dob::DATE))
  ) <=5
    AND COALESCE(p_record_x.gmp_newest_weight, '') <> ''


    
 THEN

    NTR_GMP_1 := 1;
END IF;

-- Number of children 6 - 23 months weighted during GMP session- (NTR_GMP. 2)
ELSIF p_indic_name = 'indic_NTR_GMP_2' THEN  IF
   (
    DATE_PART('year', AGE(p_record_x.gmp_newest_date::DATE, p_record_x.dob::DATE)) * 12
    + DATE_PART('month', AGE(p_record_x.gmp_newest_date::DATE, p_record_x.dob::DATE))
  ) BETWEEN 6 AND 23
    AND COALESCE(p_record_x.gmp_newest_weight, '') <> ''
    
 THEN

    NTR_GMP_2 := 1;
END IF;

-- Number of children 0 - 5 months weighted during GMP session- (NTR_GMP_MM. 1)
ELSIF p_indic_name = 'indic_NTR_GMP_MM_1' THEN  IF
 p_record_x.gmp_newest_weight_status = 'moderately_underweight' and
     (
    DATE_PART('year', AGE(p_record_x.gmp_newest_weight_status_date::DATE, p_record_x.dob::DATE)) * 12
    + DATE_PART('month', AGE(p_record_x.gmp_newest_weight_status_date::DATE, p_record_x.dob::DATE))
  ) <=5
        AND COALESCE(p_record_x.gmp_newest_weight , '') <> ''  
         
    
 THEN

    NTR_GMP_MM_1 := 1;
END IF;

-- Number of children 6 - 23 months weighted during GMP session- (NTR_GMP_MM. 2)
ELSIF p_indic_name = 'indic_NTR_GMP_MM_2' THEN  IF
p_record_x.gmp_newest_weight_status = 'moderately_underweight' and
     (
    DATE_PART('year', AGE(p_record_x.gmp_newest_weight_status_date::DATE, p_record_x.dob::DATE)) * 12
    + DATE_PART('month', AGE(p_record_x.gmp_newest_weight_status_date::DATE, p_record_x.dob::DATE))
  ) BETWEEN 6 AND 23
        AND COALESCE(p_record_x.gmp_newest_weight , '') <> ''  
         
    
    
 THEN

    NTR_GMP_MM_2 := 1;
END IF;

-- Number of weights recorded with severe malnutrition by age ( Z score below -3): Severely underweight- 0 - 5 months(GMP_SM. 1)
ELSIF p_indic_name = 'indic_GMP_SM_1' THEN  IF
 p_record_x.gmp_newest_weight_status = 'severely_underweight' and
     (
    DATE_PART('year', AGE(p_record_x.gmp_newest_weight_status_date::DATE, p_record_x.dob::DATE)) * 12
    + DATE_PART('month', AGE(p_record_x.gmp_newest_weight_status_date::DATE, p_record_x.dob::DATE))
  ) <=5
        AND COALESCE(p_record_x.gmp_newest_weight , '') <> ''
 THEN

    GMP_SM_1 := 1;
END IF;

-- Number of weights recorded with severe malnutrition by age ( Z score below -3): Severely underweight- 6 - 23 months(GMP_SM. 2)
ELSIF p_indic_name = 'indic_GMP_SM_2' THEN  IF
p_record_x.gmp_newest_weight_status = 'severely_underweight' and
     (
    DATE_PART('year', AGE(p_record_x.gmp_newest_weight_status_date::DATE, p_record_x.dob::DATE)) * 12
    + DATE_PART('month', AGE(p_record_x.gmp_newest_weight_status_date::DATE, p_record_x.dob::DATE))
  ) BETWEEN 6 AND 23
        AND COALESCE(p_record_x.gmp_newest_weight , '') <> ''  
         
    
    
 THEN

    GMP_SM_2 := 1;
END IF;

-- Children aged 6 to 11 months who received vitamin A supplementation- (NUT_VITA.1.1)
ELSIF p_indic_name = 'indic_NUT_VITA_1_1' THEN IF 

 
     (
    DATE_PART('year', AGE(p_record_x.Vitamin_A_first_dose_date::DATE, p_record_x.dob::DATE)) * 12
    + DATE_PART('month', AGE(p_record_x.Vitamin_A_first_dose_date::DATE, p_record_x.dob::DATE))
  ) BETWEEN 6 AND 11
        AND COALESCE(p_record_x.Vitamin_A_first_dose_date , '') <> '' 
        AND COALESCE(p_record_x.vitaminA_first_dose , '') <> '' 
    
 THEN

    NUT_VITA_1_1 := 1;
END IF;

-- Children Age: 12 to 59 Months who received vitamin A supplementation- (NUT_VITA.1.2)
ELSIF p_indic_name = 'indic_NUT_VITA_1_2' THEN  IF

 
     (
    DATE_PART('year', AGE(p_record_x.Vitamin_A_second_dose_date::DATE, p_record_x.dob::DATE)) * 12
    + DATE_PART('month', AGE(p_record_x.Vitamin_A_second_dose_date::DATE, p_record_x.dob::DATE))
  ) BETWEEN 12 AND 59
        AND COALESCE(p_record_x.Vitamin_A_second_dose_date , '') <> '' 
        AND COALESCE(p_record_x.vitaminA_second_dose , '') <> '' 
    
 THEN

    NUT_VITA_1_2 := 1;
END IF;

-- Total number of children aged 6-59 months who received Vitamin A supplementation dis aggregated by dose- :First dose(NUT_VITA.2.1)
ELSIF p_indic_name = 'indic_NUT_VITA_2_1' THEN IF 
 
          COALESCE(p_record_x.Vitamin_A_first_dose_date , '') <> '' 
        AND COALESCE(p_record_x.vitaminA_first_dose , '') <> '' 
    
 THEN

    NUT_VITA_2_1 := 1;
END IF;

-- Total number of children aged 6-59 months who received Vitamin A supplementation dis aggregated by dose- :Second dose(NUT_VITA.2.2)
ELSIF p_indic_name = 'indic_NUT_VITA_2_2' THEN IF  
     
          COALESCE(p_record_x.Vitamin_A_second_dose_date , '') <> '' 
        AND COALESCE(p_record_x.vitaminA_second_dose , '') <> '' 
    
    
 THEN

    NUT_VITA_2_2 := 1;
END IF;

-- Children 24-59 month who received deworming- :First dose(NUT_DeW.1.1)
ELSIF p_indic_name = 'indic_NUT_DeW_1_1' THEN IF  
    
          COALESCE(p_record_x.deworming_first_dose_date, '') <> ''
    
        AND COALESCE(p_record_x.deworming_first_dose, '') <> ''
     
           (
    DATE_PART('year', AGE(p_record_x.deworming_first_dose_date::DATE, p_record_x.dob::DATE)) * 12
    + DATE_PART('month', AGE(p_record_x.deworming_first_dose_date::DATE, p_record_x.dob::DATE))
  ) BETWEEN 24 AND 59
    
 THEN

    NUT_DeW_1_1 := 1;
END IF;

-- Children 24-59 month who received deworming- :Second dose(NUT_DeW.1.2)
ELSIF p_indic_name = 'indic_NUT_DeW_1_2' THEN IF 

    
        AND COALESCE(p_record_x.deworming_second_dose_date, '') <> ''
    
        AND COALESCE(p_record_x.deworming_second_dose, '') <> ''
     
                   (
    DATE_PART('year', AGE(p_record_x.deworming_second_dose_date::DATE, p_record_x.dob::DATE)) * 12
    + DATE_PART('month', AGE(p_record_x.deworming_second_dose_date::DATE, p_record_x.dob::DATE))
  ) BETWEEN 24 AND 59
    
 THEN

    NUT_DeW_1_2 := 1;
END IF;

-- Number of pregnant women De-wormed(NUT_DeW.2)
ELSIF p_indic_name = 'indic_NUT_DeW_2' THEN  IF

 p_record_x.is_pregnant = 'yes'
    
        AND p_record_x.child_or_plw = 'plw'
    
        AND p_record_x.start_nutrition_status = 'mam' and (p_record_x.give_deworming = 'yes' or p_record_x.deworming_received = 'yes')

and 


 THEN

    NUT_DeW_2 := 1;
END IF;

-- 10-14 yr Pregnant women received IFA at least 90 plus- (NUT_IFA.1.1)
ELSIF p_indic_name = 'indic_NUT_IFA_1_1' THEN  IF
 p_record_x.age_years >= 10
    
        AND p_record_x.age_years <= 14
    
        AND p_record_x.age_years >= 90
    
 THEN

    NUT_IFA_1_1 := 1;
END IF;

--  15-19 yr Pregnant women received IFA at least 90 plus- (NUT_IFA.1.2)
ELSIF p_indic_name = 'indic_NUT_IFA_1_2' THEN  IF
 p_record_x.age_years >= 15
    
        AND p_record_x.age_years <= 19
    
        AND p_record_x.age_years >= 90
    
 THEN

    NUT_IFA_1_2 := 1;
END IF;

--  Greater than 20 yr Pregnant women received IFA at least 90 plus- (NUT_IFA.1.3)
ELSIF p_indic_name = 'indic_NUT_IFA_1_3' THEN  IF
 p_record_x.age_years >= 20
    
        AND p_record_x.age_years >= 90
    
 THEN

    NUT_IFA_1_3 := 1;
END IF;

-- Total number of PLW screened for acute malnutrition(PLW_S4AM)
ELSIF p_indic_name = 'indic_PLW_S4AM' THEN  IF
 p_record_x.child_or_plw = 'plw'
    
 THEN

    PLW_S4AM := 1;
END IF;

-- Total number of PLW screened for acute malnutrition where MUAC is less than 23 cm(PLW_S4AM. 1)
ELSIF p_indic_name = 'indic_PLW_S4AM_1' THEN  IF
 p_record_x.child_or_plw = 'plw'
    
        AND p_record_x.start_plw_muac < 23
    
 THEN

    PLW_S4AM_1 := 1;
END IF;

-- Total number of PLW screened for acute malnutrition where MUAC greater than or equal to 23 cm(PLW_S4AM. 2)
ELSIF p_indic_name = 'indic_PLW_S4AM_2' THEN  IF
 p_record_x.child_or_plw = 'plw'
    
        AND p_record_x.start_plw_muac >= 23
    
 THEN

    PLW_S4AM_2 := 1;
END IF;

-- Total number of Pregnant PLW screened for acute malnutrition By maternal status: (NUT_PreSMN.2.1)
ELSIF p_indic_name = 'indic_NUT_PreSMN_2_1' THEN  IF
 p_record_x.is_pregnant = 'yes'
    
        AND p_record_x.child_or_plw = 'plw'
    
 THEN

    NUT_PreSMN_2_1 := 1;
END IF;

-- Total number of lactating PLW screened for acute malnutrition By maternal status:(NUT_PreSMN.2.2)
ELSIF p_indic_name = 'indic_NUT_PreSMN_2_2' THEN  IF
 p_record_x.ppp_last_outcome_type = 'live_birth'
    
        AND p_record_x.child_or_plw = 'plw'
    
 THEN

    NUT_PreSMN_2_2 := 1;
END IF;

-- Total number of children 0 - 5 months screened for acute malnutrition- (NUT_U5SMN.1.1)
ELSIF p_indic_name = 'indic_NUT_U5SMN_1_1' THEN  IF
 p_record_x.malnutrition_age_months < 5
    
 THEN

    NUT_U5SMN_1_1 := 1;
END IF;

-- Total number of children <5yrs screened for acute malnutrition- 6 - 23 months(NUT_U5SMN.1.2)
ELSIF p_indic_name = 'indic_NUT_U5SMN_1_2' THEN  IF
 p_record_x.malnutrition_age_months <= 23
    
        AND p_record_x.malnutrition_age_months >= 6
    
 THEN

    NUT_U5SMN_1_2 := 1;
END IF;

-- Total number of children 24 - 59 months screened for acute malnutrition- (NUT_U5SMN.1.3)
ELSIF p_indic_name = 'indic_NUT_U5SMN_1_3' THEN  IF
 p_record_x.malnutrition_age_months < 60
    
        AND p_record_x.malnutrition_age_months >= 24
    
 THEN

    NUT_U5SMN_1_3 := 1;
END IF;

-- Number of children 0 - 5 months year screened and have moderate acute malnutrition- (NUT_U5SMN.MAM.1.1)
ELSIF p_indic_name = 'indic_NUT_U5SMN_MAM_1_1' THEN  IF
 p_record_x.start_nutrition_status = 'yellow'
    
        AND p_record_x.age_months <= 5
    
 THEN

    NUT_U5SMN_MAM_1_1 := 1;
END IF;

-- Number of children 6 - 23 months screened and have moderate acute malnutrition- (NUT_U5SMN.MAM.1.2)
ELSIF p_indic_name = 'indic_NUT_U5SMN_MAM_1_2' THEN  IF
 p_record_x.start_nutrition_status = 'yellow'
    
        AND p_record_x.age_months >= 6
    
        AND p_record_x.age_months <= 23
    
 THEN

    NUT_U5SMN_MAM_1_2 := 1;
END IF;

-- Number of children <5 year screened and have moderate acute malnutrition- 24 - 59 months(NUT_U5SMN.MAM.1.3)
ELSIF p_indic_name = 'indic_NUT_U5SMN_MAM_1_3' THEN  IF
 p_record_x.start_nutrition_status = 'yellow'
    
        AND p_record_x.age_months >= 24
    
        AND p_record_x.age_months < 60
    
 THEN

    NUT_U5SMN_MAM_1_3 := 1;
END IF;

-- Number of children 0 - 5 months screened and have severe acute malnutrition- (NUT_U5SMN.SAM.1.1)
ELSIF p_indic_name = 'indic_NUT_U5SMN_SAM_1_1' THEN  IF
 p_record_x.start_nutrition_status = 'red'
    
        AND p_record_x.age_months <= 5
    
 THEN

    NUT_U5SMN_SAM_1_1 := 1;
END IF;

-- Number of children 6 - 23 months screened and have severe acute malnutrition- (NUT_U5SMN.SAM.1.2)
ELSIF p_indic_name = 'indic_NUT_U5SMN_SAM_1_2' THEN  IF
 p_record_x.start_nutrition_status = 'red'
    
        AND p_record_x.age_months >= 6
    
        AND p_record_x.age_months <= 23
    
 THEN

    NUT_U5SMN_SAM_1_2 := 1;
END IF;

-- Number of children 24 - 59 months year screened and have severe acute malnutrition- (NUT_U5SMN.SAM.1.3)
ELSIF p_indic_name = 'indic_NUT_U5SMN_SAM_1_3' THEN  IF
 p_record_x.start_nutrition_status = 'red'
    
        AND p_record_x.age_months >= 24
    
        AND p_record_x.age_months < 60
    
 THEN

    NUT_U5SMN_SAM_1_3 := 1;
END IF;

-- Total SAM at the beginning of the month for Age: 0 to 5 Months(NUT_TX_U5MN_SAM_Beging_SC_1.1)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_Beging_SC_1_1' THEN  IF
 p_record_x.closed = False
    
        AND p_record_x.admit_in_sc = 'yes'
    
        AND p_record_x.age_months <= 5
    
 THEN

    NUT_TX_U5MN_SAM_Beging_SC_1_1 := 1;
END IF;

-- Total SAM at the beginning of the month for Age: 6 - 23 Months(NUT_TX_U5MN_SAM_Beging_SC_1.2)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_Beging_SC_1_2' THEN  IF
 p_record_x.closed = False
    
        AND p_record_x.admit_in_sc = 'yes'
    
        AND p_record_x.age_months <= 23
    
        AND p_record_x.age_months >= 6
    
 THEN

    NUT_TX_U5MN_SAM_Beging_SC_1_2 := 1;
END IF;

-- Total SAM at the beginning of the month for Age: 24 - 59 Months(NUT_TX_U5MN_SAM_Beging_SC_1.3)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_Beging_SC_1_3' THEN  IF
 p_record_x.closed = False
    
        AND p_record_x.admit_in_sc = 'yes'
    
        AND p_record_x.age_months <= 59
    
        AND p_record_x.age_months >= 24
    
 THEN

    NUT_TX_U5MN_SAM_Beging_SC_1_3 := 1;
END IF;

-- Total number of children Age: 0 to 5 Months with SAM admitted to SC during the reporting period(new and re-admision)- (NUT_TX_U5MN_SAM__Adt_SC_2.1)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM__Adt_SC_2_1' THEN  IF
 p_record_x.admit_in_sc = 'yes'
    
        AND p_record_x.age_months <= 5
    
 THEN

    NUT_TX_U5MN_SAM__Adt_SC_2_1 := 1;
END IF;

-- Total number of children Age: 6 - 23 Months with SAM admitted to SC during the reporting period(new and re-admision)- (NUT_TX_U5MN_SAM__Adt_SC_2.2)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM__Adt_SC_2_2' THEN  IF
 p_record_x.admit_in_sc = 'yes'
    
        AND p_record_x.age_months <= 23
    
        AND p_record_x.age_months >= 6
    
 THEN

    NUT_TX_U5MN_SAM__Adt_SC_2_2 := 1;
END IF;

-- Total number of children Age: 24 - 59 Months with SAM admitted to SC during the reporting period(new and re-admision)-(NUT_TX_U5MN_SAM__Adt_SC_2.3)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM__Adt_SC_2_3' THEN  IF
 p_record_x.admit_in_sc = 'yes'
    
        AND p_record_x.age_months <= 59
    
        AND p_record_x.age_months >= 24
    
 THEN

    NUT_TX_U5MN_SAM__Adt_SC_2_3 := 1;
END IF;

-- Number of children Age: 0 to 5 Months stablized- (NUT_TX_U5MN_SAM_Stab_SC_3.1)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_Stab_SC_3_1' THEN  IF
 p_record_x.newest_sc_treatment_outcome = 'stabilized'
    
        AND p_record_x.age_months <= 5
    
 THEN

    NUT_TX_U5MN_SAM_Stab_SC_3_1 := 1;
END IF;

-- Number of children Age: 6 - 23 Months stablized- (NUT_TX_U5MN_SAM_Stab_SC_3.2)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_Stab_SC_3_2' THEN  IF
 p_record_x.newest_sc_treatment_outcome = 'stabilized'
    
        AND p_record_x.age_months <= 23
    
        AND p_record_x.age_months >= 6
    
 THEN

    NUT_TX_U5MN_SAM_Stab_SC_3_2 := 1;
END IF;

-- Number of children Age: 24 - 59 Months stablized- (NUT_TX_U5MN_SAM_Stab_SC_3.3)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_Stab_SC_3_3' THEN  IF
 p_record_x.newest_sc_treatment_outcome = 'stabilized'
    
        AND p_record_x.age_months < 60
    
        AND p_record_x.age_months >= 24
    
 THEN

    NUT_TX_U5MN_SAM_Stab_SC_3_3 := 1;
END IF;

-- Number of children Age: 0 to 5 Months cured(NUT_TX_U5MN_SAM_Cur_SC_ 4.1)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_Cur_SC_4_1' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.newest_sc_treatment_outcome = 'cured'
    
        AND p_record_x.age_months <= 5
    
 THEN

    NUT_TX_U5MN_SAM_Cur_SC_4_1 := 1;
END IF;

-- Number of children Age: 6 - 23 Months cured (NUT_TX_U5MN_SAM_Cur_SC_ 4.2)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_Cur_SC_4_2' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.newest_sc_treatment_outcome = 'cured'
    
        AND p_record_x.age_months <= 23
    
        AND p_record_x.age_months >= 6
    
 THEN

    NUT_TX_U5MN_SAM_Cur_SC_4_2 := 1;
END IF;

-- Number of children Age: 24 - 59 Months cured (NUT_TX_U5MN_SAM_Cur_SC_ 4.3)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_Cur_SC_4_3' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.newest_sc_treatment_outcome = 'cured'
    
        AND p_record_x.age_months < 60
    
        AND p_record_x.age_months >= 24
    
 THEN

    NUT_TX_U5MN_SAM_Cur_SC_4_3 := 1;
END IF;

-- Number of children Age: 0 to 5 Months died- (NUT_TX_U5MN_SAM_died_SC_5.1)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_died_SC_5_1' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.newest_sc_treatment_outcome = 'dead'
    
        AND p_record_x.age_months <= 5
    
 THEN

    NUT_TX_U5MN_SAM_died_SC_5_1 := 1;
END IF;

-- Number of children Age: 6 - 23 Months died- (NUT_TX_U5MN_SAM_died_SC_5.2)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_died_SC_5_2' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.newest_sc_treatment_outcome = 'dead'
    
        AND p_record_x.age_months <= 23
    
        AND p_record_x.age_months >= 6
    
 THEN

    NUT_TX_U5MN_SAM_died_SC_5_2 := 1;
END IF;

-- Number of children Age: 24 - 59 Months died- (NUT_TX_U5MN_SAM_died_SC_5.3)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_died_SC_5_3' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.newest_sc_treatment_outcome = 'dead'
    
        AND p_record_x.age_months < 60
    
        AND p_record_x.age_months >= 24
    
 THEN

    NUT_TX_U5MN_SAM_died_SC_5_3 := 1;
END IF;

-- Number of children Age: 0 to 5 Months transferred out- (NUT_TX_U5MN_SAM_TO_SC_6.1)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_TO_SC_6_1' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.newest_sc_treatment_outcome = 'transferred_out'
    
        AND p_record_x.age_months <= 5
    
 THEN

    NUT_TX_U5MN_SAM_TO_SC_6_1 := 1;
END IF;

-- Number of children Age: 6 - 23 Months transferred out- (NUT_TX_U5MN_SAM_TO_SC_6.2)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_TO_SC_6_2' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.newest_sc_treatment_outcome = 'transferred_out'
    
        AND p_record_x.age_months <= 23
    
        AND p_record_x.age_months >= 6
    
 THEN

    NUT_TX_U5MN_SAM_TO_SC_6_2 := 1;
END IF;

-- Number of children Age: 24 - 59 Months transferred out- (NUT_TX_U5MN_SAM_TO_SC_6.3)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_TO_SC_6_3' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.newest_sc_treatment_outcome = 'transferred_out'
    
        AND p_record_x.age_months < 60
    
        AND p_record_x.age_months >= 24
    
 THEN

    NUT_TX_U5MN_SAM_TO_SC_6_3 := 1;
END IF;

-- Number of children Age: 0 to 5 Months defaulted-(NUT_TX_U5MN_SAM_Def_SC_7.1)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_Def_SC_7_1' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.newest_sc_treatment_outcome = 'client_defaulted'
    
        AND p_record_x.age_months <= 5
    
 THEN

    NUT_TX_U5MN_SAM_Def_SC_7_1 := 1;
END IF;

-- Number of children age: 6 - 23 Months defaulted- (NUT_TX_U5MN_SAM_Def_SC_7.2)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_Def_SC_7_2' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.newest_sc_treatment_outcome = 'client_defaulted'
    
        AND p_record_x.age_months <= 23
    
        AND p_record_x.age_months >= 6
    
 THEN

    NUT_TX_U5MN_SAM_Def_SC_7_2 := 1;
END IF;

-- Number of children Age: 24 - 59 Months defaulted- (NUT_TX_U5MN_SAM_Def_SC_7.3)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_Def_SC_7_3' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.newest_sc_treatment_outcome = 'client_defaulted'
    
        AND p_record_x.age_months < 60
    
        AND p_record_x.age_months >= 24
    
 THEN

    NUT_TX_U5MN_SAM_Def_SC_7_3 := 1;
END IF;

-- Number of children age: 0 to 5 Months -non-respondent-(NUT_TX_U5MN_SAM_NR_SC_8.1)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_NR_SC_8_1' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.newest_sc_treatment_outcome = 'non_responder'
    
        AND p_record_x.age_months <= 5
    
 THEN

    NUT_TX_U5MN_SAM_NR_SC_8_1 := 1;
END IF;

-- Number of children age: 6 - 23 Months -non-respondent-(NUT_TX_U5MN_SAM_NR_SC_8.2)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_NR_SC_8_2' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.newest_sc_treatment_outcome = 'non_responder'
    
        AND p_record_x.age_months <= 23
    
        AND p_record_x.age_months >= 6
    
 THEN

    NUT_TX_U5MN_SAM_NR_SC_8_2 := 1;
END IF;

-- Number of children age: 24 - 59 Months-non-respondent- (NUT_TX_U5MN_SAM_NR_SC_8.3)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_NR_SC_8_3' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.newest_sc_treatment_outcome = 'non_responder'
    
        AND p_record_x.age_months < 60
    
        AND p_record_x.age_months >= 24
    
 THEN

    NUT_TX_U5MN_SAM_NR_SC_8_3 := 1;
END IF;

-- Number of children age: 0 to 5 Months who exit from severe acute malnutrition treatment during the reporting period-(NUT_TX_U5MN_SAM_Ext_SC_9.1)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_Ext_SC_9_1' THEN  IF
 p_record_x.closed = True
    
        AND COALESCE(p_record_x.newest_sc_treatment_outcome, '') <> ''
    
        AND p_record_x.age_months <= 5
    
 THEN

    NUT_TX_U5MN_SAM_Ext_SC_9_1 := 1;
END IF;

-- Number of children age: 6 - 23 Months who exit from severe acute malnutrition treatment during the reporting period- (NUT_TX_U5MN_SAM_Ext_SC_9.2)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_Ext_SC_9_2' THEN  IF
 p_record_x.closed = True
    
        AND COALESCE(p_record_x.newest_sc_treatment_outcome, '') <> ''
    
        AND p_record_x.age_months >= 6
    
        AND p_record_x.age_months <= 23
    
 THEN

    NUT_TX_U5MN_SAM_Ext_SC_9_2 := 1;
END IF;

-- Number of children age: 24 - 59 Months who exit from severe acute malnutrition treatment during the reporting period- (NUT_TX_U5MN_SAM_Ext_SC_9.3)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_Ext_SC_9_3' THEN  IF
 p_record_x.closed = True
    
        AND COALESCE(p_record_x.newest_sc_treatment_outcome, '') <> ''
    
        AND p_record_x.age_months >= 24
    
        AND p_record_x.age_months < 60
    
 THEN

    NUT_TX_U5MN_SAM_Ext_SC_9_3 := 1;
END IF;

-- Total SAM at the beginning of the month for OTP(NUT_TX_U5MN_SAM_OTP)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_OTP' THEN  IF
 p_record_x.closed = False
    
        AND p_record_x.start_nutrition_status = 'red'
    
        AND p_record_x.treatment_location = 'Health Post'
    
        AND p_record_x.treatment_plan = 'OTP Follow-up'
    
        AND p_record_x.age_months >= 6
    
        AND p_record_x.age_months < 60
    
 THEN

    NUT_TX_U5MN_SAM_OTP := 1;
END IF;

-- Total number of children with SAM admitted to OTP during the reporting period(NUT_TX_U5MN_SAM_Adt_OTP)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_Adt_OTP' THEN  IF
 p_record_x.start_nutrition_status = 'red'
    
        AND p_record_x.treatment_location = 'Health Post'
    
        AND p_record_x.treatment_plan = 'OTP Follow-up'
    
        AND p_record_x.age_months >= 6
    
        AND p_record_x.age_months < 60
    
 THEN

    NUT_TX_U5MN_SAM_Adt_OTP := 1;
END IF;

-- Number of children cured(NUT_TX_U5MN_SAM_Cur_OTP_1)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_Cur_OTP_1' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.discharged_categories = 'cured'
    
        AND p_record_x.start_nutrition_status = 'red'
    
        AND p_record_x.age_months >= 6
    
        AND p_record_x.age_months < 60
    
 THEN

    NUT_TX_U5MN_SAM_Cur_OTP_1 := 1;
END IF;

-- Number of children died(NUT_TX_U5MN_SAM_died_OTP_2)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_died_OTP_2' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.discharged_categories = 'died'
    
        AND p_record_x.start_nutrition_status = 'red'
    
        AND p_record_x.age_months >= 6
    
        AND p_record_x.age_months < 60
    
 THEN

    NUT_TX_U5MN_SAM_died_OTP_2 := 1;
END IF;

-- Number of children transferred out(NUT_TX_U5MN_SAM_TO_OTP_3)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_TO_OTP_3' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.discharged_categories = 'transfer_out'
    
        AND p_record_x.start_nutrition_status = 'red'
    
        AND p_record_x.age_months >= 6
    
        AND p_record_x.age_months < 60
    
 THEN

    NUT_TX_U5MN_SAM_TO_OTP_3 := 1;
END IF;

-- Number of children defaulted(NUT_TX_U5MN_SAM_Def_OTP_4)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_Def_OTP_4' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.discharged_categories = 'defaulted'
    
        AND p_record_x.start_nutrition_status = 'red'
    
        AND p_record_x.age_months >= 6
    
        AND p_record_x.age_months < 60
    
 THEN

    NUT_TX_U5MN_SAM_Def_OTP_4 := 1;
END IF;

-- Number of children -non-respondent(NUT_TX_U5MN_SAM_NR_OTP_5)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_NR_OTP_5' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.discharged_categories = 'non_responder'
    
        AND p_record_x.start_nutrition_status = 'red'
    
        AND p_record_x.age_months >= 6
    
        AND p_record_x.age_months < 60
    
 THEN

    NUT_TX_U5MN_SAM_NR_OTP_5 := 1;
END IF;

-- Number of children who exit from severe acute malnutrition treatment during the reporting period(NUT_TX_U5MN_SAM_Ext_OTP_E)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_Ext_OTP_E' THEN  IF
 COALESCE(p_record_x.discharged_categories, '') <> ''
    
        AND p_record_x.start_nutrition_status = 'red'
    
        AND p_record_x.age_months >= 6
    
        AND p_record_x.age_months < 60
    
 THEN

    NUT_TX_U5MN_SAM_Ext_OTP_E := 1;
END IF;

-- Total MAM at the beginning of the month(NUT_TX_U5MN__MAM_Beging_OTP)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN__MAM_Beging_OTP' THEN  IF
 p_record_x.start_nutrition_status = 'yellow'
    
        AND p_record_x.malnutrition_age_months >= 6
    
        AND p_record_x.malnutrition_age_months < 60
    
 THEN

    NUT_TX_U5MN__MAM_Beging_OTP := 1;
END IF;

-- Total number of children with MAM admitted to TSFP/IMAM during the reporting period(NUT_TX_U5MN_MAM_Adt_TSFP)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_MAM_Adt_TSFP' THEN  IF
 p_record_x.start_nutrition_status = 'yellow'
    
        AND p_record_x.treatment_plan = 'IMAM/TSFP Follow-up'
    
        AND p_record_x.malnutrition_age_months >= 6
    
        AND p_record_x.malnutrition_age_months < 60
    
 THEN

    NUT_TX_U5MN_MAM_Adt_TSFP := 1;
END IF;
 

-- Number of children cured(NUT_TX_U5MN_SAM_Cur_TSFP_1)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_Cur_TSFP_1' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.discharged_categories = 'cured'
    
        AND p_record_x.start_nutrition_status = 'yellow'
    
        AND p_record_x.age_months >= 6
    
        AND p_record_x.age_months < 60
    
 THEN

    NUT_TX_U5MN_SAM_Cur_TSFP_1 := 1;
END IF;

-- Number of children died(NUT_TX_U5MN_SAM_died_TSFP_2)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_died_TSFP_2' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.discharged_categories = 'died'
    
        AND p_record_x.start_nutrition_status = 'yellow'
    
        AND p_record_x.age_months >= 6
    
        AND p_record_x.age_months < 60
    
 THEN

    NUT_TX_U5MN_SAM_died_TSFP_2 := 1;
END IF;

-- Number of children transferred out(NUT_TX_U5MN_SAM_TO_TSFP_3)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_TO_TSFP_3' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.discharged_categories = 'transfer_out'
    
        AND p_record_x.start_nutrition_status = 'yellow'
    
        AND p_record_x.age_months >= 6
    
        AND p_record_x.age_months < 60
    
 THEN

    NUT_TX_U5MN_SAM_TO_TSFP_3 := 1;
END IF;

-- Number of children defaulted(NUT_TX_U5MN_SAM_Def_TSFP_4)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_Def_TSFP_4' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.discharged_categories = 'defaulted'
    
        AND p_record_x.start_nutrition_status = 'yellow'
    
        AND p_record_x.age_months >= 6
    
        AND p_record_x.age_months < 60
    
 THEN

    NUT_TX_U5MN_SAM_Def_TSFP_4 := 1;
END IF;

-- Number of children -non-respondent(NUT_TX_U5MN_SAM_NR_TSFP_5)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_NR_TSFP_5' THEN  IF
 p_record_x.discharged_categories = 'non_responder'
    
        AND p_record_x.closed = True
    
        AND p_record_x.start_nutrition_status = 'yellow'
    
        AND p_record_x.age_months >= 6
    
        AND p_record_x.age_months < 60
    
 THEN

    NUT_TX_U5MN_SAM_NR_TSFP_5 := 1;
END IF;

-- Number of children who exit from MAM treatment during the reporting period(NUT_TX_U5MN__SAM_Ext_TSFP_E)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN__SAM_Ext_TSFP_E' THEN  IF
 COALESCE(p_record_x.discharged_categories, '') <> ''
    
        AND p_record_x.closed = True
    
        AND p_record_x.start_nutrition_status = 'yellow'
    
        AND p_record_x.age_months >= 6
    
        AND p_record_x.age_months < 60
    
 THEN

    NUT_TX_U5MN__SAM_Ext_TSFP_E := 1;
END IF;

-- Total MAM at the beginning of the month(NUT_TX_U5MN_MAM_Beging_OTP)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_MAM_Beging_OTP' THEN  IF
 p_record_x.closed = False
    
        AND p_record_x.start_nutrition_status = 'mam'
    
        AND p_record_x.child_or_plw = 'plw'
    
 THEN

    NUT_TX_U5MN_MAM_Beging_OTP := 1;
END IF;

-- Total number of PLW with MAM admitted to TSFP/IMAM during the reporting period(NUT_TX_U5MN_MAM_Adt_OTP)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_MAM_Adt_OTP' THEN  IF
 p_record_x.start_nutrition_status = 'mam'
    
        AND p_record_x.child_or_plw = 'plw'
    
 THEN

    NUT_TX_U5MN_MAM_Adt_OTP := 1;
END IF;

-- Number of plw cured(NUT_TX_U5MN_Cur_TSFP_1)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_Cur_TSFP_1' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.child_or_plw = 'plw'
    
        AND p_record_x.discharge_categories = 'cured'
    
 THEN

    NUT_TX_U5MN_Cur_TSFP_1 := 1;
END IF;

-- Number of PLW died(NUT_TX_U5MN_died_TSFP_2)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_died_TSFP_2' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.child_or_plw = 'plw'
    
        AND p_record_x.discharge_categories = 'died'
    
 THEN

    NUT_TX_U5MN_died_TSFP_2 := 1;
END IF;

-- Number of PLW transferred out(NUT_TX_U5MN_TO_TSFP_3)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_TO_TSFP_3' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.child_or_plw = 'plw'
    
        AND p_record_x.discharge_categories = 'transfer_out'
    
 THEN

    NUT_TX_U5MN_TO_TSFP_3 := 1;
END IF;

-- Number of PLW defaulted(NUT_TX_U5MN_.Def_TSFP_4)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN__Def_TSFP_4' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.child_or_plw = 'plw'
    
        AND p_record_x.discharge_categories = 'defaulted'
    
 THEN

    NUT_TX_U5MN__Def_TSFP_4 := 1;
END IF;

-- Number of PLW -non-respondent(NUT_TX_U5MN_MAM_.NR_TSFP_5)
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_MAM__NR_TSFP_5' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.child_or_plw = 'plw'
    
        AND p_record_x.discharge_categories = 'non_responder'
    
 THEN

    NUT_TX_U5MN_MAM__NR_TSFP_5 := 1;
END IF;

-- Number of PLW who exit from MAM treatment during the reporting period(NUT_TX_U5MN_MAM_Ext_TSFP_E) 
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_MAM_Ext_TSFP_E' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.child_or_plw = 'plw'
    
        AND COALESCE(p_record_x.discharge_categories, '') <> ''
    
 THEN

    NUT_TX_U5MN_MAM_Ext_TSFP_E := 1;
END IF;

-- Proportion of children 24-59 months de-wormed-Numerator
ELSIF p_indic_name = 'indic_NUT_DeW_Numerator' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.deworming_age_range = '24-59'
    
        AND COALESCE(p_record_x.deworming_second_dose, '') <> ''
    
 THEN

    NUT_DeW_Numerator := 1;
END IF;

-- OTP_Number of children unknown statu:NUT_TX_U5MN_SAM_us_OTP_8.
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_us_OTP_8_' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.start_nutrition_status = 'red'
    
        AND p_record_x.age_months < 60
    
        AND p_record_x.age_months >= 6
    
        AND COALESCE(p_record_x.discharged_categories, '') <> ''
    
 THEN

    NUT_TX_U5MN_SAM_us_OTP_8_ := 1;
END IF;

-- MAM_Number of children unknown status:NUT_TX_U5MN_SAM_US_TSFP_8.
ELSIF p_indic_name = 'indic_NUT_TX_U5MN_SAM_US_TSFP_8_' THEN  IF
 p_record_x.closed = True
    
        AND p_record_x.start_nutrition_status = 'yellow'
    
        AND p_record_x.age_months < 60
    
        AND p_record_x.age_months >= 6
    
        AND COALESCE(p_record_x.discharged_categories, '') <> ''
    
 THEN

    NUT_TX_U5MN_SAM_US_TSFP_8_ := 1;
END IF;

 
END IF;
    --******************************




EXCEPTION -- Optionally handle exceptions
WHEN OTHERS THEN -- Comment out or remove the error logging if not required
RAISE WARNING 'Compute error: %',
SQLERRM;


return;


END;


RETURN NEXT;


END;


$function$;


;


;