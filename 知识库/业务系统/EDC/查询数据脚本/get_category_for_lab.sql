SELECT
	json_unquote(json_extract(s.locale, concat( '$.name.', "zh_CN"))) visit,
	json_unquote(json_extract(f.locale, concat( '$.name.', "zh_CN"))) form,
	f.category,
	f.sub_category FROM eclinical_crf_form f
JOIN eclinical_odm_studyevent s ON f.study_event_id=s.id AND f.crf_version_id=s.crf_version_id
WHERE (f.category is not NULL or f.sub_category is NOT NULL) AND f.crf_version_id=41
ORDER BY
	json_unquote(json_extract(s.locale, concat( '$.name.', "zh_CN"))),
	json_unquote(json_extract(f.locale, concat( '$.name.', "zh_CN"))),
	f.category,
	f.sub_category