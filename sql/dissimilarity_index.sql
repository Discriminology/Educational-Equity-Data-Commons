-- Number of 15/16 districts with enrollment of at least 1000 and more than 5 schools
-- and at least 100 students in 3 or more racial categories

select count(distinct "LEAID")
FROM districts
WHERE
"YEAR" = '2015-16'
AND "TOTAL_ENROLLMENT" > 1000
AND "TOTAL_SCHOOLS" > 5
AND (CASE WHEN (
				("SCH_ENR_HI_F" + "SCH_ENR_HI_M") > 100
					)
	THEN 1 ELSE 0 end
		) +
	(CASE WHEN (
			("SCH_ENR_BL_F" + "SCH_ENR_BL_M") > 100
				)
	THEN 1 ELSE 0 end
	+
	(CASE WHEN (
			("SCH_ENR_WH_F" + "SCH_ENR_WH_M") > 100
				)
	THEN 1 ELSE 0 end)
	+
	(CASE WHEN (
			("SCH_ENR_AS_F" + "SCH_ENR_AS_M") > 100
				)
	THEN 1 ELSE 0 end)
	+
	(CASE WHEN (
			("SCH_ENR_AM_F" + "SCH_ENR_AM_M") > 100
				)
	THEN 1 ELSE 0 end)
	+
	(CASE WHEN (
			("SCH_ENR_TR_F" + "SCH_ENR_TR_M") > 100
				)
	THEN 1 ELSE 0 end)
+
	(CASE WHEN (
			("SCH_ENR_HP_F" + "SCH_ENR_HP_M") > 100
				)
	THEN 1 ELSE 0 end)

		) >= 3
	;