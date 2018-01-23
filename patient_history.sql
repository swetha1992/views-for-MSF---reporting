SELECT
  /* patient_history columns*/
  ph.id_patient_history,
  ph.patient_id,
  ph.encounter_id,
  /* mh_network_information columns*/
  mni.id_mh_network_information,
  mni.mh_name_of_mlo,
  mni.mh_network_area,
  mni.mh_referred_by,

  /*mh_medical_history_section */
  mmhs.id_mh_medical_history_section,
  mmhs.mh_date_of_injury,
  mmhs.mh_cause_of_injury,
  mmhs.mh_patient_general_condition,
  
  /* mh_caretaker_needs columns*/
  mcn.id_mh_caretaker_needs,
  mcn.mh_if_caretaker_is_needed_why

FROM patient_history AS ph

  JOIN mh_network_information AS mni
    ON ph.id_patient_history = mni.id_patient_history

  JOIN mh_medical_history_section AS mmhs
    ON ph.id_patient_history = mmhs.id_patient_history

  JOIN mh_caretaker_needs AS mcn
    ON ph.id_patient_history = mcn.id_patient_history