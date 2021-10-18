SELECT ecf.id FROM eclinical_crf_form ecf
JOIN eclinical_odm_studyevent eos on ecf.study_event_id= eos.id and ecf.crf_version_id= eos.crf_version_id
WHERE ecf.locale -> "$.name.en_US"="Date of Visit" and eos.locale -> "$.name.en_US"="Screening" and eos.crf_version_id=38;