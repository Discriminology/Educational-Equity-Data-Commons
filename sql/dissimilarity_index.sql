-- Number of 15/16 districts with enrollment of at least 1000 and more than 5 schools
-- and at lesat 100 students in 3 or more racial categories

select count(distinct "LEAID")
FROM districts
WHERE
"YEAR" = '2015-16'
AND "TOTAL_ENROLLMENT" >= 1000
AND "TOTAL_SCHOOLS" >= 5
AND (("SCH_ENR_HI_F" + "SCH_ENR_HI_M") > 100)
AND (("SCH_ENR_WH_F" + "SCH_ENR_WH_M") > 100)
AND (("SCH_ENR_BL_F" + "SCH_ENR_BL_M") > 100)
;