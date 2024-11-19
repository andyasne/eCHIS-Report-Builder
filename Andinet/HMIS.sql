drop function rpt_fn_compute_hmis_report_values(record, hstore, text);


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
  CHIM_ECND_1 integer
) language plpgsql as $function $begin pregnant_women_received_ANC_First_visit_by_gestational_week: = 0;


Number_of_slides_or_RDT_positive_for_malaria: = 0;


pregnant_women_received_ANC_First_visit_by_gw_less_than_16: = 0;


pregnant_women_received_ANC_First_visit_by_gw_geq_to_16: = 0;


ANC_1stV_MA_1_1: = 0;


ANC_1stV_MA_1_2: = 0;


ANC_1stV_MA_1_3: = 0;


number_of_pregnant_received_anc_first_visit: = 0;


number_of_postnatal_visits_within_7_days: = 0;


number_of_children_under_one_yr_received_bcg: = 0;


number_of_children_under_two_yr_measles_second_dose: = 0;


number_of_girls_9yr_received_first_dose_of_human_papilloma: = 0;


Number_of_women_who_have_received_TT1_vaccination: = 0;


Number_of_women_who_have_received_TT2_vaccination: = 0;


Number_of_women_who_have_received_TT3_vaccination: = 0;


Number_of_women_who_have_received_TT4_vaccination: = 0;


Number_of_women_who_have_received_TT5_vaccination: = 0;


children_who_treated_for_diarrhea_by_ors_and_zinc: = 0;


children_who_treated_for_diarrhea_by_ors: = 0;


fp_contraceptive_acceptance_rate: = 0;


fp_new_at_10_to_14: = 0;


fp_new_at_15_to_19: = 0;


fp_new_at_20_to_24: = 0;


fp_new_at_25_to_29: = 0;


fp_new_at_30_to_49: = 0;


fp_repeat_at_10_to_14: = 0;


fp_repeat_at_15_to_19: = 0;


fp_repeat_at_20_to_24: = 0;


fp_repeat_at_25_to_29: = 0;


fp_repeat_at_30_to_49: = 0;


fp_new_oral_contraceptives: = 0;


fp_new_injectables: = 0;


fp_new_implants: = 0;


fp_new_iucd: = 0;


fp_repeat_oral_contraceptives: = 0;


fp_repeat_injectables: = 0;


fp_repeat_implants: = 0;


fp_repeat_iucd: = 0;


fp_at_10_to_14: = 0;


fp_at_15_to_19: = 0;


fp_at_20_to_24: = 0;


fp_at_25_to_29: = 0;


fp_at_30_to_49: = 0;


fp_oral_contraceptives: = 0;


fp_implants: = 0;


fp_iucd: = 0;


still_births: = 0;


still_live: = 0;


postnatal_0_24: = 0;


postnatal_25_48: = 0;


postnatal_49_72: = 0;


postnatal_73_168: = 0;


deaths_of_home: = 0;


deaths_on_the_way: = 0;


deaths_at_health_post: = 0;


penta1: = 0;


penta3: = 0;


pcv1: = 0;


pcv3: = 0;


ipv: = 0;


rota1: = 0;


rota2: = 0;


measles_1: = 0;


infants_whose_mother: = 0;


FP_CAR_Mtd_2_7: = 0;


FP_IPPF_Mtd_5: = 0;


Mal_DX1: = 0;


L_D_SBA_1: = 0;


number_of_under_5__pnemonia: = 0;


CHIM_VSD_1: = 0;


CHIM_VSD_2: = 0;


antenatal_care_coverage_four_visits_from_gte_20_yr: = 0;


ANC_4thV_MA_1_1: = 0;


antenatal_care_coverage_four_visits_from_15_19_yr: = 0;


number_of_pregnant_received_anc_four_visit: = 0;


nch_chim_pnrx: = 0;


nch_chim_asfxrs: = 0;


MAT_CAR_Mtd_1_7: = 0;


MAT_CAR_Mtd_2_7: = 0;


FP_IPPF_Mtd_5_: = 0;


MAT_LAFPPR_1_1: = 0;


MAT_LAFPPR_1_2: = 0;


MAT_LAFPPR_1_3: = 0;


MAT_TLAFPR_: = 0;


MAT_ANC1_GA_1_1: = 0;


MAT_ANC4__GA_1_1: = 0;


MAT_ANC4__GA_1_2: = 0;


MAT_B_D_CBN_1_: = 0;


MAT_B_D_CDN_2_: = 0;


MAT_EPNC_1: = 0;


MAT_EPNC_1_1: = 0;


MAT_EPNC_1_3: = 0;


MAT_EPNC_1_4: = 0;


MAT_EPNC_1_5: = 0;


CH_CND_LB_kebele_: = 0;


CH_TX_SYI_1_3: = 0;


CH_ASPH_2_: = 0;


CH_CHX_1_: = 0;


EPI_OPV1_1_: = 0;


EPI_OPV3_1_: = 0;


EPI_FI_1_: = 0;


EPI_VWR_BCG_giv_: = 0;


EPI_VWR_BCG_dam_: = 0;


EPI_VWR_BCG_dis_: = 0;


EPI_VWR_Penta_dam_: = 0;


EPI_VWR_Penta_dis_: = 0;


EPI_VWR_PCV_dam_: = 0;


EPI_VWR_PCV_dis_: = 0;


EPI_VWR_RT_dam_: = 0;


EPI_VWR_RT_dis_: = 0;


EPI_VWR_PV_dam_: = 0;


EPI_VWR_PV_dis_: = 0;


EPI_VWR_MCV_dam_: = 0;


EPI_VWR_MCV_dis_: = 0;


EPI_VWR_IPV_giv_: = 0;


EPI_VWR_IPV_dam_: = 0;


EPI_VWR_IPV_dis_: = 0;


EPI_VWR_HPV_giv_: = 0;


suspected_lymphedema: = 0;


refered_suspected_lymphedema: = 0;


suspected_trachomatous_trichiasis: = 0;


refered_trachomatous_trichiasis: = 0;


suspected_Schistosomiasis: = 0;


refered_suspected_Schistosomiasis: = 0;


suspected_Cutaneous_leishmaniasis: = 0;


refered_suspected_Cutaneous_leishmaniasis: = 0;


suspected_Scabies: = 0;


refered_suspected_Scabies: = 0;


suspected_Human_Guinea_Worm: = 0;


refered_suspected__Human_Guinea_Worm: = 0;


totNum_swallowed_azithromycin_or_took_tetracycline_eye_ointment: = 0;


ivermectin: = 0;


lymphatic_filariasis: = 0;


prevent_schistosomiasis: = 0;


prevent_soil_transmitted_helminthiasis: = 0;


prevent_schistosomiasis_gt: = 0;


NTD_TR_1_1: = 0;


NTD_TR_1_2: = 0;


NTD_TR_1_3: = 0;


NTD_TR_1_4: = 0;


NTD_TR_1_5: = 0;


NTD_TR_1_6: = 0;


NTD_TR_1_7: = 0;


NTD_TR_1_8: = 0;


NTD_ONCH_1_1: = 0;


NTD_ONCH_1_2: = 0;


NTD_ONCH_1_3: = 0;


NTD_ONCH_1_4: = 0;


NTD_LF_1_1: = 0;


NTD_LF_1_2: = 0;


NTD_LF_1_3: = 0;


NTD_LF_1_4: = 0;


NTD_SCH_1_1: = 0;


NTD_SCH_1_2: = 0;


NTD_SCH_1_3: = 0;


NTD_SCH_1_4: = 0;


NTD_STH_1_1: = 0;


NTD_STH_1_2: = 0;


NTD_STH_1_3: = 0;


NTD_STH_1_4: = 0;


NTD_STH_1_5: = 0;


NTD_STH_1_6: = 0;


NCT_HTN_1: = 0;


NCT_HTN_2: = 0;


NCT_HTN_3: = 0;


NCT_HTN_4: = 0;


NCT_HTN_5: = 0;


NCT_HTN_6: = 0;


NCT_HTN_7: = 0;


NCT_HTN_8: = 0;


NCD_HTNDX_1_2_1: = 0;


NCD_HTNDX_1_2_2: = 0;


NCD_HTNDX_1_2_3: = 0;


NCD_DMDX_1_2_1: = 0;


NCD_DMDX_1_2_2: = 0;


NCD_DMDX_1_2_3: = 0;


NCD_DMDX_1_2_4: = 0;


confirmed_malaria_cases_ftat: = 0;


confirmed_malaria_cases_hp: = 0;


households_investigated: = 0;


entitled_for_finger_prick: = 0;


received_finger_prick: = 0;


confirmed_malaria_cases: = 0;


confirmed_malaria_cases_plasmodium_falciparium: = 0;


confirmed_malaria_cases_plasmodium_vivax: = 0;


confirmed_malaria_cases_mixed: = 0;


Cases_with_travel_history: = 0;


Cases_without_travel_history: = 0;


Number_of_households_sprayed: = 0;


number_people_protected_by_chemical_spray: = 0;


chemical_used_in_kg: = 0;


bednet_usage: = 0;


llitn_properly_used: = 0;


suspected_and_tested_with_rdt: = 0;


Total_Malaria_Cases_Confirmed_RDT: = 0;


RDT_Confirmed_Malaria_Cases_pf: = 0;


RDT_Confirmed_Malaria_Cases_pv: = 0;


Malaria_Cases_under_5: = 0;


Malaria_Cases_5_to_14: = 0;


Malaria_Cases_over_15: = 0;


positive_Pregant_mothers: = 0;


RDT_positive_for_malaria: = 0;


RDT_positive_for_malaria_male_under_5: = 0;


RDT_positive_for_malaria_female_under_5: = 0;


RDT_positive_for_malaria_male_over_5_under_14: = 0;


RDT_positive_for_malaria_female_over_5_under_14: = 0;


RDT_positive_for_malaria_male_over_15: = 0;


RDT_positive_for_malaria_female_over_15: = 0;


rdt_performed_for_malaria_diagnosis: = 0;


malaria_positive_clients: = 0;


malaria_positive_clients_under_1: = 0;


malaria_positive_clients_under_1_new: = 0;


malaria_positive_clients_under_1_repeat: = 0;


malaria_positive_clients_over_1_under_4: = 0;


malaria_positive_clients_over_1_under_4_new: = 0;


malaria_positive_clients_over_1_under_4_repeat: = 0;


malaria_positive_clients_over_5_under_14: = 0;


malaria_positive_clients_over_5_under_14_new: = 0;


malaria_positive_clients_over_5_under_14_repeat: = 0;


malaria_positive_clients_over_15: = 0;


malaria_positive_clients_over_15_new: = 0;


malaria_positive_clients_over_15_repeat: = 0;


hp_positive_malaria_pregnant_women: = 0;


malaria_suspect_but_not_tested: = 0;


malaria_suspect_tested: = 0;


breeding_site: = 0;


breeding_site_permanent: = 0;


breeding_site_temporary: = 0;


larva_control: = 0;


larva_control_in_sq_km: = 0;


larva_control_Number_of_times: = 0;


compacting_activity: = 0;


compacting_activity_in_sq_km: = 0;


compacting_activity_Number_of_times: = 0;


clearing_activity: = 0;


clearing_activity_in_sq_km: = 0;


clearing_activity_Number_of_times: = 0;


filling_activity: = 0;


filling_activity_in_sq_km: = 0;


filling_activity_Number_of_times: = 0;


households_who_own_bednets: = 0;


households_who_own_but_not_use: = 0;


households_with_no_bednets: = 0;


peoples_involved_in_prevention: = 0;


males_involved_in_prevention: = 0;


females_involved_in_prevention: = 0;


organizations_involved_in_prevention: = 0;


people_who_took_behav_change_comm_training: = 0;


male_who_took_behav_change_comm_training: = 0;


female_who_took_behav_change_comm_training: = 0;


organizations_who_took_behav_change_comm_training: = 0;


households_eligible_delineated_for_investigation: = 0;


individuals_living_in_index_case: = 0;


suspected_schistosomiasis_referral: = 0;


MAL_1: = 0;


MAL_2: = 0;


MAL_3: = 0;


MAL_4: = 0;


MAL_5: = 0;


MAL_6: = 0;


MAL_POS_1_1: = 0;


MAL_POS_1_2: = 0;


MAL_POS_1_3: = 0;


MAL_POS_1_4: = 0;


MAL_POS_1_5: = 0;


MAL_POS_1_6: = 0;


Mal_Travel_: = 0;


FP_CYP_1: = 0;


FP_CYP_3: = 0;


FP_CYP_5: = 0;


FP_CYP_8: = 0;


FP_CYP_9: = 0;


FP_CYP_10: = 0;


Mal_LLITN_1: = 0;


Mal_ELLITN_1: = 0;


total_confirmed_malaria_cases: = 0;


number_of_confirmed_malaria_cases_within_hp_catchment: = 0;


number_of_confirmed_malaria_cases_outside_hp_catchment: = 0;


number_of_index_cases_eligible_for_investigation: = 0;


number_of_index_cases_investigated: = 0;


Number_of_households_eligible_delineated_for_investigation: = 0;


hh_members_eligible_butnot_indexcases: = 0;


number_of_household_members_tested: = 0;


number_of_households_investigated: = 0;


total_number_of_positive_cases_secondary: = 0;


total_number_of_pf_cases: = 0;


total_number_of_pv_cases: = 0;


total_number_of_Mixed_cases: = 0;


imported_cases__cases_with_travel_history: = 0;


indigenous_or_local_cases_cases_without_travel_history: = 0;


suspected_trachomatous_trichiasis_referral: = 0;


suspected_tcutaneous_leishmaniasis: = 0;


suspected_tcutaneous_leishmaniasis_referral: = 0;


suspected_guinea_worm: = 0;


suspected_guinea_worm_referral: = 0;


num_tt_medication: = 0;


num_oncho_medication: = 0;


num_lf_medication: = 0;


num_sch_medication: = 0;


num_sth_medication_child: = 0;


num_sth_medication_adult: = 0;


TB_1: = 0;


TB_2: = 0;


TB_3: = 0;


TB_4: = 0;


TB_5: = 0;


TB_6: = 0;


TB_7: = 0;


TB_8: = 0;


TB_9: = 0;


TB_10: = 0;


TB_11: = 0;


TB_12: = 0;


TB_13: = 0;


TB_14: = 0;


TB_15: = 0;


TB_16: = 0;


TB_17: = 0;


TB_18: = 0;


TB_19: = 0;


TB_20: = 0;


TB_TX_PTB_2_1: = 0;


TB_TX_PTB_2_2: = 0;


TB_TX_PTB_2_3: = 0;


TB_TX_PTB_2_4: = 0;


TB_TX_PTB_2_5: = 0;


TB_TX_PTB_2_6: = 0;


TB_TX_PTB_2_7: = 0;


TB_TX_PTB_2_8: = 0;


TB_TX_PTB_2_9: = 0;


TB_TX_PTB_2_10: = 0;


TB_TX_PTB_2_11: = 0;


TB_TX_PTB_2_12: = 0;


TB_TX_PTB_2_13: = 0;


TB_TX_PTB_2_14: = 0;


TB_TX_PTB_2_15: = 0;


TB_TX_PTB_2_16: = 0;


TB_TX_PTB_2_17: = 0;


TB_TX_PTB_2_18: = 0;


TB_TX_PTB_2_19: = 0;


TB_TX_PTB_2_20: = 0;


TB_TX_EPTB_1_1: = 0;


TB_TX_EPTB_1_2: = 0;


TB_TX_EPTB_1_3: = 0;


TB_TX_EPTB_1_4: = 0;


TB_TX_EPTB_1_5: = 0;


TB_TX_EPTB_1_6: = 0;


TB_TX_EPTB_1_7: = 0;


TB_TX_EPTB_1_8: = 0;


TB_TX_EPTB_1_9: = 0;


TB_TX_EPTB_1_10: = 0;


TB_TX_EPTB_1_11: = 0;


TB_TX_EPTB_1_12: = 0;


TB_TX_EPTB_1_13: = 0;


TB_TX_EPTB_1_14: = 0;


TB_TX_EPTB_1_15: = 0;


TB_TX_EPTB_1_16: = 0;


TB_TX_EPTB_1_17: = 0;


TB_TX_EPTB_1_18: = 0;


TB_TX_EPTB_1_19: = 0;


TB_TX_EPTB_1_20: = 0;


TB_CR_PTB_1_1_1: = 0;


TB_CR_PTB_1_1_2: = 0;


TB_CR_PTB_1_1_3: = 0;


TB_CR_PTB_1_1_4: = 0;


TB_CR_PTB_1_1_5: = 0;


TB_CR_PNTB_2_1_1: = 0;


TB_CR_PNTB_2_1_2: = 0;


TB_CR_PNTB_2_1_3: = 0;


TB_CR_PNTB_2_1_4: = 0;


TB_CR_PNTB_2_1_5: = 0;


TB_CR_EPTB_3_1_1: = 0;


TB_CR_EPTB_3_1_2: = 0;


TB_CR_EPTB_3_1_3: = 0;


TB_CR_EPTB_3_1_4: = 0;


TB_CR_EPTB_3_1_5: = 0;


TB_COMM_: = 0;


TB_CBTSR_2_: = 0;


TB_CI_1_1_1: = 0;


TB_CI_1_1_2: = 0;


TB_CI_1_1_3: = 0;


TB_CI_1_2_1: = 0;


TB_CI_1_2_2: = 0;


TB_CI_1_2_3: = 0;


TB_CI_SCR_1_1: = 0;


TB_CI_SCR_1_2: = 0;


TB_CI_SCR_1_3: = 0;


TB_CI_SCR_2_1: = 0;


TB_CI_SCR_2_2: = 0;


TB_CI_SCR_2_3: = 0;


TB_TPT_1: = 0;


TB_TPT_2: = 0;


TB_TPT_3: = 0;


TB_TPT_1_4_1: = 0;


TB_TPT_1_4_2: = 0;


TB_TPT_1_4_3: = 0;


TB_DST_1_1: = 0;


TB_DR_NUT_1_1: = 0;


TB_DR_NUT_1_2: = 0;


TB_DR_NUT_1_3: = 0;


Leprosy_case_notification__All_leprosy_case_detected: = 0;


Leprosy_case_notification__Male: = 0;


Leprosy_case_notification_Female: = 0;


Leprosy_case_notification_New_Leprosy_cases_detected_: = 0;


Leprosy_case_notification_PB_Male_lt_15_yrs: = 0;


Leprosy_case_notification_PB_Male_gte_15_yrs: = 0;


Leprosy_case_notification_PB_Female_lt_15_yrs: = 0;


Leprosy_case_notification_PB_Female_gte_15_yrs: = 0;


Leprosy_case_notification_MB__Male_lt_15_yrs: = 0;


Leprosy_case_notification_MB__Male_gte_15_yrs: = 0;


Leprosy_case_notification_MB__Female_lt__15_yrs: = 0;


Leprosy_case_notification_MB__Female_gte_15_yrs: = 0;


Grade_II_disability_rate: = 0;


Grade_II_disability_rate_among_new_cases_of_leprosy_Male_lt_15: = 0;


Grade_II_disability_rate_among_new_cases_of_leprosy_Male_gte_15: = 0;


Grade_II_disability_rate_among_new_cases_of_leprosy_Fem_gt_15: = 0;


Grade_II_disability_rate_among_new_cases_of_leprosy_Fem_gte_15: = 0;


LEP_NOT__1_1_1: = 0;


LEP_NOT__1_1_2: = 0;


LEP_NOT__1_1_3: = 0;


LEP_NOT__1_1_4: = 0;


LEP_NOT__1_1_5_1: = 0;


LEP_NOT__1_1_5_2: = 0;


LEP_NOT__1_1_5_3: = 0;


LEP_NOT__1_1_5_4: = 0;


LEP_DIS_1_1: = 0;


LEP_DIS_1_2: = 0;


LEP_DIS_1_3: = 0;


LEP_DIS_1_4: = 0;


LEP_TX_2_: = 0;


LEP_TX_3_: = 0;


LEP_TX_4_: = 0;


LEP_TX_5_: = 0;


xsum: = 0;


MS_OPD_NumOV_1_1: = 0;


MS_OPD_NumOV_1_2: = 0;


MS_OPD_NumOV_1_3: = 0;


MS_OPD_NumOV_1_4: = 0;


MS_OPD_NumOV_1_5: = 0;


MS_OPD_NumOV_1_6: = 0;


MS_OPD_NumOV_1_7: = 0;


MS_OPD_NumOV_1_8: = 0;


MS_OPD_NumOV_1_9: = 0;


MS_OPD_NumOV_1_10: = 0;


MS_OPD_NumOV_1_11: = 0;


MS_OPD_NumOV_1_12: = 0;


MS_OPD_NumOV_1_13: = 0;


MS_OPD_NumOV_1_14: = 0;


MS_OPD_NumOV_2: = 0;


HCSM_EDA_TDR: = 0;


PMS_AVAIL_1_26_: = 0;


PMS_AVAIL_1_27_: = 0;


PMS_AVAIL_1_28_: = 0;


PMS_AVAIL_1_29_: = 0;


PMS_AVAIL_1_30_: = 0;


PMS_AVAIL_1_31_: = 0;


PMS_AVAIL_1_32_: = 0;


PMS_AVAIL_1_33_: = 0;


--NEW
CHIM_ECND_2_1: = 0;


CHIM_ECND_2_2: = 0;


CHIM_ECND_2_3: = 0;


CHIM_ECND_1_1: = 0;


CHIM_ECND_1_2: = 0;


CHIM_ECND_1: = 0;


begin -- ANC_1stV_GA.1:ANC:Total Number of pregnant women that received ANC First visit by gestational week
if p_indic_name = 'indic_pregnant_women_received_ANC_First_visit_by_gestational_week' then if p_record_x.anc1_date is not null
and p_record_x.anc1_date <> ''
and p_record_x.anc1_gestational_age = '0' then pregnant_women_received_ANC_First_visit_by_gestational_week: = 1;


end if;


-- Mal_Pos.1:CDC:Number of slides or RDT positive for malaria
elsif p_indic_name = 'indic_Number_of_slides_or_RDT_positive_for_malaria' then if p_record_x.hew_rdt_result = 'positive' then Number_of_slides_or_RDT_positive_for_malaria: = 1;


end if;


-- ANC_1stV_GA.1.1:ANC:<16 weeks gestation
elsif p_indic_name = 'indic_pregnant_women_received_ANC_First_visit_by_gw_less_than_16' then if p_record_x.anc1_date is not null
and p_record_x.anc1_date <> ''
and p_record_x.anc1_gestational_age = '16' then pregnant_women_received_ANC_First_visit_by_gw_less_than_16: = 1;


end if;


-- ANC_1stV_GA.1.2:ANC:>16 weeks gestation
elsif p_indic_name = 'indic_pregnant_women_received_ANC_First_visit_by_gw_geq_to_16' then if p_record_x.anc1_date is not null
and p_record_x.anc1_date <> ''
and p_record_x.anc1_gestational_age = '16' then pregnant_women_received_ANC_First_visit_by_gw_geq_to_16: = 1;


end if;


-- ANC_1stV_MA.1.1:ANC:Pregnant women aged 10 to 14 years that received ANC first visit
elsif p_indic_name = 'indic_ANC_1stV_MA_1_1' then if p_record_x.anc1_date is not null
and p_record_x.anc1_date <> ''
and p_record_x.age_years = '10'
and p_record_x.age_years = '14' then ANC_1stV_MA_1_1: = 1;


end if;


-- ANC_1stV_MA.1.2:ANC:Pregnant women aged 15 to 19 years that received ANC first visit
elsif p_indic_name = 'indic_ANC_1stV_MA_1_2' then if p_record_x.anc1_date is not null
and p_record_x.anc1_date <> ''
and p_record_x.age_years = '15'
and p_record_x.age_years = '19' then ANC_1stV_MA_1_2: = 1;


end if;


-- ANC_1stV_MA.1.3:ANC:Pregnant women above 20 years that received ANC first visit
elsif p_indic_name = 'indic_ANC_1stV_MA_1_3' then if p_record_x.anc1_date is not null
and p_record_x.anc1_date <> ''
and p_record_x.age_years = '20' then ANC_1stV_MA_1_3: = 1;


end if;


-- ANC_1stV_MA.1:ANC:Number of pregnant women that received ANC first visit by maternal age
elsif p_indic_name = 'indic_number_of_pregnant_received_anc_first_visit' then if p_record_x.anc1_date is not null
and p_record_x.anc1_date <> ''
and p_record_x.age_years = '0' then number_of_pregnant_received_anc_first_visit: = 1;


end if;


-- EPI_BCG1:Immunization (EPI):Number of children under one yr of age who have received BCG vaccine
elsif p_indic_name = 'indic_number_of_children_under_one_yr_received_bcg' then if extract(
  month
  from
    AGE(p_record_x.bcg_date:: DATE, p_record_x.dob:: DATE)
) <= 12 then number_of_children_under_one_yr_received_bcg: = 1;


end if;


-- MV_TT1.1:Immunization (EPI):Number of women who have received TT1 vaccination
elsif p_indic_name = 'indic_Number_of_women_who_have_received_TT1_vaccination' then if p_record_x.tt1_date is not null
and p_record_x.tt1_date <> ''
and p_record_x.case_type = 'client' then Number_of_women_who_have_received_TT1_vaccination: = 1;


end if;


-- MV_TT2.1:Immunization (EPI):Number of women who have received TT2 vaccination
elsif p_indic_name = 'indic_Number_of_women_who_have_received_TT2_vaccination' then if p_record_x.tt2_date is not null
and p_record_x.tt2_date <> ''
and p_record_x.case_type = 'client' then Number_of_women_who_have_received_TT2_vaccination: = 1;


end if;


-- MV.TT3.1:Immunization (EPI):Number of women who have received TT3 vaccination
elsif p_indic_name = 'indic_Number_of_women_who_have_received_TT3_vaccination' then if p_record_x.tt3_date is not null
and p_record_x.tt3_date <> ''
and p_record_x.case_type = 'client' then Number_of_women_who_have_received_TT3_vaccination: = 1;


end if;


-- MV.TT4.1:Immunization (EPI):Number of women who have received TT4 vaccination
elsif p_indic_name = 'indic_Number_of_women_who_have_received_TT4_vaccination' then if p_record_x.tt4_date is not null
and p_record_x.tt4_date <> ''
and p_record_x.case_type = 'client' then Number_of_women_who_have_received_TT4_vaccination: = 1;


end if;


-- MV.TT5.1:Immunization (EPI):Number of women who have received TT5 vaccination
elsif p_indic_name = 'indic_Number_of_women_who_have_received_TT5_vaccination' then if p_record_x.tt5_date is not null
and p_record_x.tt5_date <> ''
and p_record_x.case_type = 'client' then Number_of_women_who_have_received_TT5_vaccination: = 1;


end if;


-- RMH_FP_CAR:Family Planning:Contraceptive acceptANCe rate
elsif p_indic_name = 'indic_fp_contraceptive_acceptance_rate' then if p_record_x.yearly_report = 'yes' then fp_contraceptive_acceptance_rate: = 1;


end if;


-- FP_CAR_Age.1.1:Family Planning:10-14 yr
elsif p_indic_name = 'indic_fp_new_at_10_to_14' then if p_record_x.yearly_report = 'yes'
and p_record_x.fp_acceptor_type = 'new'
and p_record_x.age_range = '10-14' then fp_new_at_10_to_14: = 1;


end if;


-- FP_CAR_Age.1.2:Family Planning:15-19 yr
elsif p_indic_name = 'indic_fp_new_at_15_to_19' then if p_record_x.yearly_report = 'yes'
and p_record_x.fp_acceptor_type = 'new'
and p_record_x.age_range = '15-19' then fp_new_at_15_to_19: = 1;


end if;


-- FP_CAR_Age.1.3:Family Planning:20 - 24 yr
elsif p_indic_name = 'indic_fp_new_at_20_to_24' then if p_record_x.yearly_report = 'yes'
and p_record_x.fp_acceptor_type = 'new'
and p_record_x.age_range = '20-24' then fp_new_at_20_to_24: = 1;


end if;


-- FP_CAR_Age.1.4:Family Planning:25 -29 yr
elsif p_indic_name = 'indic_fp_new_at_25_to_29' then if p_record_x.yearly_report = 'yes'
and p_record_x.fp_acceptor_type = 'new'
and p_record_x.age_range = '25-29' then fp_new_at_25_to_29: = 1;


end if;


-- FP_CAR_Age.1.5:Family Planning:30 -49 yr
elsif p_indic_name = 'indic_fp_new_at_30_to_49' then if p_record_x.yearly_report = 'yes'
and p_record_x.fp_acceptor_type = 'new'
and p_record_x.age_range = '30-49' then fp_new_at_30_to_49: = 1;


end if;


-- FP_CAR_Age.2.1:Family Planning:10-14 yr
elsif p_indic_name = 'indic_fp_repeat_at_10_to_14' then if p_record_x.yearly_report = 'yes'
and p_record_x.fp_acceptor_type = 'repeat'
and p_record_x.age_range = '10-14' then fp_repeat_at_10_to_14: = 1;


end if;


-- FP_CAR_Age.2.2:Family Planning:15-19 yr
elsif p_indic_name = 'indic_fp_repeat_at_15_to_19' then if p_record_x.yearly_report = 'yes'
and p_record_x.fp_acceptor_type = 'repeat'
and p_record_x.age_range = '15-19' then fp_repeat_at_15_to_19: = 1;


end if;


-- FP_CAR_Age.2.3:Family Planning:20 - 24 yr
elsif p_indic_name = 'indic_fp_repeat_at_20_to_24' then if p_record_x.yearly_report = 'yes'
and p_record_x.fp_acceptor_type = 'repeat'
and p_record_x.age_range = '20-24' then fp_repeat_at_20_to_24: = 1;


end if;


-- FP_CAR_Age.2.4:Family Planning:25 -29 yr
elsif p_indic_name = 'indic_fp_repeat_at_25_to_29' then if p_record_x.yearly_report = 'yes'
and p_record_x.fp_acceptor_type = 'repeat'
and p_record_x.age_range = '25-29' then fp_repeat_at_25_to_29: = 1;


end if;


-- FP_CAR_Age.2.5:Family Planning:30 -49 yr
elsif p_indic_name = 'indic_fp_repeat_at_30_to_49' then if p_record_x.yearly_report = 'yes'
and p_record_x.fp_acceptor_type = 'repeat'
and p_record_x.age_range = '30-49' then fp_repeat_at_30_to_49: = 1;


end if;


-- FP_CAR_Mtd.1.1:Family Planning:Oral contraceptives
elsif p_indic_name = 'indic_fp_new_oral_contraceptives' then if p_record_x.yearly_report = 'yes'
and p_record_x.fp_acceptor_type = 'new'
and p_record_x.fp_method = 'oral_contraceptives' then fp_new_oral_contraceptives: = 1;


end if;


-- FP_CAR_Mtd.1.2:Family Planning:Injectable
elsif p_indic_name = 'indic_fp_new_injectables' then if p_record_x.yearly_report = 'yes'
and p_record_x.fp_acceptor_type = 'new'
and p_record_x.fp_method = 'injections' then fp_new_injectables: = 1;


end if;


-- FP_CAR_Mtd.1.3:Family Planning:Implants
elsif p_indic_name = 'indic_fp_new_implants' then if p_record_x.yearly_report = 'yes'
and p_record_x.fp_acceptor_type = 'new'
and p_record_x.fp_method = 'implants' then fp_new_implants: = 1;


end if;


-- FP_CAR_Mtd.1.4:Family Planning:IUCD
elsif p_indic_name = 'indic_fp_new_iucd' then if p_record_x.yearly_report = 'yes'
and p_record_x.fp_acceptor_type = 'new'
and p_record_x.fp_method = 'iucd' then fp_new_iucd: = 1;


end if;


-- FP_CAR_Mtd.2.1:Family Planning:Oral contraceptives
elsif p_indic_name = 'indic_fp_repeat_oral_contraceptives' then if p_record_x.yearly_report = 'yes'
and p_record_x.fp_acceptor_type = 'repeat'
and p_record_x.fp_method = 'oral_contraceptives' then fp_repeat_oral_contraceptives: = 1;


end if;


-- FP_CAR_Mtd.2.2:Family Planning:Injectable
elsif p_indic_name = 'indic_fp_repeat_injectables' then if p_record_x.yearly_report = 'yes'
and p_record_x.fp_acceptor_type = 'repeat'
and p_record_x.fp_method = 'injections' then fp_repeat_injectables: = 1;


end if;


-- FP_CAR_Mtd.2.3:Family Planning:Implants
elsif p_indic_name = 'indic_fp_repeat_implants' then if p_record_x.yearly_report = 'yes'
and p_record_x.fp_acceptor_type = 'repeat'
and p_record_x.fp_method = 'implants' then fp_repeat_implants: = 1;


end if;


-- FP_CAR_Mtd.2.4:Family Planning:IUCD
elsif p_indic_name = 'indic_fp_repeat_iucd' then if p_record_x.yearly_report = 'yes'
and p_record_x.fp_acceptor_type = 'repeat'
and p_record_x.fp_method = 'iucd' then fp_repeat_iucd: = 1;


end if;


-- FP_IPPF_Age.1:Family Planning:10-14 yr
elsif p_indic_name = 'indic_fp_at_10_to_14' then if p_record_x.ppfp = 'yes'
and p_record_x.age_range = '10-14' then fp_at_10_to_14: = 1;


end if;


-- FP_IPPF_Age.2:Family Planning:15-19 yr
elsif p_indic_name = 'indic_fp_at_15_to_19' then if p_record_x.ppfp = 'yes'
and p_record_x.age_range = '15-19' then fp_at_15_to_19: = 1;


end if;


-- FP_IPPF_Age.3:Family Planning:20 - 24 yr
elsif p_indic_name = 'indic_fp_at_20_to_24' then if p_record_x.ppfp = 'yes'
and p_record_x.age_range = '20-24' then fp_at_20_to_24: = 1;


end if;


-- FP_IPPF_Age.4:Family Planning:25 -29 yr
elsif p_indic_name = 'indic_fp_at_25_to_29' then if p_record_x.ppfp = 'yes'
and p_record_x.age_range = '25-29' then fp_at_25_to_29: = 1;


end if;


-- FP_IPPF_Age.5:Family Planning:30-49 yr
elsif p_indic_name = 'indic_fp_at_30_to_49' then if p_record_x.ppfp = 'yes'
and p_record_x.age_range = '30-49' then fp_at_30_to_49: = 1;


end if;


-- FP_IPPF_Mtd.1:Family Planning:Pills(POP)
elsif p_indic_name = 'indic_fp_oral_contraceptives' then if p_record_x.ppfp = 'yes'
and p_record_x.fp_method = 'oral_contraceptives' then fp_oral_contraceptives: = 1;


end if;


-- FP_IPPF_Mtd.2:Family Planning:Implants
elsif p_indic_name = 'indic_fp_implants' then if p_record_x.ppfp = 'yes'
and p_record_x.fp_method = 'implants' then fp_implants: = 1;


end if;


-- FP_IPPF_Mtd.3:Family Planning:IUCD
elsif p_indic_name = 'indic_fp_iucd' then if p_record_x.ppfp = 'yes'
and p_record_x.fp_method = 'iucd' then fp_iucd: = 1;


end if;


-- PNC_E1stV.1.1:Birth Attendants (BA):Early first postnatal care attendANCes 0-24 hrs
elsif p_indic_name = 'indic_postnatal_0_24' then if p_record_x.pnc1_hrs_after_birth = '24'
and p_record_x.pnc1_hrs_after_birth = '0' then postnatal_0_24: = 1;


end if;


-- PNC_E1stV.1.3:Birth Attendants (BA):Early first postnatal care attendANCes 25-48 hrs
elsif p_indic_name = 'indic_postnatal_25_48' then if p_record_x.pnc1_hrs_after_birth = '48'
and p_record_x.pnc1_hrs_after_birth = '25' then postnatal_25_48: = 1;


end if;


-- PNC_E1stV.1.4:Birth Attendants (BA):Early first postnatal care attendANCes49-72 hrs
elsif p_indic_name = 'indic_postnatal_49_72' then if p_record_x.pnc1_hrs_after_birth = '72'
and p_record_x.pnc1_hrs_after_birth = '49' then postnatal_49_72: = 1;


end if;


-- PNC_E1stV.1.5:Birth Attendants (BA):Early first postnatal care attendANCes 73hrs-7 days
elsif p_indic_name = 'indic_postnatal_73_168' then if p_record_x.pnc1_hrs_after_birth = '168'
and p_record_x.pnc1_hrs_after_birth = '73' then postnatal_73_168: = 1;


end if;


-- CMD_CMMR.1.1:Birth Attendants (BA):Number of maternal deaths at home
elsif p_indic_name = 'indic_deaths_of_home' then if p_record_x.death_location = 'community'
and p_record_x.death_maternal = 'yes' then deaths_of_home: = 1;


end if;


-- CMD_CMMR.1.2:Birth Attendants (BA):Number of maternal deaths on the way to health facility
elsif p_indic_name = 'indic_deaths_on_the_way' then if p_record_x.death_location = 'en_route_hp'
and p_record_x.death_maternal = 'yes' then deaths_on_the_way: = 1;


end if;


-- CMD_CMMR.1.3:Birth Attendants (BA):Number of maternal deaths at health post
elsif p_indic_name = 'indic_deaths_at_health_post' then if p_record_x.death_location = 'health_post'
and p_record_x.death_maternal = 'yes' then deaths_at_health_post: = 1;


end if;


-- EPI_Penta1.1:Immunization (EPI):Number of children under one yr of age who have received first dose of pentavalent vaccine
elsif p_indic_name = 'indic_penta1' then if p_record_x.epi_location = 'health_post' then penta1: = 1;


end if;


-- EPI_Penta3.1:Immunization (EPI):Number of children under one yr of age who have received third dose of pentavalent vaccine
elsif p_indic_name = 'indic_penta3' then if p_record_x.epi_location = 'health_post' then penta3: = 1;


end if;


-- EPI_PCV1.1:Immunization (EPI):Number of children under one yr of age who have received first dose of pneumococcal vaccine
elsif p_indic_name = 'indic_pcv1' then if p_record_x.epi_location = 'health_post' then pcv1: = 1;


end if;


-- EPI_PCV3.1:Immunization (EPI):Number of children under one yr of age who have received third dose of pneumococcal vaccine
elsif p_indic_name = 'indic_pcv3' then if p_record_x.epi_location = 'health_post' then pcv3: = 1;


end if;


-- EPI_IPV.1:Immunization (EPI):Number of children under one yr of age who have received one dose of inactivated polio vaccine
elsif p_indic_name = 'indic_ipv' then if p_record_x.epi_location = 'health_post' then ipv: = 1;


end if;


-- EPI_RT1.1:Immunization (EPI):Number of children under one yr of age who have received first dose of Rotavirus vaccine
elsif p_indic_name = 'indic_rota1' then if p_record_x.epi_location = 'health_post' then rota1: = 1;


end if;


-- EPI_RT1.2:Immunization (EPI):Number of children under one yr of age who have received 2nd dose of Rotavirus vaccine
elsif p_indic_name = 'indic_rota2' then if p_record_x.epi_location = 'health_post' then rota2: = 1;


end if;


-- EPI_MCV1.1:Immunization (EPI):Number of children under one yr of age who have received first dose of measles vaccine
elsif p_indic_name = 'indic_measles_1' then if p_record_x.epi_location = 'health_post' then measles_1: = 1;


end if;


-- s#check#
elsif p_indic_name = 'indic_infants_whose_mother' then if p_record_x.preventative_tt = 'yes' then infants_whose_mother: = 1;


end if;


-- None
elsif p_indic_name = 'indic_FP_CAR_Mtd_2_7' then if p_record_x.fp_acceptor_type = 'repeat' then FP_CAR_Mtd_2_7: = 1;


end if;


-- None
elsif p_indic_name = 'indic_FP_IPPF_Mtd_5' then if p_record_x.ppfp = 'yes' then FP_IPPF_Mtd_5: = 1;


end if;


-- L&D_SBA.1:Birth Attendants (BA):Total Number of births attended by level IV HEW and nurses at Health post
elsif p_indic_name = 'indic_L_D_SBA_1' then if p_record_x.outcome_date is not null
and p_record_x.outcome_date <> ''
and p_record_x.outcome_location = 'health_post' then L_D_SBA_1: = 1;


end if;


-- CHIM_PnRX.1:Child Health:Number of under 5 children treated for pneumonia
elsif p_indic_name = 'indic_number_of_under_5__pnemonia' then if extract(
  month
  from
    AGE(
      p_record_x.illness_start_date:: DATE,
      p_record_x.dob:: DATE
    )
) <= 60
and p_record_x.current_classification like '%pneumonia%' then number_of_under_5__pnemonia: = 1;


end if;


-- CHIM_VSD.1:Child Health:Number of sick young infants 0-2 months treated for sepsis
elsif p_indic_name = 'indic_CHIM_VSD_1' then if extract(
  month
  from
    AGE(
      p_record_x.illness_start_date:: DATE,
      p_record_x.dob:: DATE
    )
) <= 60
and p_record_x.current_classification like '%vsd%' then CHIM_VSD_1: = 1;


end if;


-- CHIM_VSD.2:Child Health:Number of sick young infants 0-2 months treated for local bacterial infection(LBI)
elsif p_indic_name = 'indic_CHIM_VSD_2' then if extract(
  month
  from
    AGE(
      p_record_x.illness_start_date:: DATE,
      p_record_x.dob:: DATE
    )
) < 60
and p_record_x.current_classification like '%local_bacterial_infection%' then CHIM_VSD_2: = 1;


end if;


-- ANC_4thV_MA.1.3:ANC:> 20 yr
elsif p_indic_name = 'indic_antenatal_care_coverage_four_visits_from_gte_20_yr' then if p_record_x.anc1_date is not null
and p_record_x.anc1_date <> ''
and p_record_x.age_years = '20' then antenatal_care_coverage_four_visits_from_gte_20_yr: = 1;


end if;


-- ANC_4thV_MA.1.1:ANC:Pregnant women aged 10 to 14 years that received four ANC visits
elsif p_indic_name = 'indic_ANC_4thV_MA_1_1' then if p_record_x.anc1_date is not null
and p_record_x.anc1_date <> ''
and p_record_x.age_years = '14'
and p_record_x.age_years = '10' then ANC_4thV_MA_1_1: = 1;


end if;


-- ANC_4thV_MA.1.2:Family Planning:15-19 yr
elsif p_indic_name = 'indic_antenatal_care_coverage_four_visits_from_15_19_yr' then if p_record_x.anc1_date is not null
and p_record_x.anc1_date <> ''
and p_record_x.age_years = '19'
and p_record_x.age_years = '15' then antenatal_care_coverage_four_visits_from_15_19_yr: = 1;


end if;


-- NCH_CHIM_PnRX:Under-five children with pneumonia received antibiotic treatment
elsif p_indic_name = 'indic_nch_chim_pnrx' then if p_record_x.age_months = '60' then nch_chim_pnrx: = 1;


end if;


-- NCH_CHIM_AsfxRS.2:Asphyxiated neonates who were resuscitated (with bag & mask) and survived
elsif p_indic_name = 'indic_nch_chim_asfxrs' then if (
  p_record_x.current_classification like '%severe_dehydration%'
  or p_record_x.current_classification like '%some_dehydration%'
  or p_record_x.current_classification like '%no_dehydration%'
)
and (
  p_record_x.all_med_names like '%ors%'
  or p_record_x.all_med_names like '%ors_planb%'
  or p_record_x.all_med_names like '%zink%'
)
and p_record_x.asphyxiated_neonate = 'yes' then nch_chim_asfxrs: = 1;


end if;


-- Contraceptive new acceptors by method - Others(MAT_CAR_Mtd17):Family Planning
elsif p_indic_name = 'indic_MAT_CAR_Mtd_1_7' then if p_record_x.fp_method = 'other'
and p_record_x.fp_acceptor_type = 'new'
and p_record_x.monthly_report = 'yes' then MAT_CAR_Mtd_1_7: = 1;


end if;


-- Contraceptive repeat acceptors by method - Others(MAT_CAR_Mtd27):Family Planning
elsif p_indic_name = 'indic_MAT_CAR_Mtd_2_7' then if p_record_x.fp_method = 'other'
and p_record_x.fp_acceptor_type = 'repeat'
and p_record_x.monthly_report = 'yes' then MAT_CAR_Mtd_2_7: = 1;


end if;


-- Total Immediate Postpartum Contraceptive acceptors disaggregated by method - Others(FP_IPPF_Mtd5):Family Planning
elsif p_indic_name = 'indic_FP_IPPF_Mtd_5_' then if p_record_x.fp_method = 'other'
and p_record_x.ppfp = 'yes'
and p_record_x.monthly_report = 'yes' then FP_IPPF_Mtd_5_: = 1;


end if;


-- Total number of premature removal of LAFP within 6 month insertion - Implants(MAT_LAFPPR11):Family Planning
elsif p_indic_name = 'indic_MAT_LAFPPR_1_1' then if p_record_x.fp_prev_method = 'implants'
and p_record_x.monthly_report = 'yes' then MAT_LAFPPR_1_1: = 1;


end if;


-- Total number of premature removal of LAFP within 6 month insertion - IUCD(MAT_LAFPPR.1. 2):Family Planning
elsif p_indic_name = 'indic_MAT_LAFPPR_1_2' then if p_record_x.fp_prev_method = 'iusd'
and p_record_x.monthly_report = 'yes' then MAT_LAFPPR_1_2: = 1;


end if;


-- Total number of premature removal of LAFP within 6 month insertion - Others(MAT_LAFPPR.1. 3):Family Planning
elsif p_indic_name = 'indic_MAT_LAFPPR_1_3' then if p_record_x.fp_prev_method = 'other'
and p_record_x.monthly_report = 'yes' then MAT_LAFPPR_1_3: = 1;


end if;


-- Total number of premature removal of LAFP within 6 month insertion - Total LAFP removal in the reporting period(MAT_TLAFPR.):Family Planning
elsif p_indic_name = 'indic_MAT_TLAFPR_' then if p_record_x.fp_prev_method_switch_date is not null
and p_record_x.fp_prev_method_switch_date <> ''
and p_record_x.monthly_report = 'yes' then MAT_TLAFPR_: = 1;


end if;


-- Total Number of pregnant women that received antenatal care First contact by gestational week - <= 12 weeks(MAT_ANC1_GA.1. 1):ANC
elsif p_indic_name = 'indic_MAT_ANC1_GA_1_1' then if p_record_x.closed = 'False'
and p_record_x.anc1_gestational_age = '12' then MAT_ANC1_GA_1_1: = 1;


end if;


-- Total number of pregnant women that received four or more antenatal care contacts by gestational week - <= 30 weeks(MAT_ANC4+_GA.1. 1):ANC
elsif p_indic_name = 'indic_MAT_ANC4__GA_1_1' then if p_record_x.anc4_date is not null
and p_record_x.anc4_date <> ''
and p_record_x.closed = 'False'
and p_record_x.gestational_age = '30'
and p_record_x.next_visit_num_hp = '5' then MAT_ANC4__GA_1_1: = 1;


end if;


-- Total number of pregnant women that received four or more antenatal care contacts by gestational week - > 30 weeks(MAT_ANC4+_GA.1. 2):ANC
elsif p_indic_name = 'indic_MAT_ANC4__GA_1_2' then if p_record_x.anc4_date is not null
and p_record_x.anc4_date <> ''
and p_record_x.gestational_age = '30'
and p_record_x.next_visit_num_hp = '5'
and p_record_x.closed = 'False' then MAT_ANC4__GA_1_2: = 1;


end if;


-- Birth and Death Notifications - Number of Community birth notifications given(MAT_B&D_CBN_1.):Birth Attendants (BA)
elsif p_indic_name = 'indic_MAT_B_D_CBN_1_' then if p_record_x.closed = 'False'
and p_record_x.outcome_maternal = 'delivery'
and p_record_x.outcome_location = 'community' then MAT_B_D_CBN_1_: = 1;


end if;


-- Birth and Death Notifications - Number of Community death notifications given(MAT_B&D_CDN_2.):Birth Attendants (BA)
elsif p_indic_name = 'indic_MAT_B_D_CDN_2_' then if p_record_x.closed = 'False'
and p_record_x.outcome_maternal = 'delivery'
and p_record_x.outcome_location = 'community' then MAT_B_D_CDN_2_: = 1;


end if;


-- Number of postnatal visits within 7 days of delivery - Number of postnatal visits within 7 days of delivery(MAT_EPNC.1):Birth Attendants (BA)
elsif p_indic_name = 'indic_MAT_EPNC_1' then if p_record_x.closed = 'False'
and p_record_x.pnc1_hrs_after_birth = '168' then MAT_EPNC_1: = 1;


end if;


-- Number of postnatal visits within 7 days of delivery - 0 - 24 hrs(MAT_EPNC.1. 1):Birth Attendants (BA)
elsif p_indic_name = 'indic_MAT_EPNC_1_1' then if p_record_x.closed = 'False'
and p_record_x.pnc1_hrs_after_birth = '24' then MAT_EPNC_1_1: = 1;


end if;


-- Number of postnatal visits within 7 days of delivery - 25 - 48 hrs (1 - 2 days)(MAT_EPNC.1. 3):Birth Attendants (BA)
elsif p_indic_name = 'indic_MAT_EPNC_1_3' then if p_record_x.closed = 'False'
and p_record_x.pnc1_hrs_after_birth = '24'
and p_record_x.pnc1_hrs_after_birth = '48' then MAT_EPNC_1_3: = 1;


end if;


-- Number of postnatal visits within 7 days of delivery - 49 - 72 hrs (2 - 3 days)(MAT_EPNC.1. 4):Birth Attendants (BA)
elsif p_indic_name = 'indic_MAT_EPNC_1_4' then if p_record_x.closed = 'False'
and p_record_x.pnc1_hrs_after_birth = '48'
and p_record_x.pnc1_hrs_after_birth = '72' then MAT_EPNC_1_4: = 1;


end if;


-- Number of postnatal visits within 7 days of delivery - 73 hrs - 7 days (4 - 7 days)(MAT_EPNC.1. 5):Birth Attendants (BA)
elsif p_indic_name = 'indic_MAT_EPNC_1_5' then if p_record_x.closed = 'False'
and p_record_x.pnc1_hrs_after_birth = '72'
and p_record_x.pnc1_hrs_after_birth = '168' then MAT_EPNC_1_5: = 1;


end if;


-- Neonatal death at community disaggregated by place of death - Total number of live births in the kebele(CH_CND_LB_kebele.):Child Health
elsif p_indic_name = 'indic_CH_CND_LB_kebele_' then if p_record_x.closed = 'False'
and p_record_x.outcome_maternal = 'delivery'
and coalesce(p_record_x.num_still_birth, '') <> '' then CH_CND_LB_kebele_: = 1;


end if;


-- Number of sick young infants 0-2 months treated for Critical illness - Treated for Pneumonia(CH_TX_SYI.1. 3):Child Health
elsif p_indic_name = 'indic_CH_TX_SYI_1_3' then if p_record_x.closed = 'False'
and p_record_x.current_classification like '%pneumonia%'
and extract(
  month
  from
    AGE(
      p_record_x.illness_start_date:: DATE,
      p_record_x.dob:: DATE
    )
) < 60 then CH_TX_SYI_1_3: = 1;


end if;


-- Asphyxiated neonates who were resuscitated (with bag & mask) and survived - Total number of neonates resuscitated(CH_ASPH.2.):Child Health
elsif p_indic_name = 'indic_CH_ASPH_2_' then if (
  p_record_x.current_classification like '%severe_dehydration%'
  or p_record_x.current_classification like '%some_dehydration%'
  or p_record_x.current_classification like '%no_dehydration%'
)
and (
  p_record_x.all_med_names like '%ors%'
  or p_record_x.all_med_names like '%ors_planb%'
  or p_record_x.all_med_names like '%zink%'
)
and p_record_x.asphyxiated_neonate = 'yes' then CH_ASPH_2_: = 1;


end if;


-- Newborns that received at least one dose of CHX to the cord on the first day after birth - Number of Newborns that received at least one dose of CHX to the cord on the first day after birth(CH_CHX.1.):Child Health
elsif p_indic_name = 'indic_CH_CHX_1_' then if (
  p_record_x.current_classification like '%severe_dehydration%'
  or p_record_x.current_classification like '%some_dehydration%'
  or p_record_x.current_classification like '%no_dehydration%'
)
and (
  p_record_x.all_med_names like '%ors%'
  or p_record_x.all_med_names like '%ors_planb%'
  or p_record_x.all_med_names like '%zink%'
)
and p_record_x.received_chlorhexidine = 'yes'
and extract(
  day
  from
    AGE(
      p_record_x.illness_start_date:: DATE,
      p_record_x.dob:: DATE
    )
) <= 1 then CH_CHX_1_: = 1;


end if;


-- Number of Live births who receive a HepB-Birth dose(BD) - Number of children received all vaccine doses before 1st birthday(EPI_FI.1.):EPI
elsif p_indic_name = 'indic_EPI_FI_1_' then if p_record_x.full_immunization_under_1 = 'yes'
and p_record_x.closed = 'False' then EPI_FI_1_: = 1;


end if;


-- BCG Vaccine wastage rate - BCG doses damaged(EPI_VWR_BCG_dam.):EPI
elsif p_indic_name = 'indic_EPI_VWR_BCG_dam_' then if p_record_x.loss_adjustment_reason = 'item_broken'
and p_record_x.medication_name = 'BCG''`(Bacillus`Calmette`Guerin)`Vaccine`Injection`with`Diluent' then EPI_VWR_BCG_dam_: = 1;


end if;


-- BCG Vaccine wastage rate - BCG doses expired(EPI_VWR_BCG_dis.):EPI
elsif p_indic_name = 'indic_EPI_VWR_BCG_dis_' then if p_record_x.loss_adjustment_reason = 'item_expired'
and p_record_x.medication_name = 'BCG''`(Bacillus`Calmette`Guerin)`Vaccine`Injection`with`Diluent' then EPI_VWR_BCG_dis_: = 1;


end if;


-- Penta Vaccine wastage rate - Pentavalent (DPT-HepB-Hib) doses damaged(EPI_VWR_Penta_dam.):EPI
elsif p_indic_name = 'indic_EPI_VWR_Penta_dam_' then if p_record_x.loss_adjustment_reason = 'item_broken'
and p_record_x.medication_name = 'Pentavalent`(DTPHibHep)`Vaccine`Injection' then EPI_VWR_Penta_dam_: = 1;


end if;


-- Penta Vaccine wastage rate - Pentavalent (DPT-HepB-Hib) doses expired(EPI_VWR_Penta_dis.):EPI
elsif p_indic_name = 'indic_EPI_VWR_Penta_dis_' then if p_record_x.loss_adjustment_reason = 'item_expired'
and p_record_x.medication_name = 'Pentavalent`(DTPHibHep)`Vaccine`Injection' then EPI_VWR_Penta_dis_: = 1;


end if;


-- PCV Vaccine wastage rate - Pneumococcal conjugated vaccine doses damaged(EPI_VWR_PCV_dam.):EPI
elsif p_indic_name = 'indic_EPI_VWR_PCV_dam_' then if p_record_x.loss_adjustment_reason = 'item_broken'
and p_record_x.medication_name = 'Pneumeccocal`Conjugate`Vaccine`(10`Valent)`Injection`(Polysaccharide)' then EPI_VWR_PCV_dam_: = 1;


end if;


-- PCV Vaccine wastage rate - Pneumococcal conjugated vaccine doses expired(EPI_VWR_PCV-dis.):EPI
elsif p_indic_name = 'indic_EPI_VWR_PCV_dis_' then if p_record_x.loss_adjustment_reason = 'item_expired'
and p_record_x.medication_name = 'Pneumeccocal`Conjugate`Vaccine`(10`Valent)`Injection`(Polysaccharide)' then EPI_VWR_PCV_dis_: = 1;


end if;


-- Rota Vaccine wastage rate - Rota doses damaged(EPI_VWR_RT_dam.):EPI
elsif p_indic_name = 'indic_EPI_VWR_RT_dam_' then if p_record_x.loss_adjustment_reason = 'item_broken'
and p_record_x.medication_name = 'Rota`Virus`Vaccine' then EPI_VWR_RT_dam_: = 1;


end if;


-- Rota Vaccine wastage rate - Rota doses expired(EPI_VWR_RT_dis.):EPI
elsif p_indic_name = 'indic_EPI_VWR_RT_dis_' then if p_record_x.loss_adjustment_reason = 'item_expired'
and p_record_x.medication_name = 'Rota`Virus`Vaccine' then EPI_VWR_RT_dis_: = 1;


end if;


-- Polio Vaccine wastage rate - Polio doses damaged(EPI_VWR_PV_dam.):EPI
elsif p_indic_name = 'indic_EPI_VWR_PV_dam_' then if p_record_x.loss_adjustment_reason = 'item_broken'
and p_record_x.medication_name = 'BOPV`(Bivalent`Oral`Polio)`Vaccine`Oral`Drop' then EPI_VWR_PV_dam_: = 1;


end if;


-- Polio Vaccine wastage rate - Polio doses expired(EPI_VWR_PV_dis.):EPI
elsif p_indic_name = 'indic_EPI_VWR_PV_dis_' then if p_record_x.loss_adjustment_reason = 'item_expired'
and p_record_x.medication_name = 'BOPV`(Bivalent`Oral`Polio)`Vaccine`Oral`Drop' then EPI_VWR_PV_dis_: = 1;


end if;


-- Measles Vaccine wastage rate - Measles doses damaged(EPI_VWR_MCV_dam.):EPI
elsif p_indic_name = 'indic_EPI_VWR_MCV_dam_' then if p_record_x.loss_adjustment_reason = 'item_broken'
and p_record_x.medication_name = 'Measles`Virus`Vaccine`Injection`(Live`Attenuated`and`Freeze`Dried)`with`Diluent)' then EPI_VWR_MCV_dam_: = 1;


end if;


-- Measles Vaccine wastage rate - Measles doses expired(EPI_VWR_MCV_dis.):EPI
elsif p_indic_name = 'indic_EPI_VWR_MCV_dis_' then if p_record_x.loss_adjustment_reason = 'item_expired'
and p_record_x.medication_name = 'Measles`Virus`Vaccine`Injection`(Live`Attenuated`and`Freeze`Dried)`with`Diluent)' then EPI_VWR_MCV_dis_: = 1;


end if;


-- IPV Vaccine wastage rate - IPV doses damaged(EPI_VWR_IPV_dam.):EPI
elsif p_indic_name = 'indic_EPI_VWR_IPV_dam_' then if p_record_x.loss_adjustment_reason = 'item_broken'
and p_record_x.medication_name = 'IPV`(Inactivated`Polio`Vaccine)' then EPI_VWR_IPV_dam_: = 1;


end if;


-- IPV Vaccine wastage rate - IPV doses expired(EPI_VWR_IPV_dis.):EPI
elsif p_indic_name = 'indic_EPI_VWR_IPV_dis_' then if p_record_x.loss_adjustment_reason = 'item_expired'
and p_record_x.medication_name = 'IPV`(Inactivated`Polio`Vaccine)' then EPI_VWR_IPV_dis_: = 1;


end if;


-- Lymphedema suspected on Screening  @@@ [NTD and NCD Datasource 1 ]
elsif p_indic_name = 'indic_suspected_lymphedema' then if p_record_x.illness_type = 'ntd'
and p_record_x.ntd_lf = 'yes' then suspected_lymphedema: = 1;


end if;


-- Lymphedema suspected on Screening and Referral
elsif p_indic_name = 'indic_refered_suspected_lymphedema' then if p_record_x.illness_type = 'ntd'
and p_record_x.ntd_lf = 'yes'
and p_record_x.ever_referred_to_hc = 'yes' then refered_suspected_lymphedema: = 1;


end if;


-- Trachomatous Trichiasis Suspected on Screening
elsif p_indic_name = 'indic_suspected_trachomatous_trichiasis' then if p_record_x.illness_type = 'ntd'
and p_record_x.ntd_trachomatous_trichiasis = 'yes' then suspected_trachomatous_trichiasis: = 1;


end if;


-- Refered Trachomatous Trichiasis Suspected on Screening
elsif p_indic_name = 'indic_refered_trachomatous_trichiasis' then if p_record_x.illness_type = 'ntd'
and p_record_x.ntd_trachomatous_trichiasis = 'yes'
and p_record_x.ever_referred_to_hc = 'yes' then refered_trachomatous_trichiasis: = 1;


end if;


-- Cutaneous leishmaniasis Suspected on Screening
elsif p_indic_name = 'indic_suspected_Cutaneous_leishmaniasis' then if p_record_x.illness_type = 'ntd'
and p_record_x.ntd_cutaneous_leishmaniasis = 'yes' then suspected_Cutaneous_leishmaniasis: = 1;


end if;


-- Refered :Cutaneous leishmaniasis Suspected on Screening
elsif p_indic_name = 'indic_refered_suspected_Cutaneous_leishmaniasis' then if p_record_x.illness_type = 'ntd'
and p_record_x.ntd_cutaneous_leishmaniasis = 'yes'
and p_record_x.ever_referred_to_hc = 'yes' then refered_suspected_Cutaneous_leishmaniasis: = 1;


end if;


-- Human Guinea Worm Suspected on Screening
elsif p_indic_name = 'indic_suspected_Human_Guinea_Worm' then if p_record_x.illness_type = 'ntd'
and p_record_x.ntd_guinea_worm = 'yes' then suspected_Human_Guinea_Worm: = 1;


end if;


-- Refered :Human Guinea Worm Suspected on Screening
elsif p_indic_name = 'indic_refered_suspected__Human_Guinea_Worm' then if p_record_x.illness_type = 'ntd'
and p_record_x.ntd_guinea_worm = 'yes'
and p_record_x.ever_referred_to_hc = 'yes' then refered_suspected__Human_Guinea_Worm: = 1;


end if;


-- Number of people who swallowed azithromycin or took tetracycline eye ointment to prevent trachoma from the expected eligible population
elsif p_indic_name = 'indic_totNum_swallowed_azithromycin_or_took_tetracycline_eye_ointment' then if p_record_x.tt_medication_received = 'yes' then totNum_swallowed_azithromycin_or_took_tetracycline_eye_ointment: = 1;


end if;


-- Number of who swallowed ivermectin to prevent onchocerciasis from the expected eligible population (>=5 Years)
elsif p_indic_name = 'indic_ivermectin' then if p_record_x.oncho_medication_received = 'yes' then ivermectin: = 1;


end if;


-- Number of people who swallowed a drug to prevent lymphatic filariasis from the expected eligible population (>=5 Years)
elsif p_indic_name = 'indic_lymphatic_filariasis' then if p_record_x.lf_medication_received = 'yes' then lymphatic_filariasis: = 1;


end if;


-- Number of children who swallowed a drug to prevent schistosomiasis from the expected eligible children (5 to 15 Years)
elsif p_indic_name = 'indic_prevent_schistosomiasis' then if p_record_x.sch_medication_received = 'yes' then prevent_schistosomiasis: = 1;


end if;


-- Number of children who swallowed a drug to prevent soil transmitted helminthiasis from the expected eligible children (5 to 19 Years )
elsif p_indic_name = 'indic_prevent_soil_transmitted_helminthiasis' then if p_record_x.sth_medication_received = 'yes'
and p_record_x.age_years = '5'
and p_record_x.age_years = '19' then prevent_soil_transmitted_helminthiasis: = 1;


end if;


-- Number of Women who swallowed a drug to prevent soil transmitted helminthiasis from women reproductive age (20-49 Years)
elsif p_indic_name = 'indic_prevent_schistosomiasis_gt' then if p_record_x.sch_medication_received = 'yes'
and p_record_x.age_years = '20'
and p_record_x.age_years = '49' then prevent_schistosomiasis_gt: = 1;


end if;


-- Number of individuals swallowed MDA drug for trachoma - < 6 months, Male(NTD_TR.1. 1):NTD
elsif p_indic_name = 'indic_NTD_TR_1_1' then if p_record_x.tt_medication_received = 'yes'
and p_record_x.gender = 'male' then NTD_TR_1_1: = 1;


end if;


-- Number of individuals swallowed MDA drug for trachoma - < 6 months, Female(NTD_TR.1. 2):NTD
elsif p_indic_name = 'indic_NTD_TR_1_2' then if p_record_x.tt_medication_received = 'yes'
and p_record_x.gender = 'female' then NTD_TR_1_2: = 1;


end if;


-- Number of individuals swallowed MDA drug for trachoma - 6 months-7 years, Male(NTD_TR.1. 3):NTD
elsif p_indic_name = 'indic_NTD_TR_1_3' then if p_record_x.tt_medication_received = 'yes'
and p_record_x.gender = 'male' then NTD_TR_1_3: = 1;


end if;


-- Number of individuals swallowed MDA drug for trachoma - 6 months-7 years, Female(NTD_TR.1. 4):NTD
elsif p_indic_name = 'indic_NTD_TR_1_4' then if p_record_x.tt_medication_received = 'yes'
and p_record_x.gender = 'female' then NTD_TR_1_4: = 1;


end if;


-- Number of individuals swallowed MDA drug for trachoma - 7 - 14 years, Male(NTD_TR.1. 5):NTD
elsif p_indic_name = 'indic_NTD_TR_1_5' then if p_record_x.tt_medication_received = 'yes'
and p_record_x.gender = 'male' then NTD_TR_1_5: = 1;


end if;


-- Number of individuals swallowed MDA drug for trachoma - 7 - 14 years, Female(NTD_TR.1. 6):NTD
elsif p_indic_name = 'indic_NTD_TR_1_6' then if p_record_x.tt_medication_received = 'yes'
and p_record_x.gender = 'female' then NTD_TR_1_6: = 1;


end if;


-- Number of individuals swallowed MDA drug for trachoma - >= 15 years, Male(NTD_TR.1. 7):NTD
elsif p_indic_name = 'indic_NTD_TR_1_7' then if p_record_x.tt_medication_received = 'yes'
and p_record_x.gender = 'male' then NTD_TR_1_7: = 1;


end if;


-- Number of individuals swallowed MDA drug for trachoma - >= 15 years, Female(NTD_TR.1. 8):NTD
elsif p_indic_name = 'indic_NTD_TR_1_8' then if p_record_x.tt_medication_received = 'yes'
and p_record_x.gender = 'female' then NTD_TR_1_8: = 1;


end if;


-- Number of individuals swallowed MDA drug for Onchocerciasis - 5 - 14 years, Male(NTD_ONCH.1. 1):NTD
elsif p_indic_name = 'indic_NTD_ONCH_1_1' then if p_record_x.oncho_medication_received = 'yes'
and p_record_x.gender = 'male' then NTD_ONCH_1_1: = 1;


end if;


-- Number of individuals swallowed MDA drug for Onchocerciasis - 5 - 14 years, Female(NTD_ONCH.1. 2):NTD
elsif p_indic_name = 'indic_NTD_ONCH_1_2' then if p_record_x.oncho_medication_received = 'yes'
and p_record_x.gender = 'female' then NTD_ONCH_1_2: = 1;


end if;


-- Number of individuals swallowed MDA drug for Onchocerciasis - >= 15 years, Male(NTD_ONCH.1. 3):NTD
elsif p_indic_name = 'indic_NTD_ONCH_1_3' then if p_record_x.oncho_medication_received = 'yes'
and p_record_x.gender = 'male' then NTD_ONCH_1_3: = 1;


end if;


-- Number of individuals swallowed MDA drug for Onchocerciasis - >= 15 years, Female(NTD_ONCH.1. 4):NTD
elsif p_indic_name = 'indic_NTD_ONCH_1_4' then if p_record_x.oncho_medication_received = 'yes'
and p_record_x.gender = 'female' then NTD_ONCH_1_4: = 1;


end if;


-- Number of individuals swallowed MDA drug for Lymphatic Filariasis - 5 - 14 years, Male(NTD_LF.1. 1):NTD
elsif p_indic_name = 'indic_NTD_LF_1_1' then if p_record_x.lf_medication_received = 'yes'
and p_record_x.gender = 'male' then NTD_LF_1_1: = 1;


end if;


-- Number of individuals swallowed MDA drug for Lymphatic Filariasis - 5 - 14 years, Female(NTD_LF.1. 2):NTD
elsif p_indic_name = 'indic_NTD_LF_1_2' then if p_record_x.lf_medication_received = 'yes'
and p_record_x.gender = 'female' then NTD_LF_1_2: = 1;


end if;


-- Number of individuals swallowed MDA drug for Lymphatic Filariasis - >= 15 years, Male(NTD_LF.1. 3):NTD
elsif p_indic_name = 'indic_NTD_LF_1_3' then if p_record_x.lf_medication_received = 'yes'
and p_record_x.gender = 'male' then NTD_LF_1_3: = 1;


end if;


-- Number of individuals swallowed MDA drug for Lymphatic Filariasis - >= 15 years, Female(NTD_LF.1. 4):NTD
elsif p_indic_name = 'indic_NTD_LF_1_4' then if p_record_x.lf_medication_received = 'yes'
and p_record_x.gender = 'female' then NTD_LF_1_4: = 1;


end if;


-- Number of individuals swallowed MDA drug for Schistosomiasis - 5 - 14 years, Male(NTD_SCH.1. 1):NTD
elsif p_indic_name = 'indic_NTD_SCH_1_1' then if p_record_x.sch_medication_received = 'yes'
and p_record_x.gender = 'male' then NTD_SCH_1_1: = 1;


end if;


-- Number of individuals swallowed MDA drug for Schistosomiasis - 5 - 14 years, Female(NTD_SCH.1. 2):NTD
elsif p_indic_name = 'indic_NTD_SCH_1_2' then if p_record_x.sch_medication_received = 'yes'
and p_record_x.gender = 'female' then NTD_SCH_1_2: = 1;


end if;


-- Number of individuals swallowed MDA drug for Schistosomiasis - >= 15 years, Male(NTD_SCH.1. 3):NTD
elsif p_indic_name = 'indic_NTD_SCH_1_3' then if p_record_x.sch_medication_received = 'yes'
and p_record_x.gender = 'male' then NTD_SCH_1_3: = 1;


end if;


-- Number of individuals swallowed MDA drug for Schistosomiasis - >= 15 years, Female(NTD_SCH.1. 4):NTD
elsif p_indic_name = 'indic_NTD_SCH_1_4' then if p_record_x.sch_medication_received = 'yes'
and p_record_x.gender = 'female' then NTD_SCH_1_4: = 1;


end if;


-- Number of individuals swallowed MDA drug for Soil transmitting helminthes (STH) - 5 - 14 years, Male(NTD_STH.1. 1):NTD
elsif p_indic_name = 'indic_NTD_STH_1_1' then if p_record_x.sth_medication_received = 'yes'
and p_record_x.gender = 'male' then NTD_STH_1_1: = 1;


end if;


-- Number of individuals swallowed MDA drug for Soil transmitting helminthes (STH) - 5 - 14 years, Female(NTD_STH.1. 2):NTD
elsif p_indic_name = 'indic_NTD_STH_1_2' then if p_record_x.sth_medication_received = 'yes'
and p_record_x.gender = 'female' then NTD_STH_1_2: = 1;


end if;


-- Number of individuals swallowed MDA drug for Soil transmitting helminthes (STH) - 15 - 19 years, Male(NTD_STH.1. 3):NTD
elsif p_indic_name = 'indic_NTD_STH_1_3' then if p_record_x.sth_medication_received = 'yes'
and p_record_x.gender = 'male' then NTD_STH_1_3: = 1;


end if;


-- Number of individuals swallowed MDA drug for Soil transmitting helminthes (STH) - 15 - 19 years, Female(NTD_STH.1. 4):NTD
elsif p_indic_name = 'indic_NTD_STH_1_4' then if p_record_x.sth_medication_received = 'yes'
and p_record_x.gender = 'female' then NTD_STH_1_4: = 1;


end if;


-- Number of individuals swallowed MDA drug for Soil transmitting helminthes (STH) - >= 20 years, Male(NTD_STH.1. 5):NTD
elsif p_indic_name = 'indic_NTD_STH_1_5' then if p_record_x.sth_medication_received = 'yes'
and p_record_x.gender = 'male' then NTD_STH_1_5: = 1;


end if;


-- Number of individuals swallowed MDA drug for Soil transmitting helminthes (STH) - >= 20 years, Female(NTD_STH.1. 6):NTD
elsif p_indic_name = 'indic_NTD_STH_1_6' then if p_record_x.sth_medication_received = 'yes'
and p_record_x.gender = 'female' then NTD_STH_1_6: = 1;


end if;


-- Number of Individuals screened for hypertension - 18 - 29 years, Male(NCT_HTN. 1):NCD
elsif p_indic_name = 'indic_NCT_HTN_1' then if p_record_x.illness_type = 'ncd'
and p_record_x.illnesses_to_screen = 'hypertension'
and p_record_x.gender = 'male' then NCT_HTN_1: = 1;


end if;


-- Number of Individuals screened for hypertension - 18 - 29 years, Female(NCT_HTN. 2):NCD
elsif p_indic_name = 'indic_NCT_HTN_2' then if p_record_x.illness_type = 'ncd'
and p_record_x.illnesses_to_screen = 'hypertension'
and p_record_x.gender = 'female' then NCT_HTN_2: = 1;


end if;


-- Number of Individuals screened for hypertension - 30 - 39 years, Male(NCT_HTN. 3):NCD
elsif p_indic_name = 'indic_NCT_HTN_3' then if p_record_x.illness_type = 'ncd'
and p_record_x.illnesses_to_screen = 'hypertension'
and p_record_x.gender = 'male' then NCT_HTN_3: = 1;


end if;


-- Number of Individuals screened for hypertension - 30 - 39 years, Female(NCT_HTN. 4):NCD
elsif p_indic_name = 'indic_NCT_HTN_4' then if p_record_x.illness_type = 'ncd'
and p_record_x.illnesses_to_screen = 'hypertension'
and p_record_x.gender = 'female' then NCT_HTN_4: = 1;


end if;


-- Number of Individuals screened for hypertension - 40 - 69 years, Male(NCT_HTN. 5):NCD
elsif p_indic_name = 'indic_NCT_HTN_5' then if p_record_x.illness_type = 'ncd'
and p_record_x.illnesses_to_screen = 'hypertension'
and p_record_x.gender = 'male' then NCT_HTN_5: = 1;


end if;


-- Number of Individuals screened for hypertension - 40 - 69 years, Female(NCT_HTN. 6):NCD
elsif p_indic_name = 'indic_NCT_HTN_6' then if p_record_x.illness_type = 'ncd'
and p_record_x.illnesses_to_screen = 'hypertension'
and p_record_x.gender = 'female' then NCT_HTN_6: = 1;


end if;


-- Number of Individuals screened for hypertension - >=70 years, Male(NCT_HTN. 7):NCD
elsif p_indic_name = 'indic_NCT_HTN_7' then if p_record_x.illness_type = 'ncd'
and p_record_x.illnesses_to_screen = 'hypertension'
and p_record_x.gender = 'male' then NCT_HTN_7: = 1;


end if;


-- Number of Individuals screened for hypertension - >=70 years, Female(NCT_HTN. 8):NCD
elsif p_indic_name = 'indic_NCT_HTN_8' then if p_record_x.illness_type = 'ncd'
and p_record_x.illnesses_to_screen = 'hypertension'
and p_record_x.gender = 'female' then NCT_HTN_8: = 1;


end if;


-- Number of Individuals screened for hypertension by result of screening - Raised BP(NCD_HTNDX.1.2. 1):NCD
elsif p_indic_name = 'indic_NCD_HTNDX_1_2_1' then if p_record_x.illness_type = 'ncd'
and p_record_x.illnesses_to_screen = 'hypertension' then NCD_HTNDX_1_2_1: = 1;


end if;


-- Number of Individuals screened for hypertension by result of screening - Normal BP(NCD_HTNDX.1.2. 2):NCD
elsif p_indic_name = 'indic_NCD_HTNDX_1_2_2' then if p_record_x.illness_type = 'ncd'
and p_record_x.illnesses_to_screen = 'hypertension' then NCD_HTNDX_1_2_2: = 1;


end if;


-- Number of Individuals screened for hypertension by result of screening - Hypertensive patients refered to Health Center for further investigation(NCD_HTNDX.1.2. 3):NCD
elsif p_indic_name = 'indic_NCD_HTNDX_1_2_3' then if p_record_x.illness_type = 'ncd'
and p_record_x.illnesses_to_screen = 'hypertension' then NCD_HTNDX_1_2_3: = 1;


end if;


-- Individuals screened for Diabetes Mellitus by age and sex - < 40 years, Male(NCD_DMDX.1.2. 1):NCD
elsif p_indic_name = 'indic_NCD_DMDX_1_2_1' then if p_record_x.illness_type = 'ncd'
and p_record_x.illnesses_to_screen = 'diabetes'
and p_record_x.gender = 'male' then NCD_DMDX_1_2_1: = 1;


end if;


-- Individuals screened for Diabetes Mellitus by age and sex - < 40 years, Female(NCD_DMDX.1.2. 2):NCD
elsif p_indic_name = 'indic_NCD_DMDX_1_2_2' then if p_record_x.illness_type = 'ncd'
and p_record_x.illnesses_to_screen = 'diabetes'
and p_record_x.gender = 'female' then NCD_DMDX_1_2_2: = 1;


end if;


-- Individuals screened for Diabetes Mellitus by age and sex - >= 40 years, Male(NCD_DMDX.1.2. 3):NCD
elsif p_indic_name = 'indic_NCD_DMDX_1_2_3' then if p_record_x.illness_type = 'ncd'
and p_record_x.illnesses_to_screen = 'diabetes'
and p_record_x.gender = 'male' then NCD_DMDX_1_2_3: = 1;


end if;


-- Individuals screened for Diabetes Mellitus by age and sex - >= 40 years, Female(NCD_DMDX.1.2. 4):NCD
elsif p_indic_name = 'indic_NCD_DMDX_1_2_4' then if p_record_x.illness_type = 'ncd'
and p_record_x.illnesses_to_screen = 'diabetes'
and p_record_x.gender = 'female' then NCD_DMDX_1_2_4: = 1;


end if;


-- Total number of malaria case (or infection) in which the parasite has been detected in a diagnostic test, i.e. microscopy, a rapid diagnostic test or a molecular diagnostic test @@@[Malaria Datasource v2]
elsif p_indic_name = 'indic_confirmed_malaria_cases_ftat' then if p_record_x.illness_type = 'malaria'
and p_record_x.visit_type = 'FTAT' then confirmed_malaria_cases_ftat: = 1;


end if;


-- Number of malaria case (or infection) in which the parasite has been detected in a diagnostic test within the jurisdiction of the health post
elsif p_indic_name = 'indic_confirmed_malaria_cases_hp' then if p_record_x.illness_type = 'malaria'
and p_record_x.investigated_for_malaria = 'yes' then confirmed_malaria_cases_hp: = 1;


end if;


-- Number of index case households and those demarcated from the index case house within 70m radius or nearest five households where houses densely clustered and visited
elsif p_indic_name = 'indic_households_investigated' then if p_record_x.ftat_status = 'Case investigation completed'
or p_record_x.ftat_status = 'In progress' then households_investigated: = 1;


end if;


-- Number of individuals listed in the investigated index case and neighboring households and entitled for finger prick except index cases, < 6 months infants, and sever malaria cases
elsif p_indic_name = 'indic_entitled_for_finger_prick' then if p_record_x.complications = ''
and rpt_fn_get_parent_value(
  'investigated_for_malaria',
  'client',
  'illness',
  'indices.client',
  p_record_x.id
) = 'yes'
and extract(
  month
  from
    AGE(
      p_record_x.ftat_report_month_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 6 then entitled_for_finger_prick: = 1;


end if;


-- Number of individuals listed in the investigated index case and neighboring households whom received finger prick
elsif p_indic_name = 'indic_received_finger_prick' then if p_record_x.investigated_for_malaria = 'yes' then received_finger_prick: = 1;


end if;


-- Number of confirmed malaria cases/infections reported during case investigation
elsif p_indic_name = 'indic_confirmed_malaria_cases' then if p_record_x.illness_type = 'malaria'
and p_record_x.investigated_for_malaria = 'yes' then confirmed_malaria_cases: = 1;


end if;


-- Number of confirmed malaria cases/infections reported as plasmodium falciparium during case investigation
elsif p_indic_name = 'indic_confirmed_malaria_cases_plasmodium_falciparium' then if p_record_x.illness_type = 'malaria'
and p_record_x.investigated_for_malaria = 'yes'
and p_record_x.rdt_type = 'pf' then confirmed_malaria_cases_plasmodium_falciparium: = 1;


end if;


-- Number of confirmed malaria cases/infections reported as plasmodium vivax during case investigation
elsif p_indic_name = 'indic_confirmed_malaria_cases_plasmodium_vivax' then if p_record_x.illness_type = 'malaria'
and p_record_x.investigated_for_malaria = 'yes'
and p_record_x.rdt_type = 'pv' then confirmed_malaria_cases_plasmodium_vivax: = 1;


end if;


-- Number of confirmed malaria cases/infections reported as mixed (pf/pv) during case investigation
elsif p_indic_name = 'indic_confirmed_malaria_cases_mixed' then if p_record_x.illness_type = 'malaria'
and p_record_x.investigated_for_malaria = 'yes'
and p_record_x.rdt_type = 'mixed' then confirmed_malaria_cases_mixed: = 1;


end if;


-- Confirmed malaria case or infection in which the infection was acquired outside the area in s/he lives
elsif p_indic_name = 'indic_Cases_with_travel_history' then if p_record_x.illness_type = 'malaria'
and p_record_x.investigated_for_malaria = 'yes'
and p_record_x.travel_history = 'yes' then Cases_with_travel_history: = 1;


end if;


-- Confirmed malaria case or infection contracted locally with no evidence of importation
elsif p_indic_name = 'indic_Cases_without_travel_history' then if p_record_x.illness_type = 'malaria'
and p_record_x.investigated_for_malaria = 'yes'
and p_record_x.travel_history = 'no' then Cases_without_travel_history: = 1;


end if;


-- Number of households sprayed
elsif p_indic_name = 'indic_Number_of_households_sprayed' then if p_record_x.chemical_spray = 'yes' then Number_of_households_sprayed: = 1;


end if;


-- Number of people protected because of chemical spray
elsif p_indic_name = 'indic_number_people_protected_by_chemical_spray' then if p_record_x.chemical_spray = 'yes'
and coalesce(
  p_record_x.number_people_protected_by_chemical_spray,
  ''
) <> '' then number_people_protected_by_chemical_spray: = p_record_x.number_people_protected_by_chemical_spray:: INTEGER;


end if;


-- Amount of chemical used in kg
elsif p_indic_name = 'indic_chemical_used_in_kg' then if p_record_x.chemical_spray = 'yes'
and coalesce(p_record_x.chemical_used_in_kg, '') <> '' then chemical_used_in_kg: = p_record_x.chemical_used_in_kg:: INTEGER;


end if;


-- Number of visited households on bednet usage
elsif p_indic_name = 'indic_bednet_usage' then if coalesce(p_record_x.llitn_properly_used, '') <> '' then bednet_usage: = 1;


end if;


-- Number of visited households who have properly used their bednet
elsif p_indic_name = 'indic_llitn_properly_used' then if coalesce(p_record_x.llitn_properly_used, '') = 'yes' then llitn_properly_used: = 1;


end if;


-- Number of clients suspected for malaria, and tested with RDT
elsif p_indic_name = 'indic_suspected_and_tested_with_rdt' then if p_record_x.illness_type = 'malaria'
and p_record_x.suspected = 'yes'
and p_record_x.rdt_type <> 'yes'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
) then suspected_and_tested_with_rdt: = 1;


end if;


-- Total Malaria Cases Confirmed by RDT
elsif p_indic_name = 'indic_Total_Malaria_Cases_Confirmed_RDT' then if p_record_x.illness_type = 'malaria'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and coalesce(p_record_x.rdt_type, '') <> '' then Total_Malaria_Cases_Confirmed_RDT: = 1;


end if;


-- RDT Confirmed Malaria Cases by Plasmodium Species- P. Falciparum
elsif p_indic_name = 'indic_RDT_Confirmed_Malaria_Cases_pf' then if p_record_x.illness_type = 'malaria'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and coalesce(p_record_x.rdt_type, '') = 'pf' then RDT_Confirmed_Malaria_Cases_pf: = 1;


end if;


-- RDT Confirmed Malaria Cases by Plasmodium Species- P. Vivax
elsif p_indic_name = 'indic_RDT_Confirmed_Malaria_Cases_pv' then if p_record_x.illness_type = 'malaria'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and coalesce(p_record_x.rdt_type, '') = 'pv' then RDT_Confirmed_Malaria_Cases_pv: = 1;


end if;


-- Total Malaria Cases by Age Category- Under 5 years
elsif p_indic_name = 'indic_Malaria_Cases_under_5' then if p_record_x.illness_type = 'malaria'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and coalesce(p_record_x.rdt_type, '') <> ''
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) < 5 then Malaria_Cases_under_5: = 1;


end if;


-- Total Malaria Cases by Age Category- From 5 to 14 years
elsif p_indic_name = 'indic_Malaria_Cases_5_to_14' then if p_record_x.illness_type = 'malaria'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and coalesce(p_record_x.rdt_type, '') <> ''
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 5
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) <= 14 then Malaria_Cases_5_to_14: = 1;


end if;


-- Total Malaria Cases by Age Category- over 15 years
elsif p_indic_name = 'indic_Malaria_Cases_over_15' then if p_record_x.illness_type = 'malaria'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and coalesce(p_record_x.rdt_type, '') <> ''
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 15 then Malaria_Cases_over_15: = 1;


end if;


-- Pregant mothers with positive malaria cases
elsif p_indic_name = 'indic_positive_Pregant_mothers' then if p_record_x.illness_type = 'malaria'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and coalesce(p_record_x.rdt_type, '') <> ''
and rpt_fn_get_parent_value(
  'pregnant',
  'client',
  'illness',
  'indices.client',
  p_record_x.id
) = 'yes' then positive_Pregant_mothers: = 1;


end if;


-- Mal_Pos.1:Number of slides or RDT positive for malaria
elsif p_indic_name = 'indic_RDT_positive_for_malaria' then if p_record_x.illness_type = 'malaria'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
) then RDT_positive_for_malaria: = 1;


end if;


-- Mal_Pos.1.1:Number of slides or RDT positive for malaria< 5 yr : Male
elsif p_indic_name = 'indic_RDT_positive_for_malaria_male_under_5' then if p_record_x.illness_type = 'malaria'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and rpt_fn_get_parent_value(
  'gender',
  'client',
  'illness',
  'indices.client',
  p_record_x.id
) = 'male'
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) < 5 then RDT_positive_for_malaria_male_under_5: = 1;


end if;


-- Mal_Pos.1.2:Number of slides or RDT positive for malaria< 5 yr : FeMale
elsif p_indic_name = 'indic_RDT_positive_for_malaria_female_under_5' then if p_record_x.illness_type = 'malaria'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and coalesce(p_record_x.rdt_type, '') <> ''
and rpt_fn_get_parent_value(
  'gender',
  'client',
  'illness',
  'indices.client',
  p_record_x.id
) = 'female'
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) < 5 then RDT_positive_for_malaria_female_under_5: = 1;


end if;


-- Mal_Pos.1.3:Number of slides or RDT positive for malaria > 5 yr and < 14 yr : Male
elsif p_indic_name = 'indic_RDT_positive_for_malaria_male_over_5_under_14' then if p_record_x.illness_type = 'malaria'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and rpt_fn_get_parent_value(
  'gender',
  'client',
  'illness',
  'indices.client',
  p_record_x.id
) = 'male'
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 5
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) <= 14 then RDT_positive_for_malaria_male_over_5_under_14: = 1;


end if;


-- Mal_Pos.1.4:Number of slides or RDT positive for malaria > 5 yr and < 14 yr : FeMale
elsif p_indic_name = 'indic_RDT_positive_for_malaria_female_over_5_under_14' then if p_record_x.illness_type = 'malaria'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and rpt_fn_get_parent_value(
  'gender',
  'client',
  'illness',
  'indices.client',
  p_record_x.id
) = 'female'
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 5
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) <= 14 then RDT_positive_for_malaria_female_over_5_under_14: = 1;


end if;


-- Mal_Pos.1.5:Number of slides or RDT positive for malaria > 15 yr : Male
elsif p_indic_name = 'indic_RDT_positive_for_malaria_male_over_15' then if p_record_x.illness_type = 'malaria'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and rpt_fn_get_parent_value(
  'gender',
  'client',
  'illness',
  'indices.client',
  p_record_x.id
) = 'male'
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 15 then RDT_positive_for_malaria_male_over_15: = 1;


end if;


-- Mal_Pos.1.6:Number of slides or RDT positive for malaria > 15 yr : FeMale
elsif p_indic_name = 'indic_RDT_positive_for_malaria_female_over_15' then if p_record_x.illness_type = 'malaria'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and rpt_fn_get_parent_value(
  'gender',
  'client',
  'illness',
  'indices.client',
  p_record_x.id
) = 'female'
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 15 then RDT_positive_for_malaria_female_over_15: = 1;


end if;


-- Mal_DX : Total number of slides or RDT performed for malaria diagnosis
elsif p_indic_name = 'indic_rdt_performed_for_malaria_diagnosis' then if p_record_x.screened_for_malaria = 'yes' then rdt_performed_for_malaria_diagnosis: = 1;


end if;


-- Number of malaria positive clients disaggregated by age
elsif p_indic_name = 'indic_malaria_positive_clients' then if p_record_x.illness_type = 'malaria'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
) then malaria_positive_clients: = 1;


end if;


-- Number of malaria positive clients disaggregated by age < 1
elsif p_indic_name = 'indic_malaria_positive_clients_under_1' then if p_record_x.illness_type = 'malaria'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) < 1 then malaria_positive_clients_under_1: = 1;


end if;


-- Number of malaria positive clients disaggregated by age < 1 - New
elsif p_indic_name = 'indic_malaria_positive_clients_under_1_new' then if p_record_x.illness_type = 'malaria'
and p_record_x.client_type = 'new'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) < 1 then malaria_positive_clients_under_1_new: = 1;


end if;


-- Number of malaria positive clients disaggregated by age < 1 - Repeat
elsif p_indic_name = 'indic_malaria_positive_clients_under_1_repeat' then if p_record_x.illness_type = 'malaria'
and p_record_x.client_type = 'repeat'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 1
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) <= 4 then malaria_positive_clients_under_1_repeat: = 1;


end if;


-- Number of malaria positive clients disaggregated by age over 1 under 4
elsif p_indic_name = 'indic_malaria_positive_clients_over_1_under_4' then if p_record_x.illness_type = 'malaria'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 1
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) <= 4 then malaria_positive_clients_over_1_under_4: = 1;


end if;


-- Number of malaria positive clients disaggregated by age over 1 under 4-New
elsif p_indic_name = 'indic_malaria_positive_clients_over_1_under_4_new' then if p_record_x.illness_type = 'malaria'
and p_record_x.client_type = 'new'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 1
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) <= 4 then malaria_positive_clients_over_1_under_4_new: = 1;


end if;


-- Number of malaria positive clients disaggregated by age over 1 under 4-Repeat
elsif p_indic_name = 'indic_malaria_positive_clients_over_1_under_4_repeat' then if p_record_x.illness_type = 'malaria'
and p_record_x.client_type = 'repeat'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 1
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) <= 4 then malaria_positive_clients_over_1_under_4_repeat: = 1;


end if;


-- Number of malaria positive clients disaggregated by age over 5 under 14
elsif p_indic_name = 'indic_malaria_positive_clients_over_5_under_14' then if p_record_x.illness_type = 'malaria'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 5
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) <= 15 then malaria_positive_clients_over_5_under_14: = 1;


end if;


-- Number of malaria positive clients disaggregated by age over 5 under 14-New
elsif p_indic_name = 'indic_malaria_positive_clients_over_5_under_14_new' then if p_record_x.illness_type = 'malaria'
and p_record_x.client_type = 'new'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 5
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) <= 15 then malaria_positive_clients_over_5_under_14_new: = 1;


end if;


-- Number of malaria positive clients disaggregated by age over 5 under 14-Repeat
elsif p_indic_name = 'indic_malaria_positive_clients_over_5_under_14_repeat' then if p_record_x.illness_type = 'malaria'
and p_record_x.client_type = 'repeat'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 5
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) <= 15 then malaria_positive_clients_over_5_under_14_repeat: = 1;


end if;


-- Number of malaria positive clients disaggregated by age over 15
elsif p_indic_name = 'indic_malaria_positive_clients_over_15' then if p_record_x.illness_type = 'malaria'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 15 then malaria_positive_clients_over_15: = 1;


end if;


-- Number of malaria positive clients disaggregated by age over 15-New
elsif p_indic_name = 'indic_malaria_positive_clients_over_15_new' then if p_record_x.illness_type = 'malaria'
and p_record_x.client_type = 'new'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 15 then malaria_positive_clients_over_15_new: = 1;


end if;


-- Number of malaria positive clients disaggregated by age over 15-Repeat
elsif p_indic_name = 'indic_malaria_positive_clients_over_15_repeat' then if p_record_x.illness_type = 'malaria'
and p_record_x.client_type = 'repeat'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
)
and extract(
  year
  from
    AGE(
      p_record_x.hew_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 15 then malaria_positive_clients_over_15_repeat: = 1;


end if;


-- Number of pregnant women with positive malaria case (HP Level)
elsif p_indic_name = 'indic_hp_positive_malaria_pregnant_women' then if p_record_x.illness_type = 'malaria'
and p_record_x.pregnant = 'yes'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
) then hp_positive_malaria_pregnant_women: = 1;


end if;


-- Number of clients suspected for malaria, but not tested
elsif p_indic_name = 'indic_malaria_suspect_but_not_tested' then if p_record_x.illness_type = 'malaria'
and p_record_x.suspected = 'yes'
and p_record_x.tested = 'no'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
) then malaria_suspect_but_not_tested: = 1;


end if;


-- Number of clients tested for malaria
elsif p_indic_name = 'indic_malaria_suspect_tested' then if p_record_x.illness_type = 'malaria'
and p_record_x.tested = 'yes'
and (
  p_record_x.screening_location = 'health_post'
  or p_record_x.screening_location = 'community'
) then malaria_suspect_tested: = 1;


end if;


-- Number of breeding sites
elsif p_indic_name = 'indic_breeding_site' then if p_record_x.case_type = 'breeding_site' then breeding_site: = 1;


end if;


-- Number of breeding sites- Permanent
elsif p_indic_name = 'indic_breeding_site_permanent' then if p_record_x.type_of_site = 'permanent' then breeding_site_permanent: = 1;


end if;


-- Number of breeding sites- Temporary
elsif p_indic_name = 'indic_breeding_site_temporary' then if p_record_x.type_of_site = 'temporary' then breeding_site_temporary: = 1;


end if;


-- Draining Activity-larva_control
elsif p_indic_name = 'indic_larva_control' then if p_record_x.draining_date is not null
and coalesce(p_record_x.draining_date, '') <> '' then larva_control: = 1;


end if;


-- Draining Activity- Area in sq.m
elsif p_indic_name = 'indic_larva_control_in_sq_km' then if p_record_x.draining_date is not null
and coalesce(p_record_x.draining_date, '') <> ''
and coalesce(p_record_x.area_of_site_in_sq_m, '') <> '' then larva_control_in_sq_km: = ROUND(p_record_x.area_of_site_in_sq_m:: numeric):: INTEGER;


end if;


-- Draining Activity-Number of times
elsif p_indic_name = 'indic_larva_control_Number_of_times' then if p_record_x.draining_date is not null
and coalesce(p_record_x.draining_date, '') <> '' then larva_control_Number_of_times: = 1;


end if;


-- Compacting Activity- Number of Locations
elsif p_indic_name = 'indic_compacting_activity' then if p_record_x.compacting_date is not null
and coalesce(p_record_x.compacting_date, '') <> '' then compacting_activity: = 1;


end if;


-- Compacting Activity- Area in sq.m:Malaria
elsif p_indic_name = 'indic_compacting_activity_in_sq_km' then if p_record_x.compacting_date is not null
and coalesce(p_record_x.compacting_date, '') <> ''
and coalesce(p_record_x.area_of_site_in_sq_m, '') <> '' then compacting_activity_in_sq_km: = ROUND(p_record_x.area_of_site_in_sq_m:: numeric):: INTEGER;


end if;


-- Compacting Activity-Number of times
elsif p_indic_name = 'indic_compacting_activity_Number_of_times' then if p_record_x.compacting_date is not null
and coalesce(p_record_x.compacting_date, '') <> '' then compacting_activity_Number_of_times: = 1;


end if;


-- Clearing Activity- Number of Locations
elsif p_indic_name = 'indic_clearing_activity' then if p_record_x.clearing_date is not null
and coalesce(p_record_x.clearing_date, '') <> '' then clearing_activity: = 1;


end if;


-- Clearing Activity- Area in sq.m
elsif p_indic_name = 'indic_clearing_activity_in_sq_km' then if p_record_x.clearing_date is not null
and coalesce(p_record_x.clearing_date, '') <> ''
and coalesce(p_record_x.area_of_site_in_sq_m, '') <> '' then clearing_activity_in_sq_km: = ROUND(p_record_x.area_of_site_in_sq_m:: numeric):: INTEGER;


end if;


-- Clearing Activity-Number of times
elsif p_indic_name = 'indic_clearing_activity_Number_of_times' then if p_record_x.clearing_date is not null
and coalesce(p_record_x.clearing_date, '') <> '' then clearing_activity_Number_of_times: = 1;


end if;


-- Filling Activity- Number of Locations
elsif p_indic_name = 'indic_filling_activity' then if p_record_x.filling_date is not null
and coalesce(p_record_x.filling_date, '') <> '' then filling_activity: = 1;


end if;


-- Filling Activity- Area in sq.m
elsif p_indic_name = 'indic_filling_activity_in_sq_km' then if p_record_x.filling_date is not null
and coalesce(p_record_x.filling_date, '') <> ''
and coalesce(p_record_x.area_of_site_in_sq_m, '') <> '' then filling_activity_in_sq_km: = ROUND(p_record_x.area_of_site_in_sq_m:: numeric):: INTEGER;


end if;


-- Filling Activity-Number of times
elsif p_indic_name = 'indic_filling_activity_Number_of_times' then if p_record_x.filling_date is not null
and coalesce(p_record_x.filling_date, '') <> '' then filling_activity_Number_of_times: = 1;


end if;


-- Bednet Usage-Number of households who own bednets and use them properly
elsif p_indic_name = 'indic_households_who_own_bednets' then if coalesce((p_record_x.llitn_properly_used):: INTEGER, 0) >= 1 then households_who_own_bednets: = 1;


end if;


-- Bednet Usage-Number of households who own bednets and do not use them
elsif p_indic_name = 'indic_households_who_own_but_not_use' then if coalesce((p_record_x.llitn_properly_used):: INTEGER, 0) = 0
and coalesce((p_record_x.llitn_distributed):: INTEGER, 0) >= 1 then households_who_own_but_not_use: = 1;


end if;


-- Bednet Usage-Number of households who do not own bednets
elsif p_indic_name = 'indic_households_with_no_bednets' then if coalesce((p_record_x.llitn_properly_used):: INTEGER, 0) = 0
and coalesce((p_record_x.llitn_distributed):: INTEGER, 0) = 1 then households_with_no_bednets: = 1;


end if;


-- Number of people involved in prevention (larva control activities) -+-
elsif p_indic_name = 'indic_peoples_involved_in_prevention' then if p_record_x.case_type = 'malaria_reporting' then peoples_involved_in_prevention: = 1;


end if;


-- MALE-Number of people involved in prevention (larva control activities)
elsif p_indic_name = 'indic_males_involved_in_prevention' then if p_record_x.case_type = 'malaria_reporting' then males_involved_in_prevention: = 1;


end if;


-- FEMALE-Number involved in prevention (larva control activities)
elsif p_indic_name = 'indic_females_involved_in_prevention' then if p_record_x.case_type = 'malaria_reporting' then females_involved_in_prevention: = 1;


end if;


-- Organizations involved in prevention (larva control activities) -+-
elsif p_indic_name = 'indic_organizations_involved_in_prevention' then if p_record_x.case_type = 'malaria_reporting' then organizations_involved_in_prevention: = 1;


end if;


-- Number of people who took Behavioural Change Communication Training
elsif p_indic_name = 'indic_people_who_took_behav_change_comm_training' then if p_record_x.type_of_training like '%malaria_behavioural_change_communication%'
and coalesce(p_record_x.total_people_trained, '') <> '' then people_who_took_behav_change_comm_training: = p_record_x.total_people_trained:: INTEGER;


end if;


-- Number of Males who took Behavioural Change Communication Training
elsif p_indic_name = 'indic_male_who_took_behav_change_comm_training' then if p_record_x.type_of_training like '%malaria_behavioural_change_communication%'
and coalesce(p_record_x.male_trained, '') <> '' then male_who_took_behav_change_comm_training: = p_record_x.male_trained:: INTEGER;


end if;


-- Number of FeMales who took Behavioural Change Communication Training
elsif p_indic_name = 'indic_female_who_took_behav_change_comm_training' then if p_record_x.type_of_training like '%malaria_behavioural_change_communication%'
and coalesce(p_record_x.female_trained, '') <> '' then female_who_took_behav_change_comm_training: = p_record_x.female_trained:: INTEGER;


end if;


-- Number of Organizations who took Behavioural Change Communication Training
elsif p_indic_name = 'indic_organizations_who_took_behav_change_comm_training' then if p_record_x.type_of_training like '%malaria_behavioural_change_communication%'
and coalesce(p_record_x.organizations_trained, '') <> '' then organizations_who_took_behav_change_comm_training: = p_record_x.organizations_trained:: INTEGER;


end if;


-- Number of index households and those demarcated from the index case house within 70m radius or nearest five households where houses densely clustered.
elsif p_indic_name = 'indic_households_eligible_delineated_for_investigation' then if (
  coalesce((p_record_x.distance_from_index, ''):: INTEGER, 0) <= 70
  and coalesce((p_record_x.distance_from_index, ''):: INTEGER, 0) >= 0
) then households_eligible_delineated_for_investigation: = 1;


end if;


-- Number of individuals living in the index case and neighboring households including visitors listed during case investigated
elsif p_indic_name = 'indic_individuals_living_in_index_case' then if coalesce((p_record_x.distance_from_index, ''):: INTEGER, 0) >= 0
and coalesce((p_record_x.distance_from_index, ''):: INTEGER, 0) <= 70 then
select
  count(*) into individuals_living_in_index_case
from
  client c
where
  c."indices.family" = p_record_x.id
  and c.closed = false;


end if;


-- Total number of slides or RDT performed for malaria diagnosis - < 5 years, Male(MAL. 1):Malaria
elsif p_indic_name = 'indic_MAL_1' then if p_record_x.closed = 'False'
and p_record_x.screened_for_malaria = 'yes'
and p_record_x.gender = 'male'
and extract(
  year
  from
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) < 5 then MAL_1: = 1;


end if;


-- Total number of slides or RDT performed for malaria diagnosis - < 5 years, Female(MAL. 2):Malaria
elsif p_indic_name = 'indic_MAL_2' then if p_record_x.closed = 'False'
and p_record_x.screened_for_malaria = 'yes'
and p_record_x.gender = 'female'
and extract(
  year
  from
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) < 5 then MAL_2: = 1;


end if;


-- Total number of slides or RDT performed for malaria diagnosis - 5 - 14 years, Male(MAL. 3):Malaria
elsif p_indic_name = 'indic_MAL_3' then if p_record_x.closed = 'False'
and p_record_x.screened_for_malaria = 'yes'
and p_record_x.gender = 'male'
and extract(
  year
  from
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 5
and extract(
  year
  from
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) <= 14 then MAL_3: = 1;


end if;


-- Total number of slides or RDT performed for malaria diagnosis - 5 - 14 years, Female(MAL. 4):Malaria
elsif p_indic_name = 'indic_MAL_4' then if p_record_x.closed = 'False'
and p_record_x.screened_for_malaria = 'yes'
and p_record_x.gender = 'female'
and extract(
  year
  from
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 5
and extract(
  year
  from
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) <= 14 then MAL_4: = 1;


end if;


-- Total number of slides or RDT performed for malaria diagnosis - >= 15 years, Male(MAL. 5):Malaria
elsif p_indic_name = 'indic_MAL_5' then if p_record_x.closed = 'False'
and p_record_x.screened_for_malaria = 'yes'
and p_record_x.gender = 'male'
and extract(
  year
  from
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 15 then MAL_5: = 1;


end if;


-- Total number of slides or RDT performed for malaria diagnosis - >= 15 years, Female(MAL. 6):Malaria
elsif p_indic_name = 'indic_MAL_6' then if p_record_x.closed = 'False'
and p_record_x.screened_for_malaria = 'yes'
and p_record_x.gender = 'female'
and extract(
  year
  from
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 15 then MAL_6: = 1;


end if;


-- Total number of slides or RDT Positive - < 5 years, Male(MAL_POS.1. 1):Malaria
elsif p_indic_name = 'indic_MAL_POS_1_1' then if p_record_x.rdt_type = 'positive'
and p_record_x.screened_for_malaria = 'yes'
and p_record_x.gender = 'male'
and extract(
  year
  from
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) < 5 then MAL_POS_1_1: = 1;


end if;


-- Total number of slides or RDT Positive - < 5 years, Female(MAL_POS.1. 2):Malaria
elsif p_indic_name = 'indic_MAL_POS_1_2' then if p_record_x.screened_for_malaria = 'yes'
and p_record_x.gender = 'female'
and p_record_x.rdt_type = 'positive'
and extract(
  year
  from
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) < 5 then MAL_POS_1_2: = 1;


end if;


-- Total number of slides or RDT Positive - 5 - 14 years, Male(MAL_POS.1. 3):Malaria
elsif p_indic_name = 'indic_MAL_POS_1_3' then if p_record_x.screened_for_malaria = 'yes'
and p_record_x.gender = 'male'
and p_record_x.rdt_type = 'positive'
and extract(
  year
  from
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 5
and extract(
  year
  from
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) <= 14 then MAL_POS_1_3: = 1;


end if;


-- Total number of slides or RDT Positive - 5 - 14 years, Female(MAL_POS.1. 4):Malaria
elsif p_indic_name = 'indic_MAL_POS_1_4' then if p_record_x.screened_for_malaria = 'yes'
and p_record_x.gender = 'female'
and p_record_x.rdt_type = 'positive'
and extract(
  year
  from
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 5
and extract(
  year
  from
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) <= 14 then MAL_POS_1_4: = 1;


end if;


-- Total number of slides or RDT Positive - >= 15 years, Male(MAL_POS.1. 5):Malaria
elsif p_indic_name = 'indic_MAL_POS_1_5' then if p_record_x.screened_for_malaria = 'yes'
and p_record_x.gender = 'male'
and p_record_x.rdt_type = 'positive'
and extract(
  year
  from
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 15 then MAL_POS_1_5: = 1;


end if;


-- Total number of slides or RDT Positive - >= 15 years, Female(MAL_POS.1. 6):Malaria
elsif p_indic_name = 'indic_MAL_POS_1_6' then if p_record_x.screened_for_malaria = 'yes'
and p_record_x.gender = 'female'
and p_record_x.rdt_type = 'positive'
and extract(
  year
  from
    AGE(
      p_record_x.last_malaria_screening_date:: DATE,
      rpt_fn_get_parent_value(
        'dob',
        'client',
        'illness',
        'indices.client',
        p_record_x.id:: text
      ):: DATE
    )
) >= 15 then MAL_POS_1_6: = 1;


end if;


-- Total number of slides or RDT Positive - Malaria with Travel History(Mal_Travel.):Malaria
elsif p_indic_name = 'indic_Mal_Travel_' then if p_record_x.screened_for_malaria = 'yes'
and p_record_x.travel_history = 'yes'
and p_record_x.rdt_type = 'positive'
and (
  p_record_x.gender = 'female'
  or p_record_x.gender = 'male'
) then Mal_Travel_: = 1;


end if;


-- FP_CYP.1:Male Condom (number of condoms distributed) @@@[Annual Service Delivery DS V1]
elsif p_indic_name = 'indic_FP_CYP_1' then if p_record_x.case_type = 'client' then FP_CYP_1: = 1;


end if;


-- FP_CYP.3:Oral contraceptives (number of monthly cycles distributed)
elsif p_indic_name = 'indic_FP_CYP_3' then if p_record_x.case_type = 'client' then FP_CYP_3: = 1;


end if;


-- FP_CYP.5:Injectable (Depo provera) (number of injections)
elsif p_indic_name = 'indic_FP_CYP_5' then if p_record_x.case_type = 'client' then FP_CYP_5: = 1;


end if;


-- FP_CYP.8:Implanon (number of Implanon insertions)
elsif p_indic_name = 'indic_FP_CYP_8' then if p_record_x.case_type = 'client' then FP_CYP_8: = 1;


end if;


-- FP_CYP.9:Jadelle (number of Jadelle insertions)
elsif p_indic_name = 'indic_FP_CYP_9' then if p_record_x.case_type = 'client' then FP_CYP_9: = 1;


end if;


-- FP_CYP.10:IUCD (number of IUCDs inserted)
elsif p_indic_name = 'indic_FP_CYP_10' then if p_record_x.case_type = 'client' then FP_CYP_10: = 1;


end if;


-- Mal_LLITN.1:Number of targeted HH received at least one LLITN in the last 12 month
elsif p_indic_name = 'indic_Mal_LLITN_1' then if p_record_x.case_type = 'family' then Mal_LLITN_1: = 1;


end if;


-- Mal_ELLITN.1:Number of HHs that need LLITN in the last 12 month
elsif p_indic_name = 'indic_Mal_ELLITN_1' then if p_record_x.case_type = 'family' then Mal_ELLITN_1: = 1;


end if;


-- Total confirmed malaria cases @@@[FTAT Weekly Report]
elsif p_indic_name = 'indic_total_confirmed_malaria_cases' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'malaria'
and p_record_x.screening_location = 'ftat'
and p_record_x.screening_location = 'ftat'
and p_record_x.has_malaria = 'yes' then total_confirmed_malaria_cases: = 1;


end if;


-- Number of confirmed malaria cases within HP catchment
elsif p_indic_name = 'indic_number_of_confirmed_malaria_cases_within_hp_catchment' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'malaria'
and p_record_x.screening_location = 'ftat'
and p_record_x.has_malaria = 'yes' then number_of_confirmed_malaria_cases_within_hp_catchment: = 1;


end if;


-- Number of confirmed malaria cases outside HP catchment
elsif p_indic_name = 'indic_number_of_confirmed_malaria_cases_outside_hp_catchment' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'malaria'
and p_record_x.screening_location = 'ftat'
and p_record_x.has_malaria = 'yes' then number_of_confirmed_malaria_cases_outside_hp_catchment: = 1;


end if;


-- Number of index cases eligible for investigation
elsif p_indic_name = 'indic_number_of_index_cases_eligible_for_investigation' then if p_record_x.case_type = 'family'
and p_record_x.index_case = 'yes'
and p_record_x.closed = 'False' then number_of_index_cases_eligible_for_investigation: = 1;


end if;


-- Number of index cases investigated
elsif p_indic_name = 'indic_number_of_index_cases_investigated' then if p_record_x.case_type = 'family'
and p_record_x.index_case = 'yes'
and p_record_x.closed = 'False' then number_of_index_cases_investigated: = 1;


end if;


-- Number of households eligible (delineated) for investigation
elsif p_indic_name = 'indic_Number_of_households_eligible_delineated_for_investigation' then if p_record_x.case_type = 'family'
and p_record_x.elligible_household = 'yes'
and p_record_x.closed = 'False' then Number_of_households_eligible_delineated_for_investigation: = 1;


end if;


-- Number of household members eligible for investigation (other than index cases, <6 months infants, severe cases)
elsif p_indic_name = 'indic_hh_members_eligible_butnot_indexcases' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'malaria'
and p_record_x.screening_location = 'ftat'
and p_record_x.severe_illness = 'no' then hh_members_eligible_butnot_indexcases: = 1;


end if;


-- Number of household members tested
elsif p_indic_name = 'indic_number_of_household_members_tested' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'malaria'
and p_record_x.screening_location = 'ftat' then number_of_household_members_tested: = 1;


end if;


-- Number of households investigated
elsif p_indic_name = 'indic_number_of_households_investigated' then if p_record_x.case_type = 'family'
and p_record_x.closed = 'False' then number_of_households_investigated: = 1;


end if;


-- Total number of positive cases (secondary)
elsif p_indic_name = 'indic_total_number_of_positive_cases_secondary' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'malaria'
and p_record_x.screening_location = 'ftat'
and p_record_x.rdt_result = 'positive' then total_number_of_positive_cases_secondary: = 1;


end if;


-- Total number of PF cases
elsif p_indic_name = 'indic_total_number_of_pf_cases' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'malaria'
and p_record_x.screening_location = 'ftat'
and p_record_x.rdt_result = 'positive'
and p_record_x.rdt_type = 'pf' then total_number_of_pf_cases: = 1;


end if;


-- Total number of PV cases
elsif p_indic_name = 'indic_total_number_of_pv_cases' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'malaria'
and p_record_x.screening_location = 'ftat'
and p_record_x.rdt_result = 'positive'
and p_record_x.rdt_type = 'pv' then total_number_of_pv_cases: = 1;


end if;


-- Total number of Mixed cases
elsif p_indic_name = 'indic_total_number_of_Mixed_cases' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'malaria'
and p_record_x.screening_location = 'ftat'
and p_record_x.rdt_result = 'positive'
and p_record_x.rdt_type = 'mixed' then total_number_of_Mixed_cases: = 1;


end if;


-- Imported cases (Cases with travel history)
elsif p_indic_name = 'indic_imported_cases__cases_with_travel_history' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'malaria'
and p_record_x.screening_location = 'ftat'
and p_record_x.rdt_result = 'positive'
and p_record_x.travel_history = 'yes' then imported_cases__cases_with_travel_history: = 1;


end if;


-- Indigenous or local cases (Cases without travel history)
elsif p_indic_name = 'indic_indigenous_or_local_cases_cases_without_travel_history' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'malaria'
and p_record_x.screening_location = 'ftat'
and p_record_x.malarious_area = 'yes' then indigenous_or_local_cases_cases_without_travel_history: = 1;


end if;


-- NTD pos2.1:Trachomatous Trichiasis Suspected on Screening and Referral @@@ [NTD monthly report datasource ]
elsif p_indic_name = 'indic_suspected_trachomatous_trichiasis_referral' then if p_record_x.illness_type = 'ntd'
and p_record_x.ntd_trachomatous_trichiasis = 'yes'
and p_record_x.ever_referred_to_hc = 'yes' then suspected_trachomatous_trichiasis_referral: = 1;


end if;


-- NTD pos3:Schistosomiasis (SCH) Suspected on Screening
elsif p_indic_name = 'indic_suspected_schistosomiasis' then if p_record_x.illness_type = 'ntd'
and p_record_x.ntd_schistosomiasis = 'yes' then suspected_schistosomiasis: = 1;


end if;


-- NTD pos3.1:Schistosomiasis (SCH) Suspected on Screening and Referral
elsif p_indic_name = 'indic_suspected_schistosomiasis_referral' then if p_record_x.illness_type = 'ntd'
and p_record_x.ntd_schistosomiasis = 'yes'
and p_record_x.ever_referred_to_hc = 'yes' then suspected_schistosomiasis_referral: = 1;


end if;


-- NTD pos4:Cutaneous leishmaniasis Suspected on Screening
elsif p_indic_name = 'indic_suspected_tcutaneous_leishmaniasis' then if p_record_x.illness_type = 'ntd'
and p_record_x.ntd_cutaneous_leishmaniasis = 'yes' then suspected_tcutaneous_leishmaniasis: = 1;


end if;


-- NTD pos4.1:Cutaneous leishmaniasis Suspected on Screening and referral
elsif p_indic_name = 'indic_suspected_tcutaneous_leishmaniasis_referral' then if p_record_x.illness_type = 'ntd'
and p_record_x.ntd_cutaneous_leishmaniasis = 'yes'
and p_record_x.ever_referred_to_hc = 'yes' then suspected_tcutaneous_leishmaniasis_referral: = 1;


end if;


-- NTD pos5:Scabies suspected on Screening
elsif p_indic_name = 'indic_suspected_scabies' then if p_record_x.illness_type = 'ntd'
and p_record_x.ntd_scabies = 'yes' then suspected_scabies: = 1;


end if;


-- NTD pos5.1:Scabies suspected on Screening and referral
elsif p_indic_name = 'indic_suspected_scabies_referral' then if p_record_x.illness_type = 'ntd'
and p_record_x.ntd_scabies = 'yes'
and p_record_x.ever_referred_to_hc = 'yes' then suspected_scabies_referral: = 1;


end if;


-- NTD pos6:Human Guinea Worm Suspected on Screening
elsif p_indic_name = 'indic_suspected_guinea_worm' then if p_record_x.illness_type = 'ntd'
and p_record_x.ntd_guinea_worm = 'yes' then suspected_guinea_worm: = 1;


end if;


-- NTD pos6.1:Human Guinea Worm Suspected on Screening and Referral
elsif p_indic_name = 'indic_suspected_guinea_worm_referral' then if p_record_x.illness_type = 'ntd'
and p_record_x.ntd_guinea_worm = 'yes'
and p_record_x.ever_referred_to_hc = 'yes' then suspected_guinea_worm_referral: = 1;


end if;


-- NTD pos7:Number of people who swallowed azithromycin or took tetracycline eye ointment to prevent trachoma from the expected eligible population
elsif p_indic_name = 'indic_num_tt_medication' then if p_record_x.case_type = 'client'
and p_record_x.closed = 'False'
and p_record_x.tt_medication_received = 'yes' then num_tt_medication: = 1;


end if;


-- NTD pos8:Number of who swallowed ivermectin to prevent onchocerciasis from the expected eligible population (>=5 Years)
elsif p_indic_name = 'indic_num_oncho_medication' then if p_record_x.case_type = 'client'
and p_record_x.closed = 'False'
and p_record_x.oncho_medication_received = 'yes' then num_oncho_medication: = 1;


end if;


-- NTD pos9:Number of people who swallowed a drug to prevent lymphatic filariasis from the expected eligible population (>=5 Years)
elsif p_indic_name = 'indic_num_lf_medication' then if p_record_x.case_type = 'client'
and p_record_x.closed = 'False'
and p_record_x.lf_medication_received = 'yes' then num_lf_medication: = 1;


end if;


-- NTD pos10:Number of children who swallowed a drug to prevent schistosomiasis from the expected eligible children (5 to 15 Years)
elsif p_indic_name = 'indic_num_sch_medication' then if p_record_x.case_type = 'client'
and p_record_x.closed = 'False'
and p_record_x.sch_medication_received = 'yes' then num_sch_medication: = 1;


end if;


-- NTD pos11:Number of children who swallowed a drug to prevent soil transmitted helminthiasis from the expected eligible children (5 to 19 Years )
elsif p_indic_name = 'indic_num_sth_medication_child' then if p_record_x.case_type = 'client'
and p_record_x.closed = 'False'
and p_record_x.sth_medication_received = 'yes'
and p_record_x.age_years = '5'
and p_record_x.age_years = '19' then num_sth_medication_child: = 1;


end if;


-- NTD pos12:Number of Women who swallowed a drug to prevent soil transmitted helminthiasis from women reproductive age (20-49 Years)
elsif p_indic_name = 'indic_num_sth_medication_adult' then if p_record_x.case_type = 'client'
and p_record_x.closed = 'False'
and p_record_x.sth_medication_received = 'yes'
and p_record_x.age_years = '20'
and p_record_x.age_years = '49' then num_sth_medication_adult: = 1;


end if;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 0 - 4 years, Male(TB. 1):TB
elsif p_indic_name = 'indic_TB_1' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_1: = 1;


end if;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 0 - 4 years, Female(TB. 2):TB
elsif p_indic_name = 'indic_TB_2' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_2: = 1;


end if;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 5 - 9 years, Male(TB. 3):TB
elsif p_indic_name = 'indic_TB_3' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_3: = 1;


end if;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 5 - 9 years, Female(TB. 4):TB
elsif p_indic_name = 'indic_TB_4' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_4: = 1;


end if;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 10 - 14 years, Male(TB. 5):TB
elsif p_indic_name = 'indic_TB_5' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_5: = 1;


end if;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 10 - 14 years, Female(TB. 6):TB
elsif p_indic_name = 'indic_TB_6' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_6: = 1;


end if;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 15 - 19 years, Male(TB. 7):TB
elsif p_indic_name = 'indic_TB_7' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_7: = 1;


end if;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 15 - 19 years, Female(TB. 8):TB
elsif p_indic_name = 'indic_TB_8' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_8: = 1;


end if;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 20 - 24 years, Male(TB. 9):TB
elsif p_indic_name = 'indic_TB_9' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_9: = 1;


end if;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 20 - 24 years, Female(TB. 10):TB
elsif p_indic_name = 'indic_TB_10' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_10: = 1;


end if;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 25 - 34 years, Male(TB. 11):TB
elsif p_indic_name = 'indic_TB_11' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_11: = 1;


end if;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 25 - 34 years, Female(TB. 12):TB
elsif p_indic_name = 'indic_TB_12' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_12: = 1;


end if;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 35 - 44 years, Male(TB. 13):TB
elsif p_indic_name = 'indic_TB_13' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_13: = 1;


end if;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 35 - 44 years, Female(TB. 14):TB
elsif p_indic_name = 'indic_TB_14' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_14: = 1;


end if;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 45 - 54 years, Male(TB. 15):TB
elsif p_indic_name = 'indic_TB_15' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_15: = 1;


end if;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 45 - 54 years, Female(TB. 16):TB
elsif p_indic_name = 'indic_TB_16' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_16: = 1;


end if;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 55 - 64 years, Male(TB. 17):TB
elsif p_indic_name = 'indic_TB_17' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_17: = 1;


end if;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - 55 - 64 years, Female(TB. 18):TB
elsif p_indic_name = 'indic_TB_18' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_18: = 1;


end if;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - >=65 yr, Male(TB. 19):TB
elsif p_indic_name = 'indic_TB_19' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_19: = 1;


end if;


-- Number of bacteriologically confirmed New Pulmonary TB cases detected and enrolled in the reporting period by age and sex - >=65 yr, Female(TB. 20):TB
elsif p_indic_name = 'indic_TB_20' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_20: = 1;


end if;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 0 - 4 years, Male(TB_TX_PTB.2. 1):TB
elsif p_indic_name = 'indic_TB_TX_PTB_2_1' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically' then TB_TX_PTB_2_1: = 1;


end if;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 0 - 4 years, Female(TB_TX_PTB.2. 2):TB
elsif p_indic_name = 'indic_TB_TX_PTB_2_2' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically' then TB_TX_PTB_2_2: = 1;


end if;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 5 - 9 years, Male(TB_TX_PTB.2. 3):TB
elsif p_indic_name = 'indic_TB_TX_PTB_2_3' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically' then TB_TX_PTB_2_3: = 1;


end if;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 5 - 9 years, Female(TB_TX_PTB.2. 4):TB
elsif p_indic_name = 'indic_TB_TX_PTB_2_4' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically' then TB_TX_PTB_2_4: = 1;


end if;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 10 - 14 years, Male(TB_TX_PTB.2. 5):TB
elsif p_indic_name = 'indic_TB_TX_PTB_2_5' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically' then TB_TX_PTB_2_5: = 1;


end if;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 10 - 14 years, Female(TB_TX_PTB.2. 6):TB
elsif p_indic_name = 'indic_TB_TX_PTB_2_6' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically' then TB_TX_PTB_2_6: = 1;


end if;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 15 - 19 years, Male(TB_TX_PTB.2. 7):TB
elsif p_indic_name = 'indic_TB_TX_PTB_2_7' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically' then TB_TX_PTB_2_7: = 1;


end if;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 15 - 19 years, Female(TB_TX_PTB.2. 8):TB
elsif p_indic_name = 'indic_TB_TX_PTB_2_8' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically' then TB_TX_PTB_2_8: = 1;


end if;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 20 - 24 years, Male(TB_TX_PTB.2. 9):TB
elsif p_indic_name = 'indic_TB_TX_PTB_2_9' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically' then TB_TX_PTB_2_9: = 1;


end if;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 20 - 24 years, Female(TB_TX_PTB.2. 10):TB
elsif p_indic_name = 'indic_TB_TX_PTB_2_10' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically' then TB_TX_PTB_2_10: = 1;


end if;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 25 - 34 years, Male(TB_TX_PTB.2. 11):TB
elsif p_indic_name = 'indic_TB_TX_PTB_2_11' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically' then TB_TX_PTB_2_11: = 1;


end if;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 25 - 34 years, Female(TB_TX_PTB.2. 12):TB
elsif p_indic_name = 'indic_TB_TX_PTB_2_12' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically' then TB_TX_PTB_2_12: = 1;


end if;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 35 - 44 years, Male(TB_TX_PTB.2. 13):TB
elsif p_indic_name = 'indic_TB_TX_PTB_2_13' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically' then TB_TX_PTB_2_13: = 1;


end if;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 35 - 44 years, Female(TB_TX_PTB.2. 14):TB
elsif p_indic_name = 'indic_TB_TX_PTB_2_14' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically' then TB_TX_PTB_2_14: = 1;


end if;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 45 - 54 years, Male(TB_TX_PTB.2. 15):TB
elsif p_indic_name = 'indic_TB_TX_PTB_2_15' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically' then TB_TX_PTB_2_15: = 1;


end if;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 45 - 54 years, Female(TB_TX_PTB.2. 16):TB
elsif p_indic_name = 'indic_TB_TX_PTB_2_16' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically' then TB_TX_PTB_2_16: = 1;


end if;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 55 - 64 years, Male(TB_TX_PTB.2. 17):TB
elsif p_indic_name = 'indic_TB_TX_PTB_2_17' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically' then TB_TX_PTB_2_17: = 1;


end if;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - 55 - 64 years, Female(TB_TX_PTB.2. 18):TB
elsif p_indic_name = 'indic_TB_TX_PTB_2_18' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically' then TB_TX_PTB_2_18: = 1;


end if;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - >=65 yr, Male(TB_TX_PTB.2. 19):TB
elsif p_indic_name = 'indic_TB_TX_PTB_2_19' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically' then TB_TX_PTB_2_19: = 1;


end if;


-- Number of clinically diagnosed New pulmonary TB cases detected and enrolled in the reporting period by age and sex - >=65 yr, Female(TB_TX_PTB.2. 20):TB
elsif p_indic_name = 'indic_TB_TX_PTB_2_20' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically' then TB_TX_PTB_2_20: = 1;


end if;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 0 - 4 years, Male(TB_TX_EPTB.1. 1):TB
elsif p_indic_name = 'indic_TB_TX_EPTB_1_1' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_TX_EPTB_1_1: = 1;


end if;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 0 - 4 years, Female(TB_TX_EPTB.1. 2):TB
elsif p_indic_name = 'indic_TB_TX_EPTB_1_2' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_TX_EPTB_1_2: = 1;


end if;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 5 - 9 years, Male(TB_TX_EPTB.1. 3):TB
elsif p_indic_name = 'indic_TB_TX_EPTB_1_3' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_TX_EPTB_1_3: = 1;


end if;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 5 - 9 years, Female(TB_TX_EPTB.1. 4):TB
elsif p_indic_name = 'indic_TB_TX_EPTB_1_4' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_TX_EPTB_1_4: = 1;


end if;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 10 - 14 years, Male(TB_TX_EPTB.1. 5):TB
elsif p_indic_name = 'indic_TB_TX_EPTB_1_5' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_TX_EPTB_1_5: = 1;


end if;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 10 - 14 years, Female(TB_TX_EPTB.1. 6):TB
elsif p_indic_name = 'indic_TB_TX_EPTB_1_6' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_TX_EPTB_1_6: = 1;


end if;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 15 - 19 years, Male(TB_TX_EPTB.1. 7):TB
elsif p_indic_name = 'indic_TB_TX_EPTB_1_7' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_TX_EPTB_1_7: = 1;


end if;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 15 - 19 years, Female(TB_TX_EPTB.1. 8):TB
elsif p_indic_name = 'indic_TB_TX_EPTB_1_8' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_TX_EPTB_1_8: = 1;


end if;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 20 - 24 years, Male(TB_TX_EPTB.1. 9):TB
elsif p_indic_name = 'indic_TB_TX_EPTB_1_9' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_TX_EPTB_1_9: = 1;


end if;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 20 - 24 years, Female(TB_TX_EPTB.1. 10):TB
elsif p_indic_name = 'indic_TB_TX_EPTB_1_10' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_TX_EPTB_1_10: = 1;


end if;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 25 - 34 years, Male(TB_TX_EPTB.1. 11):TB
elsif p_indic_name = 'indic_TB_TX_EPTB_1_11' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_TX_EPTB_1_11: = 1;


end if;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 25 - 34 years, Female(TB_TX_EPTB.1. 12):TB
elsif p_indic_name = 'indic_TB_TX_EPTB_1_12' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_TX_EPTB_1_12: = 1;


end if;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 35 - 44 years, Male(TB_TX_EPTB.1. 13):TB
elsif p_indic_name = 'indic_TB_TX_EPTB_1_13' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_TX_EPTB_1_13: = 1;


end if;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 35 - 44 years, Female(TB_TX_EPTB.1. 14):TB
elsif p_indic_name = 'indic_TB_TX_EPTB_1_14' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_TX_EPTB_1_14: = 1;


end if;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 45 - 54 years, Male(TB_TX_EPTB.1. 15):TB
elsif p_indic_name = 'indic_TB_TX_EPTB_1_15' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_TX_EPTB_1_15: = 1;


end if;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 45 - 54 years, Female(TB_TX_EPTB.1. 16):TB
elsif p_indic_name = 'indic_TB_TX_EPTB_1_16' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_TX_EPTB_1_16: = 1;


end if;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 55 - 64 years, Male(TB_TX_EPTB.1. 17):TB
elsif p_indic_name = 'indic_TB_TX_EPTB_1_17' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_TX_EPTB_1_17: = 1;


end if;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - 55 - 64 years, Female(TB_TX_EPTB.1. 18):TB
elsif p_indic_name = 'indic_TB_TX_EPTB_1_18' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_TX_EPTB_1_18: = 1;


end if;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - >=65 yr, Male(TB_TX_EPTB.1. 19):TB
elsif p_indic_name = 'indic_TB_TX_EPTB_1_19' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_TX_EPTB_1_19: = 1;


end if;


-- Number of clinically diagnosed and bacteriological confirmed new EPTB cases detected and enrolled in the reporting period by age and sex - >=65 yr, Female(TB_TX_EPTB.1. 20):TB
elsif p_indic_name = 'indic_TB_TX_EPTB_1_20' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'female'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_TX_EPTB_1_20: = 1;


end if;


-- Treatment outcome of cohort of new PTB+ bacteriologically confirmed TB cases - Completed(TB_CR_PTB.1.1. 1):TB
elsif p_indic_name = 'indic_TB_CR_PTB_1_1_1' then if p_record_x.tb_client_type = 'new'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_CR_PTB_1_1_1: = 1;


end if;


-- Treatment outcome of cohort of new PTB+ bacteriologically confirmed TB cases - Cured(TB_CR_PTB.1.1. 2):TB
elsif p_indic_name = 'indic_TB_CR_PTB_1_1_2' then if p_record_x.tb_client_type = 'new'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically'
and p_record_x.illness_status = 'cured' then TB_CR_PTB_1_1_2: = 1;


end if;


-- Treatment outcome of cohort of new PTB+ bacteriologically confirmed TB cases - Lost to follow-up(TB_CR_PTB.1.1. 3):TB
elsif p_indic_name = 'indic_TB_CR_PTB_1_1_3' then if p_record_x.tb_client_type = 'new'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically'
and p_record_x.client_follow_up_status_at_hc = 'lost_to_follow_up' then TB_CR_PTB_1_1_3: = 1;


end if;


-- Treatment outcome of cohort of new PTB+ bacteriologically confirmed TB cases - Dead(TB_CR_PTB.1.1. 4):TB
elsif p_indic_name = 'indic_TB_CR_PTB_1_1_4' then if p_record_x.tb_client_type = 'new'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically'
and p_record_x.illness_status = 'client_died' then TB_CR_PTB_1_1_4: = 1;


end if;


-- Treatment outcome of cohort of new PTB+ bacteriologically confirmed TB cases - Failed(TB_CR_PTB.1.1. 5):TB
elsif p_indic_name = 'indic_TB_CR_PTB_1_1_5' then if p_record_x.tb_client_type = 'new'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically'
and p_record_x.illness_status = 'treatment_failed' then TB_CR_PTB_1_1_5: = 1;


end if;


-- Treatment outcome of cohort of clinically diagnosed pulmonary TB cases(P/Neg) - Completed(TB_CR_PNTB.2.1. 1):TB
elsif p_indic_name = 'indic_TB_CR_PNTB_2_1_1' then if p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically' then TB_CR_PNTB_2_1_1: = 1;


end if;


-- Treatment outcome of cohort of clinically diagnosed pulmonary TB cases(P/Neg) - Lost to follow-up(TB_CR_PNTB.2.1. 2):TB
elsif p_indic_name = 'indic_TB_CR_PNTB_2_1_2' then if p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically'
and p_record_x.client_follow_up_status_at_hc = 'lost_to_follow_up' then TB_CR_PNTB_2_1_2: = 1;


end if;


-- Treatment outcome of cohort of clinically diagnosed pulmonary TB cases(P/Neg) - Deaths(TB_CR_PNTB.2.1. 3):TB
elsif p_indic_name = 'indic_TB_CR_PNTB_2_1_3' then if p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically'
and p_record_x.illness_status = 'client_died' then TB_CR_PNTB_2_1_3: = 1;


end if;


-- Treatment outcome of cohort of clinically diagnosed pulmonary TB cases(P/Neg) - Failed(TB_CR_PNTB.2.1. 4):TB
elsif p_indic_name = 'indic_TB_CR_PNTB_2_1_4' then if p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically'
and p_record_x.illness_status = 'treatment_failed' then TB_CR_PNTB_2_1_4: = 1;


end if;


-- Treatment outcome of cohort of clinically diagnosed pulmonary TB cases(P/Neg) - Moved to DR TB Register(TB_CR_PNTB.2.1. 5):TB
elsif p_indic_name = 'indic_TB_CR_PNTB_2_1_5' then if p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'clinically'
and p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_resistant' then TB_CR_PNTB_2_1_5: = 1;


end if;


-- Treatment outcome of cohort of new extra pulmonary TB (EPTB)cases - Completed(TB_CR_EPTB.3.1. 1):TB
elsif p_indic_name = 'indic_TB_CR_EPTB_3_1_1' then if p_record_x.tb_client_type = 'new'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.client_follow_up_status_at_hc = 'follow_up_completed'
and p_record_x.illness_status = 'treatment_completed' then TB_CR_EPTB_3_1_1: = 1;


end if;


-- Treatment outcome of cohort of new extra pulmonary TB (EPTB)cases - Lost to follow-up(TB_CR_EPTB.3.1. 2):TB
elsif p_indic_name = 'indic_TB_CR_EPTB_3_1_2' then if p_record_x.tb_client_type = 'new'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.client_follow_up_status_at_hc = 'lost_to_follow_up' then TB_CR_EPTB_3_1_2: = 1;


end if;


-- Treatment outcome of cohort of new extra pulmonary TB (EPTB)cases - Deaths(TB_CR_EPTB.3.1. 3):TB
elsif p_indic_name = 'indic_TB_CR_EPTB_3_1_3' then if p_record_x.tb_client_type = 'new'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.illness_status = 'client_died' then TB_CR_EPTB_3_1_3: = 1;


end if;


-- Treatment outcome of cohort of new extra pulmonary TB (EPTB)cases - Failed(TB_CR_EPTB.3.1. 4):TB
elsif p_indic_name = 'indic_TB_CR_EPTB_3_1_4' then if p_record_x.tb_client_type = 'new'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.illness_status = 'treatment_failed' then TB_CR_EPTB_3_1_4: = 1;


end if;


-- Treatment outcome of cohort of new extra pulmonary TB (EPTB)cases - Moved to DR TB Register(TB_CR_EPTB.3.1. 5):TB
elsif p_indic_name = 'indic_TB_CR_EPTB_3_1_5' then if p_record_x.tb_client_type = 'new'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'extra_pulmonary'
and p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_resistant' then TB_CR_EPTB_3_1_5: = 1;


end if;


-- Treatment outcome of cohort of all Relapse cases - Number of all forms TB cases detected and registered on TB unit register who are initially referred by the community(TB_COMM.):TB
elsif p_indic_name = 'indic_TB_COMM_' then if p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed' then TB_COMM_: = 1;


end if;


-- Treatment outcome of cohort of all Relapse cases - Total number of patients who started TB treatment in same reporting month of pervious year and who received any form of treatment adherence support from Health extension workers(TB_CBTSR.2.):TB
elsif p_indic_name = 'indic_TB_CBTSR_2_' then if p_record_x.tb_client_type = 'new'
and p_record_x.gender = 'male'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_CBTSR_2_: = 1;


end if;


-- Total number of contacts with index bacteriologically confirmed pulmonary drug susceptible TB cases during the reporting Month by age - 0 - 4 years(TB_CI.1.1. 1):TB
elsif p_indic_name = 'indic_TB_CI_1_1_1' then if p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.contact_screening_visit = 'yes'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_susceptible' then TB_CI_1_1_1: = 1;


end if;


-- Total number of contacts with index bacteriologically confirmed pulmonary drug susceptible TB cases during the reporting Month by age - 5 - 14 years(TB_CI.1.1. 2):TB
elsif p_indic_name = 'indic_TB_CI_1_1_2' then if p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.contact_screening_visit = 'yes'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_susceptible' then TB_CI_1_1_2: = 1;


end if;


-- Total number of contacts with index bacteriologically confirmed pulmonary drug susceptible TB cases during the reporting Month by age - >= 15 years(TB_CI.1.1. 3):TB
elsif p_indic_name = 'indic_TB_CI_1_1_3' then if p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.contact_screening_visit = 'yes'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically'
and p_record_x.hc_tb_screening_pulmonary_type = 'pulmonary'
and p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_susceptible' then TB_CI_1_1_3: = 1;


end if;


-- Total number of contacts with index bacteriologically confirmed DR-TB cases during the reporting Month - 0 - 4 years(TB_CI.1.2. 1):TB
elsif p_indic_name = 'indic_TB_CI_1_2_1' then if p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.contact_screening_visit = 'yes'
and p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_resistant'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_CI_1_2_1: = 1;


end if;


-- Total number of contacts with index bacteriologically confirmed DR-TB cases during the reporting Month - 5 - 14 years(TB_CI.1.2. 2):TB
elsif p_indic_name = 'indic_TB_CI_1_2_2' then if p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.contact_screening_visit = 'yes'
and p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_resistant'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_CI_1_2_2: = 1;


end if;


-- Total number of contacts with index bacteriologically confirmed DR-TB cases during the reporting Month - >= 15 years(TB_CI.1.2. 3):TB
elsif p_indic_name = 'indic_TB_CI_1_2_3' then if p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.contact_screening_visit = 'yes'
and p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_resistant'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_CI_1_2_3: = 1;


end if;


-- Contacts of drug susceptible bacteriological confirmed pulmonary TB cases screened for TB - 0 - 4 years(TB_CI_SCR.1. 1):TB
elsif p_indic_name = 'indic_TB_CI_SCR_1_1' then if p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.contact_screening_visit = 'yes'
and p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_susceptible'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_CI_SCR_1_1: = 1;


end if;


-- Contacts of drug susceptible bacteriological confirmed pulmonary TB cases screened for TB - 4 - 14 years(TB_CI_SCR.1. 2):TB
elsif p_indic_name = 'indic_TB_CI_SCR_1_2' then if p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.contact_screening_visit = 'yes'
and p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_susceptible'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_CI_SCR_1_2: = 1;


end if;


-- Contacts of drug susceptible bacteriological confirmed pulmonary TB cases screened for TB - >= 15 years(TB_CI_SCR.1. 3):TB
elsif p_indic_name = 'indic_TB_CI_SCR_1_3' then if p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.contact_screening_visit = 'yes'
and p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_susceptible'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_CI_SCR_1_3: = 1;


end if;


-- Contacts of drug Resistant TB cases screened for TB - 0 - 4 years(TB_CI_SCR.2. 1):TB
elsif p_indic_name = 'indic_TB_CI_SCR_2_1' then if p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.contact_screening_visit = 'yes'
and p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_resistant' then TB_CI_SCR_2_1: = 1;


end if;


-- Contacts of drug Resistant TB cases screened for TB - 5 - 14 years(TB_CI_SCR.2. 2):TB
elsif p_indic_name = 'indic_TB_CI_SCR_2_2' then if p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.contact_screening_visit = 'yes'
and p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_resistant' then TB_CI_SCR_2_2: = 1;


end if;


-- Contacts of drug Resistant TB cases screened for TB - >= 15 years(TB_CI_SCR.2. 3):TB
elsif p_indic_name = 'indic_TB_CI_SCR_2_3' then if p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.contact_screening_visit = 'yes'
and p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_resistant' then TB_CI_SCR_2_3: = 1;


end if;


-- Number of contacts screened negative for TB and put on TB Preventive Therapy (TPT) in the reporting period by Age Group - 0 - 4 years(TB_TPT. 1):TB
elsif p_indic_name = 'indic_TB_TPT_1' then if p_record_x.illness_type = 'tb'
and p_record_x.contact_screening_visit = 'yes'
and p_record_x.hc_screening_classification = 'latent_tb_infection' then TB_TPT_1: = 1;


end if;


-- Number of contacts screened negative for TB and put on TB Preventive Therapy (TPT) in the reporting period by Age Group - 5 - 14 years(TB_TPT. 2):TB
elsif p_indic_name = 'indic_TB_TPT_2' then if p_record_x.illness_type = 'tb'
and p_record_x.contact_screening_visit = 'yes'
and p_record_x.hc_screening_classification = 'latent_tb_infection' then TB_TPT_2: = 1;


end if;


-- Number of contacts screened negative for TB and put on TB Preventive Therapy (TPT) in the reporting period by Age Group - >= 15 years(TB_TPT. 3):TB
elsif p_indic_name = 'indic_TB_TPT_3' then if p_record_x.illness_type = 'tb'
and p_record_x.contact_screening_visit = 'yes'
and p_record_x.hc_screening_classification = 'latent_tb_infection' then TB_TPT_3: = 1;


end if;


-- Number of contacts screened negative for TB and put on TB Preventive Therapy (TPT) in the reporting period by regimen type - 3HP(TB_TPT.1.4. 1):TB
elsif p_indic_name = 'indic_TB_TPT_1_4_1' then if p_record_x.illness_type = 'tb'
and p_record_x.contact_screening_visit = 'yes'
and p_record_x.hc_screening_classification = 'latent_tb_infection'
and p_record_x.tpt_med_names = '3HP' then TB_TPT_1_4_1: = 1;


end if;


-- Number of contacts screened negative for TB and put on TB Preventive Therapy (TPT) in the reporting period by regimen type - 3RH(TB_TPT.1.4. 2):TB
elsif p_indic_name = 'indic_TB_TPT_1_4_2' then if p_record_x.illness_type = 'tb'
and p_record_x.contact_screening_visit = 'yes'
and p_record_x.hc_screening_classification = 'latent_tb_infection'
and p_record_x.tpt_med_names = '3RH' then TB_TPT_1_4_2: = 1;


end if;


-- Number of contacts screened negative for TB and put on TB Preventive Therapy (TPT) in the reporting period by regimen type - 6H(TB_TPT.1.4. 3):TB
elsif p_indic_name = 'indic_TB_TPT_1_4_3' then if p_record_x.illness_type = 'tb'
and p_record_x.contact_screening_visit = 'yes'
and p_record_x.hc_screening_classification = 'latent_tb_infection'
and p_record_x.tpt_med_names = '6H' then TB_TPT_1_4_3: = 1;


end if;


-- Number of notified bacteriologically confirmed TB cases evaluated for drug susceptibility testing according to national policy during the reporting month - New(TB_DST.1. 1):TB
elsif p_indic_name = 'indic_TB_DST_1_1' then if p_record_x.tb_client_type = 'new'
and p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_susceptible'
and p_record_x.pulmonary_type_identified_by = 'bacteriologically' then TB_DST_1_1: = 1;


end if;


-- Number of drug susceptible TB cases screened for Malnutrition during the reporting period - Normal(TB_DR_NUT.1. 1):TB
elsif p_indic_name = 'indic_TB_DR_NUT_1_1' then if p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_susceptible' then TB_DR_NUT_1_1: = 1;


end if;


-- Number of drug susceptible TB cases screened for Malnutrition during the reporting period - MAM(TB_DR_NUT.1. 2):TB
elsif p_indic_name = 'indic_TB_DR_NUT_1_2' then if p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_susceptible' then TB_DR_NUT_1_2: = 1;


end if;


-- Number of drug susceptible TB cases screened for Malnutrition during the reporting period - SAM(TB_DR_NUT.1. 3):TB
elsif p_indic_name = 'indic_TB_DR_NUT_1_3' then if p_record_x.illness_type = 'tb'
and p_record_x.hew_screening_classification = 'TB Presumed'
and p_record_x.hc_tb_screening_drug_susceptibility_type = 'drug_susceptible' then TB_DR_NUT_1_3: = 1;


end if;


-- 4.2.3.1.1-Leprosy case notification: All leprosy case detected( N+O+R+D)  @@@ [Leprosy Datasource Monthly]
elsif p_indic_name = 'indic_Leprosy_case_notification__All_leprosy_case_detected' then if p_record_x.case_type = 'illness' then Leprosy_case_notification__All_leprosy_case_detected: = 1;


end if;


-- 4.2.3.1.2-Leprosy case notification: Male
elsif p_indic_name = 'indic_Leprosy_case_notification__Male' then if p_record_x.case_type = 'illness' then Leprosy_case_notification__Male: = 1;


end if;


-- 4.2.3.1.3-Leprosy case notification: Female
elsif p_indic_name = 'indic_Leprosy_case_notification_Female' then if p_record_x.case_type = 'illness' then Leprosy_case_notification_Female: = 1;


end if;


-- 4.2.3.1.4-Leprosy case notification: New Leprosy cases detected :
elsif p_indic_name = 'indic_Leprosy_case_notification_New_Leprosy_cases_detected_' then if p_record_x.case_type = 'illness' then Leprosy_case_notification_New_Leprosy_cases_detected_: = 1;


end if;


-- 4.2.3.1.5-Leprosy case notification: PB: Male <15 yrs
elsif p_indic_name = 'indic_Leprosy_case_notification_PB_Male_lt_15_yrs' then if p_record_x.case_type = 'illness' then Leprosy_case_notification_PB_Male_lt_15_yrs: = 1;


end if;


-- 4.2.3.1.6-Leprosy case notification: PB: Male = >15 yrs
elsif p_indic_name = 'indic_Leprosy_case_notification_PB_Male_gte_15_yrs' then if p_record_x.case_type = 'illness' then Leprosy_case_notification_PB_Male_gte_15_yrs: = 1;


end if;


-- 4.2.3.1.7-Leprosy case notification: PB: Female <15 yrs
elsif p_indic_name = 'indic_Leprosy_case_notification_PB_Female_lt_15_yrs' then if p_record_x.case_type = 'illness' then Leprosy_case_notification_PB_Female_lt_15_yrs: = 1;


end if;


-- 4.2.3.1.8-Leprosy case notification: PB: Female = >15 yrs
elsif p_indic_name = 'indic_Leprosy_case_notification_PB_Female_gte_15_yrs' then if p_record_x.case_type = 'illness' then Leprosy_case_notification_PB_Female_gte_15_yrs: = 1;


end if;


-- 4.2.3.1.9-Leprosy case notification: MB : Male <15 yrs
elsif p_indic_name = 'indic_Leprosy_case_notification_MB__Male_lt_15_yrs' then if p_record_x.case_type = 'illness' then Leprosy_case_notification_MB__Male_lt_15_yrs: = 1;


end if;


-- 4.2.3.1.10-Leprosy case notification: MB : Male = >15 yrs
elsif p_indic_name = 'indic_Leprosy_case_notification_MB__Male_gte_15_yrs' then if p_record_x.case_type = 'illness' then Leprosy_case_notification_MB__Male_gte_15_yrs: = 1;


end if;


-- 4.2.3.1.11-Leprosy case notification: MB : Female < 15 yrs
elsif p_indic_name = 'indic_Leprosy_case_notification_MB__Female_lt__15_yrs' then if p_record_x.case_type = 'illness' then Leprosy_case_notification_MB__Female_lt__15_yrs: = 1;


end if;


-- 4.2.3.1.12-Leprosy case notification: MB : Female => 15 yrs
elsif p_indic_name = 'indic_Leprosy_case_notification_MB__Female_gte_15_yrs' then if p_record_x.case_type = 'illness' then Leprosy_case_notification_MB__Female_gte_15_yrs: = 1;


end if;


-- 4.2.3.2.1-Grade II disability rate among new cases of leprosy: New leprosy cases with Grade II disability (MB+PB)
elsif p_indic_name = 'indic_Grade_II_disability_rate' then if p_record_x.case_type = 'illness' then Grade_II_disability_rate: = 1;


end if;


-- 4.2.3.2.2-Grade II disability rate among new cases of leprosy: Male <15
elsif p_indic_name = 'indic_Grade_II_disability_rate_among_new_cases_of_leprosy_Male_lt_15' then if p_record_x.case_type = 'illness' then Grade_II_disability_rate_among_new_cases_of_leprosy_Male_lt_15: = 1;


end if;


-- 4.2.3.2.3-Grade II disability rate among new cases of leprosy: Male =>15
elsif p_indic_name = 'indic_Grade_II_disability_rate_among_new_cases_of_leprosy_Male_gte_15' then if p_record_x.case_type = 'illness' then Grade_II_disability_rate_among_new_cases_of_leprosy_Male_gte_15: = 1;


end if;


-- 4.2.3.2.4-Grade II disability rate among new cases of leprosy: Female<15
elsif p_indic_name = 'indic_Grade_II_disability_rate_among_new_cases_of_leprosy_Female_gt_15' then if p_record_x.case_type = 'illness' then Grade_II_disability_rate_among_new_cases_of_leprosy_Fem_gt_15: = 1;


end if;


-- 4.2.3.2.5-Grade II disability rate among new cases of leprosy: Female =>15
elsif p_indic_name = 'indic_Grade_II_disability_rate_among_new_cases_of_leprosy_Female_gte_15' then if p_record_x.case_type = 'illness' then Grade_II_disability_rate_among_new_cases_of_leprosy_Fem_gte_15: = 1;


end if;


-- New Leprosy cases detected(PB) - < 15 years, Male(LEP_NOT_.1.1. 1):Leprosy
elsif p_indic_name = 'indic_LEP_NOT__1_1_1' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'leprosy'
and p_record_x.hew_screening_classification = 'Leprosy Presumed'
and p_record_x.hc_leprosy_type = 'pb_leprosy' then LEP_NOT__1_1_1: = 1;


end if;


-- New Leprosy cases detected(PB) - < 15 years, Female(LEP_NOT_.1.1. 2):
elsif p_indic_name = 'indic_LEP_NOT__1_1_2' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'leprosy'
and p_record_x.hew_screening_classification = 'Leprosy Presumed'
and p_record_x.hc_leprosy_type = 'pb_leprosy' then LEP_NOT__1_1_2: = 1;


end if;


-- New Leprosy cases detected(PB) - >= 15 years, Male(LEP_NOT_.1.1. 3):
elsif p_indic_name = 'indic_LEP_NOT__1_1_3' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'leprosy'
and p_record_x.hew_screening_classification = 'Leprosy Presumed'
and p_record_x.hc_leprosy_type = 'pb_leprosy' then LEP_NOT__1_1_3: = 1;


end if;


-- New Leprosy cases detected(PB) - >= 15 years, Female(LEP_NOT_.1.1. 4):
elsif p_indic_name = 'indic_LEP_NOT__1_1_4' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'leprosy'
and p_record_x.hew_screening_classification = 'Leprosy Presumed'
and p_record_x.hc_leprosy_type = 'pb_leprosy' then LEP_NOT__1_1_4: = 1;


end if;


-- New Leprosy cases detected(MB) - < 15 years, Male(LEP_NOT_.1.1.5. 1):
elsif p_indic_name = 'indic_LEP_NOT__1_1_5_1' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'leprosy'
and p_record_x.hew_screening_classification = 'Leprosy Presumed'
and p_record_x.hc_leprosy_type = 'mb_leprosy' then LEP_NOT__1_1_5_1: = 1;


end if;


-- New Leprosy cases detected(MB) - < 15 years, Female(LEP_NOT_.1.1.5. 2):
elsif p_indic_name = 'indic_LEP_NOT__1_1_5_2' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'leprosy'
and p_record_x.hew_screening_classification = 'Leprosy Presumed'
and p_record_x.hc_leprosy_type = 'mb_leprosy' then LEP_NOT__1_1_5_2: = 1;


end if;


-- New Leprosy cases detected(MB) - >= 15 years, Male(LEP_NOT_.1.1.5. 3):
elsif p_indic_name = 'indic_LEP_NOT__1_1_5_3' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'leprosy'
and p_record_x.hew_screening_classification = 'Leprosy Presumed'
and p_record_x.hc_leprosy_type = 'mb_leprosy' then LEP_NOT__1_1_5_3: = 1;


end if;


-- New Leprosy cases detected(MB) - >= 15 years, Female(LEP_NOT_.1.1.5. 4):
elsif p_indic_name = 'indic_LEP_NOT__1_1_5_4' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'leprosy'
and p_record_x.hew_screening_classification = 'Leprosy Presumed'
and p_record_x.hc_leprosy_type = 'mb_leprosy' then LEP_NOT__1_1_5_4: = 1;


end if;


-- New leprosy cases with Grade II disability (MB+PB) - < 15 years, Male(LEP_DIS.1. 1):
elsif p_indic_name = 'indic_LEP_DIS_1_1' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'leprosy'
and p_record_x.hew_screening_classification = 'Leprosy Presumed'
and p_record_x.level_of_leprosy_grade = 'disability_grade_2' then LEP_DIS_1_1: = 1;


end if;


-- New leprosy cases with Grade II disability (MB+PB) - < 15 years, Female(LEP_DIS.1. 2):
elsif p_indic_name = 'indic_LEP_DIS_1_2' then if p_record_x.case_type = 'illness'
and p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'leprosy'
and p_record_x.hew_screening_classification = 'Leprosy Presumed'
and p_record_x.level_of_leprosy_grade = 'disability_grade_2' then LEP_DIS_1_2: = 1;


end if;


-- New leprosy cases with Grade II disability (MB+PB) - >= 15 years, Male(LEP_DIS.1. 3):
elsif p_indic_name = 'indic_LEP_DIS_1_3' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'leprosy'
and p_record_x.hew_screening_classification = 'Leprosy Presumed'
and p_record_x.level_of_leprosy_grade = 'disability_grade_2' then LEP_DIS_1_3: = 1;


end if;


-- New leprosy cases with Grade II disability (MB+PB) - >= 15 years, Female(LEP_DIS.1. 4):
elsif p_indic_name = 'indic_LEP_DIS_1_4' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'leprosy'
and p_record_x.hew_screening_classification = 'Leprosy Presumed'
and p_record_x.level_of_leprosy_grade = 'disability_grade_2' then LEP_DIS_1_4: = 1;


end if;


-- Leprosy Treatment Completion Rate - Registered cohort of MB cases(LEP_TX.2.):
elsif p_indic_name = 'indic_LEP_TX_2_' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'leprosy'
and p_record_x.hew_screening_classification = 'Leprosy Presumed'
and p_record_x.hc_leprosy_type = 'mb_leprosy' then LEP_TX_2_: = 1;


end if;


-- Leprosy Treatment Completion Rate - Treatment completed MB cases(LEP_TX.3.):
elsif p_indic_name = 'indic_LEP_TX_3_' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'leprosy'
and p_record_x.hew_screening_classification = 'Leprosy Presumed'
and p_record_x.hc_leprosy_type = 'mb_leprosy' then LEP_TX_3_: = 1;


end if;


-- Leprosy Treatment Completion Rate - Registered cohort of PB cases(LEP_TX.4.):
elsif p_indic_name = 'indic_LEP_TX_4_' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'leprosy'
and p_record_x.hew_screening_classification = 'Leprosy Presumed'
and p_record_x.hc_leprosy_type = 'pb_leprosy' then LEP_TX_4_: = 1;


end if;


-- Leprosy Treatment Completion Rate - Treatment completed PB cases(LEP_TX.5.):
elsif p_indic_name = 'indic_LEP_TX_5_' then if p_record_x.case_type = 'illness'
and p_record_x.illness_type = 'leprosy'
and p_record_x.hew_screening_classification = 'Leprosy Presumed'
and p_record_x.hc_leprosy_type = 'pb_leprosy' then LEP_TX_5_: = 1;


end if;


-- xsum
elsif p_indic_name = 'indic_xsum' then if p_record_x.property_name = 'xproperty_name' then xsum: = 1;


end if;


-- Number of outpatient visits - < 5 Years, Male(MS_OPD_NumOV.1. 1):Medical
elsif p_indic_name = 'indic_MS_OPD_NumOV_1_1' then if p_record_x.gender = 'male' then MS_OPD_NumOV_1_1: = 1;


end if;


-- Number of outpatient visits - < 5 Years, Female(MS_OPD_NumOV.1. 2):Medical
elsif p_indic_name = 'indic_MS_OPD_NumOV_1_2' then if p_record_x.gender = 'female' then MS_OPD_NumOV_1_2: = 1;


end if;


-- Number of outpatient visits - 5 - 9 years, Male(MS_OPD_NumOV.1. 3):Medical
elsif p_indic_name = 'indic_MS_OPD_NumOV_1_3' then if p_record_x.gender = 'male' then MS_OPD_NumOV_1_3: = 1;


end if;


-- Number of outpatient visits - 5 - 9 years, Female(MS_OPD_NumOV.1. 4):Medical
elsif p_indic_name = 'indic_MS_OPD_NumOV_1_4' then if p_record_x.gender = 'female' then MS_OPD_NumOV_1_4: = 1;


end if;


-- Number of outpatient visits - 11 - 19 years, Male(MS_OPD_NumOV.1. 5):Medical
elsif p_indic_name = 'indic_MS_OPD_NumOV_1_5' then if p_record_x.gender = 'male' then MS_OPD_NumOV_1_5: = 1;


end if;


-- Number of outpatient visits - 11 - 19 years, Female(MS_OPD_NumOV.1. 6):Medical
elsif p_indic_name = 'indic_MS_OPD_NumOV_1_6' then if p_record_x.gender = 'female' then MS_OPD_NumOV_1_6: = 1;


end if;


-- Number of outpatient visits - 20 - 29 years, Male(MS_OPD_NumOV.1. 7):Medical
elsif p_indic_name = 'indic_MS_OPD_NumOV_1_7' then if p_record_x.gender = 'male' then MS_OPD_NumOV_1_7: = 1;


end if;


-- Number of outpatient visits - 20 - 29 years, Female(MS_OPD_NumOV.1. 6):Medical
elsif p_indic_name = 'indic_MS_OPD_NumOV_1_8' then if p_record_x.gender = 'female' then MS_OPD_NumOV_1_8: = 1;


end if;


-- Number of outpatient visits - 30 - 45 years, Male(MS_OPD_NumOV.1. 9):Medical
elsif p_indic_name = 'indic_MS_OPD_NumOV_1_9' then if p_record_x.gender = 'male' then MS_OPD_NumOV_1_9: = 1;


end if;


-- Number of outpatient visits - 30 - 45 years, Female(MS_OPD_NumOV.1. 10):Medical
elsif p_indic_name = 'indic_MS_OPD_NumOV_1_10' then if p_record_x.gender = 'female' then MS_OPD_NumOV_1_10: = 1;


end if;


-- Number of outpatient visits - 46 - 65 years, Male(MS_OPD_NumOV.1. 11):Medical
elsif p_indic_name = 'indic_MS_OPD_NumOV_1_11' then if p_record_x.gender = 'male' then MS_OPD_NumOV_1_11: = 1;


end if;


-- Number of outpatient visits - 46 - 65 years, Female(MS_OPD_NumOV.1. 12):Medical
elsif p_indic_name = 'indic_MS_OPD_NumOV_1_12' then if p_record_x.gender = 'female' then MS_OPD_NumOV_1_12: = 1;


end if;


-- Number of outpatient visits - >= 66 Years, Male(MS_OPD_NumOV.1. 13):Medical
elsif p_indic_name = 'indic_MS_OPD_NumOV_1_13' then if p_record_x.gender = 'male' then MS_OPD_NumOV_1_13: = 1;


end if;


-- Number of outpatient visits - >= 66 Years, Female(MS_OPD_NumOV.1. 14):Medical
elsif p_indic_name = 'indic_MS_OPD_NumOV_1_14' then if p_record_x.gender = 'female' then MS_OPD_NumOV_1_14: = 1;


end if;


-- Number of outpatient visits - Number of health insurance beneficiaries that visited HF in the reporting period(MS_OPD_NumOV.2):Medical
elsif p_indic_name = 'indic_MS_OPD_NumOV_2' then if p_record_x.cbhi_member = 'yes' then MS_OPD_NumOV_2: = 1;


end if;


-- Tracer drug availability - Tracer drug availability(HCSM_EDA_TDR):
elsif p_indic_name = 'indic_HCSM_EDA_TDR' then if p_record_x.property_name = 'xproperty_name' then HCSM_EDA_TDR: = 1;


end if;


-- Tracer drug availability - HP_Amoxicillin dispersible tablet(PMS_AVAIL.1.26.):Medical
elsif p_indic_name = 'indic_PMS_AVAIL_1_26_' then if p_record_x.balance = '0' then PMS_AVAIL_1_26_: = 1;


end if;


-- Tracer drug availability - HP_Oral Rehydration Salts(PMS_AVAIL.1.27.):Medical
elsif p_indic_name = 'indic_PMS_AVAIL_1_27_' then if p_record_x.medication_name = 'Oral''Rehydration''Salt''20.7g''for''1''Littre''Preparation''Powder(ORS)'
and p_record_x.balance = '0' then PMS_AVAIL_1_27_: = 1;


end if;


-- Tracer drug availability - HP_Zinc dispersible tablet(PMS_AVAIL.1.28.):Medical
elsif p_indic_name = 'indic_PMS_AVAIL_1_28_' then if p_record_x.medication_name = 'Zinc''Acetate''20mg''Tablet''(Scored''&''Dispersable)'
and p_record_x.balance = '0' then PMS_AVAIL_1_28_: = 1;


end if;


-- Tracer drug availability - HP_Gentamycin Sulphate injection(PMS_AVAIL.1.29.):Medical
elsif p_indic_name = 'indic_PMS_AVAIL_1_29_' then if p_record_x.medication_name = 'Gentamicin''40mg/ml''in''2ml''Ampoule''Injection'
and p_record_x.balance = '0' then PMS_AVAIL_1_29_: = 1;


end if;


-- Tracer drug availability - HP_Medroxyprogesterone Injection(PMS_AVAIL.1.30.):Medical
elsif p_indic_name = 'indic_PMS_AVAIL_1_30_' then if p_record_x.medication_name = 'Medroxyprogesterone''Acetate''150mg/ml''in''1ml''vial''Injection''(Aqueous''suspension)(depoprovera)'
and p_record_x.balance = '0' then PMS_AVAIL_1_30_: = 1;


end if;


-- Tracer drug availability - HP_Arthmeter + Lumfanthrine (Coartem) tablet (any packing)(PMS_AVAIL.1.31.):Medical
elsif p_indic_name = 'indic_PMS_AVAIL_1_31_' then if p_record_x.balance = '0' then PMS_AVAIL_1_31_: = 1;


end if;


-- Tracer drug availability - HP_Ferrous sulphate + folic acid(PMS_AVAIL.1.32.):Medical
elsif p_indic_name = 'indic_PMS_AVAIL_1_32_' then if p_record_x.medication_name = 'Ferrous''Sulphate''+''Folic''Acid''(200mg''+''0.4mg)''Tablet'
and p_record_x.balance = '0' then PMS_AVAIL_1_32_: = 1;


end if;


-- Tracer drug availability - HP_Albendazole tablet/suspension(PMS_AVAIL.1.33.):Medical
elsif p_indic_name = 'indic_PMS_AVAIL_1_33_' then if p_record_x.medication_name = 'Albendazole''400mg''Tablet'
and p_record_x.balance = '0' then PMS_AVAIL_1_33_: = 1;


end if;


-- CHIM_ECND.2.1:Child Health:Early neonatal death at home
elsif p_indic_name = 'indic_CHIM_ECND_2_1' then if (
  p_record_x.closed = 'True'
  and extract(
    day
    from
      AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
  ) <= 7
  and coalesce(p_record_x.pregnancy_pp_case_id, '') <> ''
  and p_record_x.cause_of_death = 'neonatal_death_on_the_way_to_hf'
)
or (
  p_record_x.closed = 'True'
  and extract(
    day
    from
      AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
  ) <= 7
  and coalesce(p_record_x.pregnancy_pp_case_id, '') <> ''
  and p_record_x.close_reason = 'died'
  and p_record_x.death_early_neonatal = 'yes'
  and p_record_x.death_location = 'community'
) then CHIM_ECND_2_1: = 1;


end if;


-- CHIM_ECND.2.2:Child Health:Early neonatal death at HP
elsif p_indic_name = 'indic_CHIM_ECND_2_2' then if (
  p_record_x.closed = 'True'
  and extract(
    day
    from
      AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
  ) <= 7
  and coalesce(p_record_x.pregnancy_pp_case_id, '') <> ''
  and p_record_x.cause_of_death = 'neonatal_death_at_hp'
)
or (
  p_record_x.closed = 'True'
  and extract(
    day
    from
      AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
  ) <= 7
  and coalesce(p_record_x.pregnancy_pp_case_id, '') <> ''
  and p_record_x.close_reason = 'died'
  and p_record_x.death_early_neonatal = 'yes'
  and p_record_x.death_neonatal = 'yes'
  and p_record_x.death_location = 'health_post'
) then CHIM_ECND_2_2: = 1;


end if;


-- CHIM_ECND.2.3:Child Health:Early neonatal death on the way to health facility
elsif p_indic_name = 'indic_CHIM_ECND_2_3' then if (
  p_record_x.closed = 'True'
  and extract(
    day
    from
      AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
  ) <= 7
  and coalesce(p_record_x.pregnancy_pp_case_id, '') <> ''
  and p_record_x.cause_of_death = 'neonatal_death_on_the_way_to_hf'
)
or (
  p_record_x.closed = 'True'
  and extract(
    day
    from
      AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
  ) <= 7
  and coalesce(p_record_x.pregnancy_pp_case_id, '') <> ''
  and p_record_x.close_reason = 'died'
  and p_record_x.death_early_neonatal = 'yes'
  and p_record_x.death_neonatal = 'yes'
  and (
    p_record_x.death_location = 'en_route_hc'
    or p_record_x.death_location = 'en_route_hp'
  )
) then CHIM_ECND_2_3: = 1;


end if;


-- CHIM_ECND.1.1:Child Health:Number of neonatal deaths in the first 24 hrs of life/community/
elsif p_indic_name = 'indic_CHIM_ECND_1_1' then if (
  p_record_x.closed = 'True'
  and extract(
    day
    from
      AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
  ) <= 7
  and coalesce(p_record_x.pregnancy_pp_case_id, '') <> ''
  and p_record_x.cause_of_death = 'neonatal_death_on_the_way_to_hf'
)
or (
  p_record_x.closed = 'True'
  and extract(
    day
    from
      AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
  ) <= 7
  and coalesce(p_record_x.pregnancy_pp_case_id, '') <> ''
  and p_record_x.close_reason = 'died'
  and p_record_x.death_early_neonatal = 'yes'
  and p_record_x.death_neonatal = 'yes'
  and (
    p_record_x.death_location = 'en_route_hc'
    or p_record_x.death_location = 'en_route_hp'
  )
) then CHIM_ECND_1_1: = 1;


end if;


-- CHIM_ECND.1.2:Child Health:Number of neonatal deaths between 1 -7 days of life/community
elsif p_indic_name = 'indic_CHIM_ECND_1_2' then if (
  p_record_x.closed = 'True'
  and (
    extract(
      day
      from
        AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
    ) >= 1
    and extract(
      day
      from
        AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
    ) <= 7
  )
  and coalesce(p_record_x.pregnancy_pp_case_id, '') <> ''
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
    extract(
      day
      from
        AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
    ) >= 1
    and extract(
      day
      from
        AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
    ) <= 7
  )
  and coalesce(p_record_x.pregnancy_pp_case_id, '') <> ''
  and p_record_x.close_reason = 'died'
  and p_record_x.death_early_neonatal = 'yes'
  and p_record_x.death_neonatal = 'yes'
) then CHIM_ECND_1_2: = 1;


end if;


-- CHIM_ECND.1:Child Health:Early neonatal death at community dis aggregated by time of death
elsif p_indic_name = 'indic_CHIM_ECND_1' then if (
  (
    p_record_x.closed = 'True'
    and extract(
      day
      from
        AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
    ) <= 1
    and coalesce(p_record_x.pregnancy_pp_case_id, '') <> ''
    and (
      p_record_x.cause_of_death = 'neonatal_death_on_the_way_to_hf'
      or p_record_x.cause_of_death = 'neonatal_death_at_home'
      or p_record_x.cause_of_death = 'neonatal_death_at_hp'
      or p_record_x.cause_of_death = 'neonatal_death_institutional'
    )
  )
  or (
    p_record_x.closed = 'True'
    and extract(
      day
      from
        AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
    ) <= 1
    and coalesce(p_record_x.pregnancy_pp_case_id, '') <> ''
    and p_record_x.close_reason = 'died'
    and p_record_x.death_early_neonatal = 'yes'
    and p_record_x.death_neonatal = 'yes'
  )
)
or (
  (
    p_record_x.closed = 'True'
    and (
      extract(
        day
        from
          AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
      ) >= 1
      and extract(
        day
        from
          AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
      ) <= 7
    )
    and coalesce(p_record_x.pregnancy_pp_case_id, '') <> ''
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
      extract(
        day
        from
          AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
      ) >= 1
      and extract(
        day
        from
          AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
      ) <= 7
    )
    and coalesce(p_record_x.pregnancy_pp_case_id, '') <> ''
    and p_record_x.close_reason = 'died'
    and p_record_x.death_early_neonatal = 'yes'
    and p_record_x.death_neonatal = 'yes'
  )
)
or (
  p_record_x.closed = 'True'
  and (
    extract(
      day
      from
        AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
    ) >= 1
    and extract(
      day
      from
        AGE(p_record_x.death_date:: DATE, p_record_x.dob:: DATE)
    ) <= 7
  )
  and coalesce(p_record_x.pregnancy_pp_case_id, '') <> ''
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
    extract(
      day
      from
        AGE(p_record_x.dob:: DATE, p_record_x.dob:: DATE)
    ) >= 1
    and extract(
      day
      from
        AGE(p_record_x.dob:: DATE, p_record_x.dob:: DATE)
    ) <= 7
  )
  and coalesce(p_record_x.pregnancy_pp_case_id, '') <> ''
  and p_record_x.close_reason = 'died'
  and p_record_x.death_early_neonatal = 'yes'
  and p_record_x.death_neonatal = 'yes'
) then CHIM_ECND_1: = 1;


end if;


elsif p_indic_name = 'indic_children_who_treated_for_diarrhea_by_ors_and_zinc' then if (
  p_record_x.current_classification like '%some_dehydration%'
  or p_record_x.current_classification like '%no_dehydration%'
)
and (
  p_record_x.all_med_names like '%ors%'
  or p_record_x.all_med_names like '%ors_planb%'
)
and p_record_x.all_med_names like '%zink%' then children_who_treated_for_diarrhea_by_ors_and_zinc: = 1;


end if;


-- CHIM_DhRX.2:Child Health:Treated by ORS only
elsif p_indic_name = 'indic_children_who_treated_for_diarrhea_by_ors' then if (
  p_record_x.current_classification like '%severe_dehydration%'
  or p_record_x.current_classification like '%some_dehydration%'
  or p_record_x.current_classification like '%no_dehydration%'
)
and (
  p_record_x.all_med_names like '%ors%'
  or p_record_x.all_med_names like '%ors_planb%'
) then children_who_treated_for_diarrhea_by_ors: = 1;


end if;


end if;


exception -- Optionally handle exceptions
when others then -- Comment out or remove the error logging if not required
raise WARNING 'Compute error: %',
sqlerrm;


return;


end;


return next;


end;


$function $;