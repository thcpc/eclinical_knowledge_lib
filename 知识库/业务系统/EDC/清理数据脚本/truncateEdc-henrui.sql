SET foreign_key_checks=FALSE;

TRUNCATE TABLE eclinical_crf_version;
TRUNCATE TABLE eclinical_odm_studyevent;
TRUNCATE TABLE eclinical_odm_form;
TRUNCATE TABLE eclinical_odm_studyevent_form;
TRUNCATE TABLE eclinical_odm_itemgroup;
TRUNCATE TABLE eclinical_odm_form_itemgroup;
TRUNCATE TABLE eclinical_odm_item;
TRUNCATE TABLE eclinical_odm_itemgroup_item;
TRUNCATE TABLE eclinical_odm_item_codelist;


TRUNCATE TABLE eclinical_crf_form;
TRUNCATE TABLE eclinical_crf_itemgroup;
TRUNCATE TABLE eclinical_crf_question;
TRUNCATE TABLE eclinical_crf_item;
TRUNCATE TABLE eclinical_crf_variable_item;

TRUNCATE TABLE eclinical_crf_item_rule;
TRUNCATE TABLE eclinical_crf_automation;
TRUNCATE TABLE eclinical_crf_automation_condition;
TRUNCATE TABLE eclinical_crf_arm;
TRUNCATE TABLE eclinical_crf_arm_studyevent;
TRUNCATE TABLE eclinical_crf_arm_studyevent_form;

TRUNCATE TABLE eclinical_crf_subject_define;
TRUNCATE TABLE eclinical_crf_flow_node;
TRUNCATE TABLE eclinical_crf_flow_line;
TRUNCATE TABLE eclinical_crf_flow_node_property;
TRUNCATE TABLE eclinical_crf_flow_node_visit;

TRUNCATE TABLE eclinical_reference_relation;
TRUNCATE TABLE eclinical_study_site_crfversion_history;
TRUNCATE TABLE eclinical_study_site_crfversion;
TRUNCATE TABLE eclinical_crf_codelist;
TRUNCATE TABLE eclinical_crf_codelist_item;
TRUNCATE TABLE eclinical_endymion_detail;
TRUNCATE TABLE eclinical_record_referrence;
TRUNCATE TABLE eclinical_crf_variable;
TRUNCATE TABLE eclinical_active_log;

TRUNCATE TABLE eclinical_lab;
TRUNCATE TABLE eclinical_lab_version;
TRUNCATE TABLE eclinical_lab_property;
TRUNCATE TABLE eclinical_lab_version_row;
TRUNCATE TABLE eclinical_lab_version_data;

TRUNCATE TABLE eclinical_sdv_form;
TRUNCATE TABLE eclinical_sdv_visit;
TRUNCATE TABLE eclinical_sdv_subject;
TRUNCATE TABLE eclinical_sdv_global;

TRUNCATE TABLE eclinical_crf_cycle;
TRUNCATE TABLE eclinical_crf_cycle_item;
TRUNCATE TABLE eclinical_crf_cycle_item_studyevent;
TRUNCATE TABLE eclinical_crf_cycle_item_studyevent_form;
TRUNCATE TABLE eclinical_cycle_item_subject;

TRUNCATE TABLE eclinical_audit_trail;
TRUNCATE TABLE eclinical_common_user_favourite_url;
TRUNCATE TABLE eclinical_common_user_message;
TRUNCATE TABLE eclinical_common_user_recent_url;
TRUNCATE TABLE eclinical_crf_dataset;
TRUNCATE TABLE eclinical_crf_record;
TRUNCATE TABLE eclinical_data_analysis;
TRUNCATE TABLE eclinical_data_cut_task;
TRUNCATE TABLE eclinical_endymion_info;
TRUNCATE TABLE eclinical_logged_endymion;
TRUNCATE TABLE eclinical_manual_query;
TRUNCATE TABLE eclinical_manual_query_reply;
TRUNCATE TABLE eclinical_reports;
TRUNCATE TABLE eclinical_task_endymoin;
TRUNCATE TABLE eclinical_user_preferences;

TRUNCATE TABLE eclinical_subject;
TRUNCATE TABLE eclinical_subject_arm ;
TRUNCATE TABLE eclinical_subject_crfversion ;
TRUNCATE TABLE eclinical_subject_crfversion_history ;
TRUNCATE TABLE eclinical_subject_form ;
TRUNCATE TABLE eclinical_subject_form_file ;
TRUNCATE TABLE eclinical_subject_form_labversion ;
TRUNCATE TABLE eclinical_subject_form_status ;
TRUNCATE TABLE eclinical_subject_ig ;
TRUNCATE TABLE eclinical_subject_ig_status ;

TRUNCATE TABLE eclinical_subject_item ;
TRUNCATE TABLE eclinical_subject_item_rule ;
TRUNCATE TABLE eclinical_subject_item_status ;
TRUNCATE TABLE eclinical_subject_phase ;
TRUNCATE TABLE eclinical_subject_phase_property ;

TRUNCATE TABLE eclinical_subject_record ;
TRUNCATE TABLE eclinical_subject_record_history ;
TRUNCATE TABLE eclinical_subject_status ;
TRUNCATE TABLE eclinical_subject_visit ;
TRUNCATE TABLE eclinical_subject_visit_file ;
TRUNCATE TABLE eclinical_subject_visit_status ;
TRUNCATE TABLE eclinical_system_query;
TRUNCATE TABLE eclinical_system_query_reply;



TRUNCATE TABLE eclinical_upgrade_log;
TRUNCATE TABLE eclinical_subject_file;
TRUNCATE TABLE eclinical_crf_form_header;


TRUNCATE TABLE eclinical_subject_ig_relate;
TRUNCATE TABLE eclinical_crf_form_relation;


TRUNCATE TABLE eclinical_crf_branch_arm;
TRUNCATE TABLE eclinical_crf_branch;
TRUNCATE TABLE eclinical_crf_flow_plan_branch;
TRUNCATE TABLE eclinical_crf_flow_plan;
TRUNCATE TABLE eclinical_crf_flow_plan_rule;
TRUNCATE TABLE eclinical_crf_flow_plan_item;
TRUNCATE TABLE eclinical_subject_plan_item_record;

TRUNCATE TABLE eclinical_payment_details;
TRUNCATE TABLE eclinical_payment_request;
TRUNCATE TABLE eclinical_payment_request_audit;
TRUNCATE TABLE eclinical_payment_request_detail;
TRUNCATE TABLE eclinical_payment_site_budget;
TRUNCATE TABLE eclinical_payment_site_crf_form_amount;
TRUNCATE TABLE eclinical_payment_site_form_status;
TRUNCATE TABLE eclinical_payment_site_odm_form_amount;
TRUNCATE TABLE eclinical_payment_unit;
TRUNCATE TABLE eclinical_crf_form_population;
TRUNCATE TABLE eclinical_subject_ig_populate;
TRUNCATE TABLE eclinical_crf_codelist_relation;

TRUNCATE TABLE eclinical_phase_property;
TRUNCATE TABLE eclinical_phase_property_role;

TRUNCATE TABLE eclinical_crf_flow_node_form;
TRUNCATE TABLE eclinical_crf_visit_window;
TRUNCATE TABLE eclinical_crf_dispense_form;
TRUNCATE TABLE eclinical_crf_dispense_item;
SET foreign_key_checks=True;