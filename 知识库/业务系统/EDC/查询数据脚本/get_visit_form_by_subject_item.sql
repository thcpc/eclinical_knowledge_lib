SELECT esr.crf_version_id,
       es.name,
       json_unquote(json_extract(eos.locale, concat('$.name.', "en_US"))) visit,
       sv.sn                                                              visit_sn,
       json_unquote(json_extract(ecf.locale, concat('$.name.', "en_US"))) form,
       ig.sn                                                              ig_sn,
       json_unquote(json_extract(ecq.locale, concat('$.name.', "en_US"))) question,
       esi.id
FROM eclinical_subject_item esi
         JOIN eclinical_subject_ig ig ON esi.subject_ig_id = ig.id
         JOIN eclinical_subject_form sf ON ig.subject_form_id = sf.id
         JOIN eclinical_subject_visit sv ON sf.subject_visit_id = sv.id
         JOIN eclinical_subject_crfversion esr ON esi.subject_version_id = esr.id
         JOIN eclinical_subject es ON esr.subject_id = es.id
         JOIN eclinical_crf_item eci ON esi.crf_item_id = eci.id AND esr.crf_version_id = eci.crf_version_id
         JOIN eclinical_crf_question ecq ON eci.question_id = ecq.id and eci.crf_version_id = ecq.crf_version_id
         JOIN eclinical_crf_itemgroup ecig ON ecq.itemgroup_id = ecig.id AND ecq.crf_version_id = ecig.crf_version_id
         JOIN eclinical_crf_form ecf ON ecig.form_id = ecf.id AND ecig.crf_version_id = ecf.crf_version_id
         JOIN eclinical_odm_studyevent eos ON ecf.study_event_id = eos.id AND ecf.crf_version_id = eos.crf_version_id
WHERE 1 = 1
  AND esi.id in (3, 17, 87, 129)
ORDER BY es.name,
         json_unquote(json_extract(eos.locale, concat('$.name.', "en_US"))),
         sv.sn,
         json_unquote(json_extract(ecf.locale, concat('$.name.', "en_US"))),
         ig.sn;



SELECT esr.crf_version_id,
       es.name,
       json_unquote(json_extract(eos.locale, concat('$.name.', "en_US"))) visit,
       sv.sn                                                              visit_sn,
       json_unquote(json_extract(ecf.locale, concat('$.name.', "en_US"))) form,
       ig.sn                                                              ig_sn,
       json_unquote(json_extract(ecq.locale, concat('$.name.', "en_US"))) question,
       esi.id,
       r.current_val
FROM eclinical_subject_record r
         JOIN eclinical_subject_item esi on r.subject_item_id = esi.id
         JOIN eclinical_subject_ig ig ON esi.subject_ig_id = ig.id
         JOIN eclinical_subject_form sf ON ig.subject_form_id = sf.id
         JOIN eclinical_subject_visit sv ON sf.subject_visit_id = sv.id
         JOIN eclinical_subject_crfversion esr ON esi.subject_version_id = esr.id
         JOIN eclinical_subject es ON esr.subject_id = es.id
         JOIN eclinical_crf_item eci ON esi.crf_item_id = eci.id AND esr.crf_version_id = eci.crf_version_id
         JOIN eclinical_crf_question ecq ON eci.question_id = ecq.id and eci.crf_version_id = ecq.crf_version_id
         JOIN eclinical_crf_itemgroup ecig ON ecq.itemgroup_id = ecig.id AND ecq.crf_version_id = ecig.crf_version_id
         JOIN eclinical_crf_form ecf ON ecig.form_id = ecf.id AND ecig.crf_version_id = ecf.crf_version_id
         JOIN eclinical_odm_studyevent eos ON ecf.study_event_id = eos.id AND ecf.crf_version_id = eos.crf_version_id
WHERE 1 = 1
  AND r.current_val IS NOT NULL
  AND es.name = "02001"
ORDER BY es.name,
         json_unquote(json_extract(eos.locale, concat('$.name.', "en_US"))),
         sv.sn,
         json_unquote(json_extract(ecf.locale, concat('$.name.', "en_US"))),
         ig.sn;