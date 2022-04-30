DROP TABLE if exists dissimilarity_index;

CREATE TABLE dissimilarity_index as (

SELECT "LEAID",
       "YEAR",
       0.5*SUM(abs(wh_frac - bl_frac)) AS D_wh_bl,
       0.5*SUM(abs(wh_frac - as_frac)) AS D_wh_as,
       0.5*SUM(abs(wh_frac - am_frac)) AS D_wh_am,
       0.5*SUM(abs(wh_frac - tr_frac)) AS D_wh_tr,
       0.5*SUM(abs(wh_frac - hp_frac)) AS D_wh_hp,
       0.5*SUM(abs(wh_frac - hi_frac)) AS D_wh_hi
FROM
  (SELECT schools."LEAID",
          schools."YEAR",
          schools."SCH_ENR_AM_F" + schools."SCH_ENR_AM_M" AS am_sch_enr,
          schools."SCH_ENR_AS_M" + schools."SCH_ENR_AS_F" AS as_sch_enr,
          schools."SCH_ENR_BL_M" + schools."SCH_ENR_BL_F" AS bl_sch_enr,
          schools."SCH_ENR_WH_M" + schools."SCH_ENR_WH_F" AS wh_sch_enr,
          schools."SCH_ENR_HI_M" + schools."SCH_ENR_HI_F" AS hi_sch_enr,
          schools."SCH_ENR_HP_M" + schools."SCH_ENR_HP_F" AS hp_sch_enr,
          schools."SCH_ENR_TR_M" + schools."SCH_ENR_TR_F" AS tr_sch_enr,
          districts."SCH_ENR_AM_F" + districts."SCH_ENR_AM_M" AS am_dist_enr,
          districts."SCH_ENR_AS_M" + districts."SCH_ENR_AS_F" AS as_dist_enr,
          districts."SCH_ENR_BL_M" + districts."SCH_ENR_BL_F" AS bl_dist_enr,
          districts."SCH_ENR_WH_M" + districts."SCH_ENR_WH_F" AS wh_dist_enr,
          districts."SCH_ENR_HI_M" + districts."SCH_ENR_HI_F" AS hi_dist_enr,
          districts."SCH_ENR_HP_M" + districts."SCH_ENR_HP_F" AS hp_dist_enr,
          districts."SCH_ENR_TR_M" + districts."SCH_ENR_TR_F" AS tr_dist_enr,
          (schools."SCH_ENR_WH_M" + schools."SCH_ENR_WH_F") / NULLIF(districts."SCH_ENR_WH_M" + districts."SCH_ENR_WH_F", 0) AS wh_frac,
          (schools."SCH_ENR_BL_M" + schools."SCH_ENR_BL_F") / NULLIF(districts."SCH_ENR_BL_M" + districts."SCH_ENR_BL_F", 0) AS bl_frac,
          (schools."SCH_ENR_AS_M" + schools."SCH_ENR_AS_F") / NULLIF(districts."SCH_ENR_AS_M" + districts."SCH_ENR_AS_F", 0) AS as_frac,
          (schools."SCH_ENR_AM_M" + schools."SCH_ENR_AM_F") / NULLIF(districts."SCH_ENR_AM_M" + districts."SCH_ENR_AM_F", 0) AS am_frac,
          (schools."SCH_ENR_HI_M" + schools."SCH_ENR_HI_F") / NULLIF(districts."SCH_ENR_HI_M" + districts."SCH_ENR_HI_F", 0) AS hi_frac,
          (schools."SCH_ENR_HP_M" + schools."SCH_ENR_HP_F") / NULLIF(districts."SCH_ENR_HP_M" + districts."SCH_ENR_HP_F", 0) AS hp_frac,
          (schools."SCH_ENR_TR_M" + schools."SCH_ENR_TR_F") / NULLIF(districts."SCH_ENR_TR_M" + districts."SCH_ENR_TR_F", 0) AS tr_frac
   FROM schools
   INNER JOIN districts ON districts."LEAID" = schools."LEAID"
   AND districts."YEAR" = schools."YEAR"
   INNER JOIN
     (SELECT "LEAID"
      FROM districts
      WHERE "YEAR" = '2017-18'
        AND "TOTAL_ENROLLMENT" > 1000
        AND "TOTAL_SCHOOLS" > 5
        AND (CASE
                 WHEN (("SCH_ENR_HI_F" + "SCH_ENR_HI_M") > 100) THEN 1
                 ELSE 0
             END) + (CASE
                         WHEN (("SCH_ENR_BL_F" + "SCH_ENR_BL_M") > 100) THEN 1
                         ELSE 0
                     END + (CASE
                                WHEN (("SCH_ENR_WH_F" + "SCH_ENR_WH_M") > 100) THEN 1
                                ELSE 0
                            END) + (CASE
                                        WHEN (("SCH_ENR_AS_F" + "SCH_ENR_AS_M") > 100) THEN 1
                                        ELSE 0
                                    END) + (CASE
                                                WHEN (("SCH_ENR_AM_F" + "SCH_ENR_AM_M") > 100) THEN 1
                                                ELSE 0
                                            END) + (CASE
                                                        WHEN (("SCH_ENR_TR_F" + "SCH_ENR_TR_M") > 100) THEN 1
                                                        ELSE 0
                                                    END) + (CASE
                                                                WHEN (("SCH_ENR_HP_F" + "SCH_ENR_HP_M") > 100) THEN 1
                                                                ELSE 0
                                                            END)) > 2 ) district_subset
     ON district_subset."LEAID" = schools."LEAID") dissim_derived  -- filters to districts that meet the criteria above
GROUP BY 1,
         2 -- Sum across schools in each district to get dissimiliarity score
         );