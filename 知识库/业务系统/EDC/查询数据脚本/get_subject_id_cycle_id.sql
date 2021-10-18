SELECT
	a.subject_id,
	c.id
FROM
	eclinical_subject_arm a
	JOIN eclinical_crf_cycle c ON a.arm_id = c.arm_id
ORDER BY
	a.subject_id;