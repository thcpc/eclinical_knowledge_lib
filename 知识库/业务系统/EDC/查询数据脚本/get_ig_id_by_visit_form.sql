SELECT eci.id FROM eclinical_crf_itemgroup eci
JOIN eclinical_crf_form ecf ON eci.form_id= ecf.id AND eci.crf_version_id= ecf.crf_version_id
JOIN eclinical_odm_studyevent eos ON ecf.study_event_id= eos.id AND ecf.crf_version_id= eos.crf_version_id
WHERE ecf.locale -> "$.name.en_US"="Date of Visit" AND eos.locale -> "$.name.en_US"="Screening" AND eos.crf_version_id=1;