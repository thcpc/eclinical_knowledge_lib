SELECT
	esr.crf_version_id,
	es.name,
	eos.locale -> "$.name.en_US" visit,
	ecf.locale -> "$.name.en_US" form,
	ecq.locale -> "$.name.en_US" question,
	esrecord.current_val,
	esrecord.operation_dt
FROM
	eclinical_subject_record esrecord
	JOIN eclinical_subject_item esi ON esrecord.subject_item_id=esi.id
	JOIN eclinical_subject_crfversion esr ON esi.subject_version_id=esr.id
	JOIN eclinical_subject es ON esr.subject_id=es.id
	JOIN eclinical_crf_item eci ON esi.crf_item_id = eci.id AND esr.crf_version_id=eci.crf_version_id
	JOIN eclinical_crf_question ecq ON eci.question_id=ecq.id and eci.crf_version_id=ecq.crf_version_id
	JOIN eclinical_crf_itemgroup ecig ON ecq.itemgroup_id=ecig.id AND ecq.crf_version_id=ecig.crf_version_id
	JOIN eclinical_crf_form ecf ON ecig.form_id=ecf.id AND ecig.crf_version_id=ecf.crf_version_id
	JOIN eclinical_odm_studyevent eos ON ecf.study_event_id=eos.id AND ecf.crf_version_id=eos.crf_version_id
WHERE
-- 	eci.crf_version_id=25 AND (esrecord.description REGEXP 'a valid date');
	esrecord.current_val REGEXP '31'
    ORDER BY es.name, esr.crf_version_id;