DROP TABLE if exists national_rates;

CREATE TABLE national_rates as (
SELECT "YEAR"
, SUM(NULLIF("SCH_ENR_WH_M", 0)) as ntl_WH_M_enr
, SUM(NULLIF("SCH_ENR_WH_F", 0)) as ntl_WH_F_enr
, SUM(NULLIF("SCH_ENR_WH_F", 0) + NULLIF("SCH_ENR_WH_M", 0) as ntl_WH_enr
, SUM("SCH_DISCWODIS_MULTOOS_WH_M" + "SCH_DISCWODIS_SINGOOS_WH_M") / SUM(NULLIF("SCH_ENR_WH_M", 0)) as ntl_WH_M_WODIS_suspension_rate
, SUM("SCH_DISCWODIS_MULTOOS_WH_F" + "SCH_DISCWODIS_SINGOOS_WH_F") / SUM(NULLIF("SCH_ENR_WH_F", 0)) as ntl_WH_F_WODIS_suspension_rate
, SUM("SCH_DISCWODIS_SINGOOS_WH_M" + "SCH_DISCWODIS_SINGOOS_WH_F" + "SCH_DISCWODIS_MULTOOS_WH_F" + "SCH_DISCWODIS_MULTOOS_WH_M") / SUM(NULLIF("SCH_ENR_WH_F", 0) + NULLIF("SCH_ENR_WH_M", 0)) as ntl_WH_both_genders_WODIS_suspension_rate
, SUM(NULLIF("SCH_IDEAENR_WH_M", 0)) as ntl_WDIS_WH_M_enr
, SUM("SCH_DISCWDIS_MULTOOS_IDEA_WH_M" + "SCH_DISCWDIS_SINGOOS_IDEA_WH_M") / SUM(NULLIF("SCH_IDEAENR_WH_M", 0)) as ntl_WH_M_WDIS_suspension_rate
, SUM(NULLIF("SCH_IDEAENR_WH_F", 0)) as ntl_WDIS_WH_F_enr
, SUM("SCH_DISCWDIS_MULTOOS_IDEA_WH_F" + "SCH_DISCWDIS_SINGOOS_IDEA_WH_F") / SUM(NULLIF("SCH_IDEAENR_WH_F", 0)) as ntl_WH_F_WDIS_suspension_rate
, SUM(NULLIF("SCH_IDEAENR_WH_M", 0)) + SUM(NULLIF("SCH_IDEAENR_WH_F", 0)) as ntl_WDIS_WH_enr
, SUM("SCH_DISCWDIS_SINGOOS_IDEA_WH_M" + "SCH_DISCWDIS_SINGOOS_IDEA_WH_F" + "SCH_DISCWDIS_MULTOOS_IDEA_WH_F" + "SCH_DISCWDIS_MULTOOS_IDEA_WH_M") / SUM(NULLIF("SCH_IDEAENR_WH_F", 0) + NULLIF("SCH_IDEAENR_WH_M", 0)) as ntl_WH_both_genders_WDIS_suspension_rate
, SUM("SCH_DISCWODIS_REF_WH_M") / SUM(NULLIF("SCH_ENR_WH_M", 0)) as ntl_WH_M_WODIS_REF_rate
, SUM("SCH_DISCWODIS_REF_WH_F") / SUM(NULLIF("SCH_ENR_WH_F", 0)) as ntl_WH_F_WODIS_REF_rate
, SUM("SCH_DISCWODIS_REF_WH_F" + "SCH_DISCWODIS_REF_WH_M") / SUM((NULLIF("SCH_ENR_WH_F", 0) + NULLIF("SCH_ENR_WH_M", 0))) as ntl_WH_both_genders_WODIS_REF_rate
, SUM("SCH_DISCWDIS_REF_IDEA_WH_M") / SUM(NULLIF("SCH_IDEAENR_WH_M", 0)) as ntl_WH_M_WDIS_REF_IDEA_rate
, SUM("SCH_DISCWDIS_REF_IDEA_WH_F") / SUM(NULLIF("SCH_IDEAENR_WH_F", 0)) as ntl_WH_F_WDIS_REF_IDEA_rate
, SUM("SCH_DISCWDIS_REF_IDEA_WH_F" + "SCH_DISCWDIS_REF_IDEA_WH_M") / SUM((NULLIF("SCH_IDEAENR_WH_F", 0) + NULLIF("SCH_IDEAENR_WH_M", 0))) as ntl_WH_both_genders_WDIS_REF_IDEA_rate
, SUM("SCH_DISCWODIS_ARR_WH_M") / SUM(NULLIF("SCH_IDEAENR_WH_M", 0)) as ntl_WH_M_WODIS_ARR_rate
, SUM("SCH_DISCWODIS_ARR_WH_F") / SUM(NULLIF("SCH_IDEAENR_WH_F", 0)) as ntl_WH_F_WODIS_ARR_rate
, SUM("SCH_DISCWODIS_ARR_WH_F" + "SCH_DISCWODIS_ARR_WH_M") / SUM((NULLIF("SCH_IDEAENR_WH_F", 0) + NULLIF("SCH_IDEAENR_WH_M", 0))) as ntl_WH_both_genders_WODIS_ARR_rate
, SUM("SCH_DISCWDIS_ARR_IDEA_WH_M") / SUM(NULLIF("SCH_IDEAENR_WH_M", 0)) as ntl_WH_M_WDIS_ARR_IDEA_rate
, SUM("SCH_DISCWDIS_ARR_IDEA_WH_F") / SUM(NULLIF("SCH_IDEAENR_WH_F", 0)) as ntl_WH_F_WDIS_ARR_IDEA_rate
, SUM("SCH_DISCWDIS_ARR_IDEA_WH_F" + "SCH_DISCWDIS_ARR_IDEA_WH_M") / SUM((NULLIF("SCH_IDEAENR_WH_F", 0) + NULLIF("SCH_IDEAENR_WH_M", 0))) as ntl_WH_both_genders_WDIS_ARR_IDEA_rate
, SUM("SCH_GTENR_WH_M") / SUM(NULLIF("SCH_ENR_WH_M", 0)) as ntl_WH_M_GTENR_rate
, SUM("SCH_GTENR_WH_F") / SUM(NULLIF("SCH_ENR_WH_F", 0)) as ntl_WH_F_GTENR_rate
, SUM("SCH_GTENR_WH_F" + "SCH_GTENR_WH_M") / SUM(NULLIF("SCH_ENR_WH_F", 0) + NULLIF("SCH_ENR_WH_M", 0)) as ntl_WH_both_genders_GTENR_rate
, SUM("SCH_APENR_WH_M") / SUM(NULLIF("SCH_ENR_WH_M", 0)) as ntl_WH_M_APENR_rate
, SUM("SCH_APENR_WH_F") / SUM(NULLIF("SCH_ENR_WH_F", 0)) as ntl_WH_F_APENR_rate
, SUM("SCH_APENR_WH_F" + "SCH_APENR_WH_M") / SUM(NULLIF("SCH_ENR_WH_F", 0) + NULLIF("SCH_ENR_WH_M", 0)) as ntl_WH_both_genders_APENR_rate

-- National rates for all races
, SUM(NULLIF("TOT_ENR_M", 0)) ntl_all_races_M_enr
, SUM("TOT_DISCWODIS_MULTOOS_M" + "TOT_DISCWODIS_SINGOOS_M") / SUM(NULLIF("TOT_ENR_M", 0)) as ntl_all_races_M_WODIS_suspension_rate
, SUM(NULLIF("TOT_ENR_F", 0)) ntl_all_races_F_enr
, SUM("TOT_DISCWODIS_MULTOOS_F" + "TOT_DISCWODIS_SINGOOS_F") / SUM(NULLIF("TOT_ENR_F", 0)) as ntl_all_races_F_WODIS_suspension_rate
, SUM(NULLIF("TOT_ENR_F", 0)) + SUM(NULLIF("TOT_ENR_M", 0)) ntl_all_races_enr
, SUM("TOT_DISCWODIS_MULTOOS_F" +"TOT_DISCWODIS_SINGOOS_F" + "TOT_DISCWODIS_MULTOOS_M" + "TOT_DISCWODIS_SINGOOS_F") / SUM((NULLIF("TOT_ENR_F", 0) + NULLIF("TOT_ENR_M", 0))) as ntl_all_races_both_genders_WODIS_suspension_rate
, SUM(NULLIF("TOT_IDEAENR_M", 0)) ntl_all_races_WDIS_M_enr
, SUM("TOT_DISCWDIS_MULTOOS_IDEA_M" + "TOT_DISCWDIS_SINGOOS_IDEA_M") / SUM(NULLIF("TOT_IDEAENR_M", 0)) as ntl_all_races_M_WDIS_suspension_rate
, SUM(NULLIF("TOT_IDEAENR_F", 0)) ntl_all_races_WDIS_F_enr
, SUM("TOT_DISCWDIS_MULTOOS_IDEA_F" + "TOT_DISCWDIS_SINGOOS_IDEA_F") / SUM(NULLIF("TOT_IDEAENR_F", 0)) as ntl_all_races_F_WDIS_suspension_rate
, SUM(NULLIF("TOT_IDEAENR_M", 0)) + SUM(NULLIF("TOT_IDEAENR_F", 0)) ntl_all_races_WDIS_enr
, SUM("TOT_DISCWDIS_MULTOOS_IDEA_F" +"TOT_DISCWDIS_SINGOOS_IDEA_F" + "TOT_DISCWDIS_MULTOOS_IDEA_M" + "TOT_DISCWDIS_SINGOOS_IDEA_F") / SUM((NULLIF("TOT_IDEAENR_F", 0) + NULLIF("TOT_IDEAENR_M", 0))) as ntl_all_races_both_genders_WDIS_suspension_rate
, SUM("TOT_DISCWODIS_REF_M") / SUM(NULLIF("TOT_ENR_M", 0)) as ntl_all_races_M_WODIS_REF_rate
, SUM("TOT_DISCWODIS_REF_F") / SUM(NULLIF("TOT_ENR_F", 0)) as ntl_all_races_F_WODIS_REF_rate
, SUM("TOT_DISCWODIS_REF_F" + "TOT_DISCWODIS_REF_M") / SUM((NULLIF("TOT_ENR_F", 0) + NULLIF("TOT_ENR_M", 0))) as ntl_all_races_both_genders_WODIS_REF_rate
, SUM("TOT_DISCWDIS_REF_IDEA_M") / SUM(NULLIF("TOT_IDEAENR_M", 0)) as ntl_all_races_M_WDIS_REF_IDEA_rate
, SUM("TOT_DISCWDIS_REF_IDEA_F") / SUM(NULLIF("TOT_IDEAENR_F", 0)) as ntl_all_races_F_WDIS_REF_IDEA_rate
, SUM("TOT_DISCWDIS_REF_IDEA_F" + "TOT_DISCWDIS_REF_IDEA_M") / SUM((NULLIF("TOT_IDEAENR_F", 0) + NULLIF("TOT_IDEAENR_M", 0))) as ntl_all_races_both_genders_WDIS_REF_IDEA_rate
, SUM("TOT_DISCWODIS_ARR_M") / SUM(NULLIF("TOT_ENR_M", 0)) as ntl_all_races_M_WODIS_ARR_rate
, SUM("TOT_DISCWODIS_ARR_F") / SUM(NULLIF("TOT_ENR_F", 0)) as ntl_all_races_F_WODIS_ARR_rate
, SUM("TOT_DISCWODIS_ARR_F" + "TOT_DISCWODIS_ARR_M") / SUM((NULLIF("TOT_ENR_F", 0) + NULLIF("TOT_ENR_M", 0))) as ntl_all_races_both_genders_WODIS_ARR_rate
, SUM("TOT_DISCWDIS_ARR_IDEA_M") / SUM(NULLIF("TOT_IDEAENR_M", 0)) as ntl_all_races_M_WDIS_ARR_IDEA_rate
, SUM("TOT_DISCWDIS_ARR_IDEA_F") / SUM(NULLIF("TOT_IDEAENR_F", 0)) as ntl_all_races_F_WDIS_ARR_IDEA_rate
, SUM("TOT_DISCWDIS_ARR_IDEA_F" + "TOT_DISCWDIS_ARR_IDEA_M") / SUM((NULLIF("TOT_IDEAENR_F", 0) + NULLIF("TOT_IDEAENR_M", 0))) as ntl_all_races_both_genders_WDIS_ARR_IDEA_rate
, SUM("TOT_GTENR_M") / SUM(NULLIF("TOT_ENR_M", 0)) as ntl_all_races_M_GTENR_rate
, SUM("TOT_GTENR_F") / SUM(NULLIF("TOT_ENR_F", 0)) as ntl_all_races_F_GTENR_rate
, SUM("TOT_GTENR_F" + "TOT_GTENR_M") / SUM(NULLIF("TOT_ENR_F", 0) + NULLIF("TOT_ENR_M", 0)) as ntl_all_races_both_genders_GTENR_rate
, SUM("TOT_APENR_M") / SUM(NULLIF("TOT_ENR_M", 0)) as ntl_all_races_M_APENR_rate
, SUM("TOT_APENR_F") / SUM(NULLIF("TOT_ENR_F", 0)) as ntl_all_races_F_APENR_rate
, SUM("TOT_APENR_F" + "TOT_APENR_M") / SUM(NULLIF("TOT_ENR_F", 0) + NULLIF("TOT_ENR_M", 0)) as ntl_all_races_both_genders_APENR_rate
from districts
group by 1
);