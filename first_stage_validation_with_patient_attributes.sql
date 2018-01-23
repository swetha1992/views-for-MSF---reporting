SELECT
  /* first_stage_validation columns*/
  fsv.id_first_stage_validation,
  fsv.patient_id,
  fsv.encounter_id,
  /* fstg_medical_files columns*/
  fmf.id_fstg_medical_files,
  fmf.fstg_type_of_medical_information_received,
  fmf.fstg_date_received,
  fmf.fstg_is_the_medical_file_complete,
  fmf.fstg_document_s_needed_to_be_complete,
  fmf.stage,

  /*fstg_first_stage_validation */
  ffsv.id_fstg_first_stage_validation,
  ffsv.fstg_date_of_presentation_at_1st_stage,
  ffsv.fstg_outcomes_for_1st_stage_surgical_validation,
  ffsv.fstg_priority,
  ffsv.fstg_name_s_of_surgeon_1,
  ffsv.fstg_name_s_of_surgeon_2,
  ffsv.fstg_does_the_patient_need_surgical_final_validation,
  ffsv.fstg_comments,
  ffsv.fstg_postpone_reason,
  ffsv.fstg_comments_about_postpone_reason,
  ffsv.fstg_medical_file_to_be_submitted_again_by,
  ffsv.fstg_type_of_medical_information_needed_for_next_submission,
  ffsv.fstg_refused_reason,
  ffsv.fstg_comments_about_refusal,
  ffsv.fstg_outcomes_for_1st_stage_anaesthesia_validation,
  ffsv.fstg_name_s_of_anaesthetist,
  ffsv.fstg_comments_about_anaesthesia_validation,
  ffsv.fst_type_of_medical_information_needed_for_next_submission,
  /* fstg_specialty_determined_by_mlo columns*/

  /* joining patient attribute */
  pa.*

FROM first_stage_validation AS fsv


  JOIN
  fstg_first_stage_validation AS ffsv
    ON fsv.id_first_stage_validation = ffsv.id_first_stage_validation

  JOIN fstg_medical_files AS fmf
    ON fmf.id_first_stage_validation = fsv.id_first_stage_validation

  join person_attributes as pa
  on fsv.patient_id = pa.person_id;