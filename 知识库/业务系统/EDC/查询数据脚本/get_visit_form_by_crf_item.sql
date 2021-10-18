SELECT
	json_unquote(json_extract(eos.locale, concat( '$.name.', "en_US"))) visit,
	json_unquote(json_extract(ecf.locale, concat( '$.name.', "en_US"))) form,
	json_unquote(json_extract(ecq.locale, concat( '$.name.', "en_US"))) question
FROM
	eclinical_crf_item eci
	JOIN eclinical_crf_question ecq ON eci.question_id=ecq.id and eci.crf_version_id=ecq.crf_version_id
-- 	JOIN eclinical_ext_odm_form_question eeofq ON ecq.odm_question_id=eeofq.id AND ecq.crf_version_id=eeofq.crf_version_id
	JOIN eclinical_crf_itemgroup ecig ON ecq.itemgroup_id=ecig.id AND ecq.crf_version_id=ecig.crf_version_id
	JOIN eclinical_crf_form ecf ON ecig.form_id=ecf.id AND ecig.crf_version_id=ecf.crf_version_id
	JOIN eclinical_odm_studyevent eos ON ecf.study_event_id=eos.id AND ecf.crf_version_id=eos.crf_version_id
WHERE
    eci.crf_version_id=72 AND (eci.id in (14490));