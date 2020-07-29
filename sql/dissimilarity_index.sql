select
"LEAID"
, "YEAR"
, 0.5*SUM(abs(wh_frac - bl_frac)) as D_wh_bl
, 0.5*SUM(abs(wh_frac - as_frac)) as D_wh_as
, 0.5*SUM(abs(wh_frac - am_frac)) as D_wh_am
, 0.5*SUM(abs(wh_frac - tr_frac)) as D_wh_tr
, 0.5*SUM(abs(wh_frac - hp_frac)) as D_wh_hp
, 0.5*SUM(abs(wh_frac - hi_frac)) as D_wh_hi
FROM
(
select
schools."LEAID"
,schools."YEAR"
,schools."SCH_ENR_AM_F" + schools."SCH_ENR_AM_M" as am_sch_enr
,schools."SCH_ENR_AS_M" + schools."SCH_ENR_AS_F" as as_sch_enr
,schools."SCH_ENR_BL_M" + schools."SCH_ENR_BL_F" as bl_sch_enr
,schools."SCH_ENR_WH_M" + schools."SCH_ENR_WH_F" as wh_sch_enr
,schools."SCH_ENR_HI_M" + schools."SCH_ENR_HI_F" as hi_sch_enr
,schools."SCH_ENR_HP_M" + schools."SCH_ENR_HP_F" as hp_sch_enr
,schools."SCH_ENR_TR_M" + schools."SCH_ENR_TR_F" as tr_sch_enr

,districts."SCH_ENR_AM_F" + districts."SCH_ENR_AM_M" as am_dist_enr
,districts."SCH_ENR_AS_M" + districts."SCH_ENR_AS_F" as as_dist_enr
,districts."SCH_ENR_BL_M" + districts."SCH_ENR_BL_F" as bl_dist_enr
,districts."SCH_ENR_WH_M" + districts."SCH_ENR_WH_F" as wh_dist_enr
,districts."SCH_ENR_HI_M" + districts."SCH_ENR_HI_F" as hi_dist_enr
,districts."SCH_ENR_HP_M" + districts."SCH_ENR_HP_F" as hp_dist_enr
,districts."SCH_ENR_TR_M" + districts."SCH_ENR_TR_F" as tr_dist_enr
, (schools."SCH_ENR_WH_M" + schools."SCH_ENR_WH_F") / NULLIF(districts."SCH_ENR_WH_M" + districts."SCH_ENR_WH_F", 0) as wh_frac
, (schools."SCH_ENR_BL_M" + schools."SCH_ENR_BL_F") / NULLIF(districts."SCH_ENR_BL_M" + districts."SCH_ENR_BL_F", 0) as bl_frac
, (schools."SCH_ENR_AS_M" + schools."SCH_ENR_AS_F") / NULLIF(districts."SCH_ENR_AS_M" + districts."SCH_ENR_AS_F", 0) as as_frac
, (schools."SCH_ENR_AM_M" + schools."SCH_ENR_AM_F") / NULLIF(districts."SCH_ENR_AM_M" + districts."SCH_ENR_AM_F", 0) as am_frac
, (schools."SCH_ENR_HI_M" + schools."SCH_ENR_HI_F") / NULLIF(districts."SCH_ENR_HI_M" + districts."SCH_ENR_HI_F", 0) as hi_frac
, (schools."SCH_ENR_HP_M" + schools."SCH_ENR_HP_F") / NULLIF(districts."SCH_ENR_HP_M" + districts."SCH_ENR_HP_F", 0) as hp_frac
, (schools."SCH_ENR_TR_M" + schools."SCH_ENR_TR_F") / NULLIF(districts."SCH_ENR_TR_M" + districts."SCH_ENR_TR_F", 0) as tr_frac
from schools
inner join districts on
districts."LEAID" = schools."LEAID"
and districts."YEAR" = schools."YEAR"
inner join 
(select "LEAID"
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

		) > 2
) district_subset
on district_subset."LEAID" = schools."LEAID"
) dissim_derived
group by 1, 2;