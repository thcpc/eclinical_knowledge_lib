SELECT
	ecd.name domain,
	ecv.name variable,
	ecv.order_number
FROM
	eclinical_crf_dataset ecd
JOIN 
	eclinical_crf_variable ecv ON ecd.id=ecv.dataset_id AND ecv.is_delete=0
JOIN
	(SELECT ecvi.variable_id FROM eclinical_crf_variable_item ecvi
	WHERE ecvi.is_delete=0 and (ecvi.crf_version_id IN (33))
	GROUP BY ecvi.variable_id) vari on ecv.id=vari.variable_id
ORDER BY ecd.id, ecv.order_number;