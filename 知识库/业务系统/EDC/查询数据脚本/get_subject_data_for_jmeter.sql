SELECT
	es.name subject_name,
	es.id subject_id,
	esv.visit_name visit_name,
	esv.id subject_visit_id,
	esf.form_name form_name,
	esf.id subject_form_id,
	esig.id subject_ig_id
FROM
  eclinical_subject_ig esig
	JOIN eclinical_subject_form esf ON esig.subject_form_id=esf.id AND esig.subject_version_id=esf.subject_version_id
	JOIN eclinical_subject_visit esv ON esf.subject_visit_id=esv.id AND esf.subject_version_id=esv.subject_version_id
	JOIN eclinical_subject_crfversion esr ON esig.subject_version_id=esr.id
	JOIN eclinical_subject es ON esr.subject_id=es.id
WHERE
	esr.is_lastest=TRUE and esf.disabled=FALSE and esv.disabled=FALSE;