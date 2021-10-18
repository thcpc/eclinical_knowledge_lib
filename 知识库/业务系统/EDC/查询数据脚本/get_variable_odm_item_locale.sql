SELECT
	ecv.locale,
	eoi.locale
FROM
	eclinical_crf_variable_item ecvi
	JOIN eclinical_crf_variable ecv ON ecvi.variable_id = ecv.id
	JOIN eclinical_crf_item eci ON ecvi.item_id = eci.id AND ecvi.crf_version_id = eci.crf_version_id
	JOIN eclinical_odm_item eoi ON eci.ref_id = eoi.id AND eci.crf_version_id = eoi.crf_version_id
WHERE
	eci.crf_version_id = 7
	AND ecvi.is_delete = FALSE
	AND ecv.is_delete = FALSE
	AND eci.is_delete = FALSE
	AND eoi.is_delete = FALSE;