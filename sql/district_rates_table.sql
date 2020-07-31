DROP TABLE if exists district_rates;

CREATE TABLE district_rates as (

SELECT "LEAID"
, "YEAR"
, "LEA_STATE_NAME"

-- Suspensions (single and multiple)
, ("SCH_DISCWODIS_MULTOOS_BL_M" + "SCH_DISCWODIS_SINGOOS_BL_M") / NULLIF("SCH_ENR_BL_M", 0) as BL_M_WODIS_suspension_rate
, ("SCH_DISCWODIS_MULTOOS_BL_F" + "SCH_DISCWODIS_SINGOOS_BL_F") / NULLIF("SCH_ENR_BL_F", 0) as BL_F_WODIS_suspension_rate
, ("SCH_DISCWODIS_SINGOOS_BL_M" + "SCH_DISCWODIS_SINGOOS_BL_F" + "SCH_DISCWODIS_MULTOOS_BL_F" + "SCH_DISCWODIS_MULTOOS_BL_M") / (NULLIF("SCH_ENR_BL_F", 0) + NULLIF("SCH_ENR_BL_M", 0)) as BL_both_genders_WODIS_suspension_rate
, ("SCH_DISCWODIS_MULTOOS_WH_M" + "SCH_DISCWODIS_SINGOOS_WH_M") / NULLIF("SCH_ENR_WH_M", 0) as WH_M_WODIS_suspension_rate
, ("SCH_DISCWODIS_MULTOOS_WH_F" + "SCH_DISCWODIS_SINGOOS_WH_F") / NULLIF("SCH_ENR_WH_F", 0) as WH_F_WODIS_suspension_rate
, ("SCH_DISCWODIS_SINGOOS_WH_M" + "SCH_DISCWODIS_SINGOOS_WH_F" + "SCH_DISCWODIS_MULTOOS_WH_F" + "SCH_DISCWODIS_MULTOOS_WH_M") / (NULLIF("SCH_ENR_WH_F", 0) + NULLIF("SCH_ENR_WH_M", 0)) as WH_both_genders_WODIS_suspension_rate
, ("SCH_DISCWODIS_MULTOOS_AM_M" + "SCH_DISCWODIS_SINGOOS_AM_M") / NULLIF("SCH_ENR_AM_M", 0) as AM_M_WODIS_suspension_rate
, ("SCH_DISCWODIS_MULTOOS_AM_F" + "SCH_DISCWODIS_SINGOOS_AM_F") / NULLIF("SCH_ENR_AM_F", 0) as AM_F_WODIS_suspension_rate
, ("SCH_DISCWODIS_SINGOOS_AM_M" + "SCH_DISCWODIS_SINGOOS_AM_F" + "SCH_DISCWODIS_MULTOOS_AM_F" + "SCH_DISCWODIS_MULTOOS_AM_M") / (NULLIF("SCH_ENR_AM_F", 0) + NULLIF("SCH_ENR_AM_M", 0)) as AM_both_genders_WODIS_suspension_rate
, ("SCH_DISCWODIS_MULTOOS_AS_M" + "SCH_DISCWODIS_SINGOOS_AS_M") / NULLIF("SCH_ENR_AS_M", 0) as AS_M_WODIS_suspension_rate
, ("SCH_DISCWODIS_MULTOOS_AS_F" + "SCH_DISCWODIS_SINGOOS_AS_F") / NULLIF("SCH_ENR_AS_F", 0) as AS_F_WODIS_suspension_rate
, ("SCH_DISCWODIS_SINGOOS_AS_M" + "SCH_DISCWODIS_SINGOOS_AS_F" + "SCH_DISCWODIS_MULTOOS_AS_F" + "SCH_DISCWODIS_MULTOOS_AS_M") / (NULLIF("SCH_ENR_AS_F", 0) + NULLIF("SCH_ENR_AS_M", 0)) as AS_both_genders_WODIS_suspension_rate
, ("SCH_DISCWODIS_MULTOOS_HI_M" + "SCH_DISCWODIS_SINGOOS_HI_M") / NULLIF("SCH_ENR_HI_M", 0) as HI_M_WODIS_suspension_rate
, ("SCH_DISCWODIS_MULTOOS_HI_F" + "SCH_DISCWODIS_SINGOOS_HI_F") / NULLIF("SCH_ENR_HI_F", 0) as HI_F_WODIS_suspension_rate
, ("SCH_DISCWODIS_SINGOOS_HI_M" + "SCH_DISCWODIS_SINGOOS_HI_F" + "SCH_DISCWODIS_MULTOOS_HI_F" + "SCH_DISCWODIS_MULTOOS_HI_M") / (NULLIF("SCH_ENR_HI_F", 0) + NULLIF("SCH_ENR_HI_M", 0)) as HI_both_genders_WODIS_suspension_rate
, ("SCH_DISCWODIS_MULTOOS_HP_M" + "SCH_DISCWODIS_SINGOOS_HP_M") / NULLIF("SCH_ENR_HP_M", 0) as HP_M_WODIS_suspension_rate
, ("SCH_DISCWODIS_MULTOOS_HP_F" + "SCH_DISCWODIS_SINGOOS_HP_F") / NULLIF("SCH_ENR_HP_F", 0) as HP_F_WODIS_suspension_rate
, ("SCH_DISCWODIS_SINGOOS_HP_M" + "SCH_DISCWODIS_SINGOOS_HP_F" + "SCH_DISCWODIS_MULTOOS_HP_F" + "SCH_DISCWODIS_MULTOOS_HP_M") / (NULLIF("SCH_ENR_HP_F", 0) + NULLIF("SCH_ENR_HP_M", 0)) as HP_both_genders_WODIS_suspension_rate
, ("SCH_DISCWODIS_MULTOOS_TR_M" + "SCH_DISCWODIS_SINGOOS_TR_M") / NULLIF("SCH_ENR_TR_M", 0) as TR_M_WODIS_suspension_rate
, ("SCH_DISCWODIS_MULTOOS_TR_F" + "SCH_DISCWODIS_SINGOOS_TR_F") / NULLIF("SCH_ENR_TR_F", 0) as TR_F_WODIS_suspension_rate
, ("SCH_DISCWODIS_SINGOOS_TR_M" + "SCH_DISCWODIS_SINGOOS_TR_F" + "SCH_DISCWODIS_MULTOOS_TR_F" + "SCH_DISCWODIS_MULTOOS_TR_M") / (NULLIF("SCH_ENR_TR_F", 0) + NULLIF("SCH_ENR_TR_M", 0)) as TR_both_genders_WODIS_suspension_rate
, ("SCH_DISCWDIS_MULTOOS_IDEA_BL_M" + "SCH_DISCWDIS_SINGOOS_IDEA_BL_M") / NULLIF("SCH_IDEAENR_BL_M", 0) as BL_M_WDIS_suspension_rate
, ("SCH_DISCWDIS_MULTOOS_IDEA_BL_F" + "SCH_DISCWDIS_SINGOOS_IDEA_BL_F") / NULLIF("SCH_IDEAENR_BL_F", 0) as BL_F_WDIS_suspension_rate
, ("SCH_DISCWDIS_SINGOOS_IDEA_BL_M" + "SCH_DISCWDIS_SINGOOS_IDEA_BL_F" + "SCH_DISCWDIS_MULTOOS_IDEA_BL_F" + "SCH_DISCWDIS_MULTOOS_IDEA_BL_M") / (NULLIF("SCH_IDEAENR_BL_F", 0) + NULLIF("SCH_IDEAENR_BL_M", 0)) as BL_both_genders_WDIS_suspension_rate
, ("SCH_DISCWDIS_MULTOOS_IDEA_WH_M" + "SCH_DISCWDIS_SINGOOS_IDEA_WH_M") / NULLIF("SCH_IDEAENR_WH_M", 0) as WH_M_WDIS_suspension_rate
, ("SCH_DISCWDIS_MULTOOS_IDEA_WH_F" + "SCH_DISCWDIS_SINGOOS_IDEA_WH_F") / NULLIF("SCH_IDEAENR_WH_F", 0) as WH_F_WDIS_suspension_rate
, ("SCH_DISCWDIS_SINGOOS_IDEA_WH_M" + "SCH_DISCWDIS_SINGOOS_IDEA_WH_F" + "SCH_DISCWDIS_MULTOOS_IDEA_WH_F" + "SCH_DISCWDIS_MULTOOS_IDEA_WH_M") / (NULLIF("SCH_IDEAENR_WH_F", 0) + NULLIF("SCH_IDEAENR_WH_M", 0)) as WH_both_genders_WDIS_suspension_rate
, ("SCH_DISCWDIS_MULTOOS_IDEA_AM_M" + "SCH_DISCWDIS_SINGOOS_IDEA_AM_M") / NULLIF("SCH_IDEAENR_AM_M", 0) as AM_M_WDIS_suspension_rate
, ("SCH_DISCWDIS_MULTOOS_IDEA_AM_F" + "SCH_DISCWDIS_SINGOOS_IDEA_AM_F") / NULLIF("SCH_IDEAENR_AM_F", 0) as AM_F_WDIS_suspension_rate
, ("SCH_DISCWDIS_SINGOOS_IDEA_AM_M" + "SCH_DISCWDIS_SINGOOS_IDEA_AM_F" + "SCH_DISCWDIS_MULTOOS_IDEA_AM_F" + "SCH_DISCWDIS_MULTOOS_IDEA_AM_M") / (NULLIF("SCH_IDEAENR_AM_F", 0) + NULLIF("SCH_IDEAENR_AM_M", 0)) as AM_both_genders_WDIS_suspension_rate
, ("SCH_DISCWDIS_MULTOOS_IDEA_AS_M" + "SCH_DISCWDIS_SINGOOS_IDEA_AS_M") / NULLIF("SCH_IDEAENR_AS_M", 0) as AS_M_WDIS_suspension_rate
, ("SCH_DISCWDIS_MULTOOS_IDEA_AS_F" + "SCH_DISCWDIS_SINGOOS_IDEA_AS_F") / NULLIF("SCH_IDEAENR_AS_F", 0) as AS_F_WDIS_suspension_rate
, ("SCH_DISCWDIS_SINGOOS_IDEA_AS_M" + "SCH_DISCWDIS_SINGOOS_IDEA_AS_F" + "SCH_DISCWDIS_MULTOOS_IDEA_AS_F" + "SCH_DISCWDIS_MULTOOS_IDEA_AS_M") / (NULLIF("SCH_IDEAENR_AS_F", 0) + NULLIF("SCH_IDEAENR_AS_M", 0)) as AS_both_genders_WDIS_suspension_rate
, ("SCH_DISCWDIS_MULTOOS_IDEA_HI_M" + "SCH_DISCWDIS_SINGOOS_IDEA_HI_M") / NULLIF("SCH_IDEAENR_HI_M", 0) as HI_M_WDIS_suspension_rate
, ("SCH_DISCWDIS_MULTOOS_IDEA_HI_F" + "SCH_DISCWDIS_SINGOOS_IDEA_HI_F") / NULLIF("SCH_IDEAENR_HI_F", 0) as HI_F_WDIS_suspension_rate
, ("SCH_DISCWDIS_SINGOOS_IDEA_HI_M" + "SCH_DISCWDIS_SINGOOS_IDEA_HI_F" + "SCH_DISCWDIS_MULTOOS_IDEA_HI_F" + "SCH_DISCWDIS_MULTOOS_IDEA_HI_M") / (NULLIF("SCH_IDEAENR_HI_F", 0) + NULLIF("SCH_IDEAENR_HI_M", 0)) as HI_both_genders_WDIS_suspension_rate
, ("SCH_DISCWDIS_MULTOOS_IDEA_HP_M" + "SCH_DISCWDIS_SINGOOS_IDEA_HP_M") / NULLIF("SCH_IDEAENR_HP_M", 0) as HP_M_WDIS_suspension_rate
, ("SCH_DISCWDIS_MULTOOS_IDEA_HP_F" + "SCH_DISCWDIS_SINGOOS_IDEA_HP_F") / NULLIF("SCH_IDEAENR_HP_F", 0) as HP_F_WDIS_suspension_rate
, ("SCH_DISCWDIS_SINGOOS_IDEA_HP_M" + "SCH_DISCWDIS_SINGOOS_IDEA_HP_F" + "SCH_DISCWDIS_MULTOOS_IDEA_HP_F" + "SCH_DISCWDIS_MULTOOS_IDEA_HP_M") / (NULLIF("SCH_IDEAENR_HP_F", 0) + NULLIF("SCH_IDEAENR_HP_M", 0)) as HP_both_genders_WDIS_suspension_rate
, ("SCH_DISCWDIS_MULTOOS_IDEA_TR_M" + "SCH_DISCWDIS_SINGOOS_IDEA_TR_M") / NULLIF("SCH_IDEAENR_TR_M", 0) as TR_M_WDIS_suspension_rate
, ("SCH_DISCWDIS_MULTOOS_IDEA_TR_F" + "SCH_DISCWDIS_SINGOOS_IDEA_TR_F") / NULLIF("SCH_IDEAENR_TR_F", 0) as TR_F_WDIS_suspension_rate
, ("SCH_DISCWDIS_SINGOOS_IDEA_TR_M" + "SCH_DISCWDIS_SINGOOS_IDEA_TR_F" + "SCH_DISCWDIS_MULTOOS_IDEA_TR_F" + "SCH_DISCWDIS_MULTOOS_IDEA_TR_M") / (NULLIF("SCH_IDEAENR_TR_F", 0) + NULLIF("SCH_IDEAENR_TR_M", 0)) as TR_both_genders_WDIS_suspension_rate

-- Referrals to law enforcement
, ("SCH_DISCWODIS_REF_BL_M" / NULLIF("SCH_ENR_BL_M", 0)) as BL_M_WODIS_REF_rate
, ("SCH_DISCWODIS_REF_BL_F" / NULLIF("SCH_ENR_BL_F", 0)) as BL_F_WODIS_REF_rate
, ("SCH_DISCWODIS_REF_BL_F" + "SCH_DISCWODIS_REF_BL_M") / (NULLIF("SCH_ENR_BL_F", 0) + NULLIF("SCH_ENR_BL_M", 0)) as BL_both_genders_WODIS_REF_rate
, ("SCH_DISCWODIS_REF_WH_M" / NULLIF("SCH_ENR_WH_M", 0)) as WH_M_WODIS_REF_rate
, ("SCH_DISCWODIS_REF_WH_F" / NULLIF("SCH_ENR_WH_F", 0)) as WH_F_WODIS_REF_rate
, ("SCH_DISCWODIS_REF_WH_F" + "SCH_DISCWODIS_REF_WH_M") / (NULLIF("SCH_ENR_WH_F", 0) + NULLIF("SCH_ENR_WH_M", 0)) as WH_both_genders_WODIS_REF_rate
, ("SCH_DISCWODIS_REF_AM_M" / NULLIF("SCH_ENR_AM_M", 0)) as AM_M_WODIS_REF_rate
, ("SCH_DISCWODIS_REF_AM_F" / NULLIF("SCH_ENR_AM_F", 0)) as AM_F_WODIS_REF_rate
, ("SCH_DISCWODIS_REF_AM_F" + "SCH_DISCWODIS_REF_AM_M") / (NULLIF("SCH_ENR_AM_F", 0) + NULLIF("SCH_ENR_AM_M", 0)) as AM_both_genders_WODIS_REF_rate
, ("SCH_DISCWODIS_REF_AS_M" / NULLIF("SCH_ENR_AS_M", 0)) as AS_M_WODIS_REF_rate
, ("SCH_DISCWODIS_REF_AS_F" / NULLIF("SCH_ENR_AS_F", 0)) as AS_F_WODIS_REF_rate
, ("SCH_DISCWODIS_REF_AS_F" + "SCH_DISCWODIS_REF_AS_M") / (NULLIF("SCH_ENR_AS_F", 0) + NULLIF("SCH_ENR_AS_M", 0)) as AS_both_genders_WODIS_REF_rate
, ("SCH_DISCWODIS_REF_HI_M" / NULLIF("SCH_ENR_HI_M", 0)) as HI_M_WODIS_REF_rate
, ("SCH_DISCWODIS_REF_HI_F" / NULLIF("SCH_ENR_HI_F", 0)) as HI_F_WODIS_REF_rate
, ("SCH_DISCWODIS_REF_HI_F" + "SCH_DISCWODIS_REF_HI_M") / (NULLIF("SCH_ENR_HI_F", 0) + NULLIF("SCH_ENR_HI_M", 0)) as HI_both_genders_WODIS_REF_rate
, ("SCH_DISCWODIS_REF_HP_M" / NULLIF("SCH_ENR_HP_M", 0)) as HP_M_WODIS_REF_rate
, ("SCH_DISCWODIS_REF_HP_F" / NULLIF("SCH_ENR_HP_F", 0)) as HP_F_WODIS_REF_rate
, ("SCH_DISCWODIS_REF_HP_F" + "SCH_DISCWODIS_REF_HP_M") / (NULLIF("SCH_ENR_HP_F", 0) + NULLIF("SCH_ENR_HP_M", 0)) as HP_both_genders_WODIS_REF_rate
, ("SCH_DISCWODIS_REF_TR_M" / NULLIF("SCH_ENR_TR_M", 0)) as TR_M_WODIS_REF_rate
, ("SCH_DISCWODIS_REF_TR_F" / NULLIF("SCH_ENR_TR_F", 0)) as TR_F_WODIS_REF_rate
, ("SCH_DISCWODIS_REF_TR_F" + "SCH_DISCWODIS_REF_TR_M") / (NULLIF("SCH_ENR_TR_F", 0) + NULLIF("SCH_ENR_TR_M", 0)) as TR_both_genders_WODIS_REF_rate
, ("SCH_DISCWDIS_REF_IDEA_BL_M" / NULLIF("SCH_IDEAENR_BL_M", 0)) as BL_M_WDIS_REF_IDEA_rate
, ("SCH_DISCWDIS_REF_IDEA_BL_F" / NULLIF("SCH_IDEAENR_BL_F", 0)) as BL_F_WDIS_REF_IDEA_rate
, ("SCH_DISCWDIS_REF_IDEA_BL_F" + "SCH_DISCWDIS_REF_IDEA_BL_M") / (NULLIF("SCH_IDEAENR_BL_F", 0) + NULLIF("SCH_IDEAENR_BL_M", 0)) as BL_both_genders_WDIS_REF_IDEA_rate
, ("SCH_DISCWDIS_REF_IDEA_WH_M" / NULLIF("SCH_IDEAENR_WH_M", 0)) as WH_M_WDIS_REF_IDEA_rate
, ("SCH_DISCWDIS_REF_IDEA_WH_F" / NULLIF("SCH_IDEAENR_WH_F", 0)) as WH_F_WDIS_REF_IDEA_rate
, ("SCH_DISCWDIS_REF_IDEA_WH_F" + "SCH_DISCWDIS_REF_IDEA_WH_M") / (NULLIF("SCH_IDEAENR_WH_F", 0) + NULLIF("SCH_IDEAENR_WH_M", 0)) as WH_both_genders_WDIS_REF_IDEA_rate
, ("SCH_DISCWDIS_REF_IDEA_AM_M" / NULLIF("SCH_IDEAENR_AM_M", 0)) as AM_M_WDIS_REF_IDEA_rate
, ("SCH_DISCWDIS_REF_IDEA_AM_F" / NULLIF("SCH_IDEAENR_AM_F", 0)) as AM_F_WDIS_REF_IDEA_rate
, ("SCH_DISCWDIS_REF_IDEA_AM_F" + "SCH_DISCWDIS_REF_IDEA_AM_M") / (NULLIF("SCH_IDEAENR_AM_F", 0) + NULLIF("SCH_IDEAENR_AM_M", 0)) as AM_both_genders_WDIS_REF_IDEA_rate
, ("SCH_DISCWDIS_REF_IDEA_AS_M" / NULLIF("SCH_IDEAENR_AS_M", 0)) as AS_M_WDIS_REF_IDEA_rate
, ("SCH_DISCWDIS_REF_IDEA_AS_F" / NULLIF("SCH_IDEAENR_AS_F", 0)) as AS_F_WDIS_REF_IDEA_rate
, ("SCH_DISCWDIS_REF_IDEA_AS_F" + "SCH_DISCWDIS_REF_IDEA_AS_M") / (NULLIF("SCH_IDEAENR_AS_F", 0) + NULLIF("SCH_IDEAENR_AS_M", 0)) as AS_both_genders_WDIS_REF_IDEA_rate
, ("SCH_DISCWDIS_REF_IDEA_HI_M" / NULLIF("SCH_IDEAENR_HI_M", 0)) as HI_M_WDIS_REF_IDEA_rate
, ("SCH_DISCWDIS_REF_IDEA_HI_F" / NULLIF("SCH_IDEAENR_HI_F", 0)) as HI_F_WDIS_REF_IDEA_rate
, ("SCH_DISCWDIS_REF_IDEA_HI_F" + "SCH_DISCWDIS_REF_IDEA_HI_M") / (NULLIF("SCH_IDEAENR_HI_F", 0) + NULLIF("SCH_IDEAENR_HI_M", 0)) as HI_both_genders_WDIS_REF_IDEA_rate
, ("SCH_DISCWDIS_REF_IDEA_HP_M" / NULLIF("SCH_IDEAENR_HP_M", 0)) as HP_M_WDIS_REF_IDEA_rate
, ("SCH_DISCWDIS_REF_IDEA_HP_F" / NULLIF("SCH_IDEAENR_HP_F", 0)) as HP_F_WDIS_REF_IDEA_rate
, ("SCH_DISCWDIS_REF_IDEA_HP_F" + "SCH_DISCWDIS_REF_IDEA_HP_M") / (NULLIF("SCH_IDEAENR_HP_F", 0) + NULLIF("SCH_IDEAENR_HP_M", 0)) as HP_both_genders_WDIS_REF_IDEA_rate
, ("SCH_DISCWDIS_REF_IDEA_TR_M" / NULLIF("SCH_IDEAENR_TR_M", 0)) as TR_M_WDIS_REF_IDEA_rate
, ("SCH_DISCWDIS_REF_IDEA_TR_F" / NULLIF("SCH_IDEAENR_TR_F", 0)) as TR_F_WDIS_REF_IDEA_rate
, ("SCH_DISCWDIS_REF_IDEA_TR_F" + "SCH_DISCWDIS_REF_IDEA_TR_M") / (NULLIF("SCH_IDEAENR_TR_F", 0) + NULLIF("SCH_IDEAENR_TR_M", 0)) as TR_both_genders_WDIS_REF_IDEA_rate

-- Arrests
, ("SCH_DISCWODIS_ARR_BL_M" / NULLIF("SCH_ENR_BL_M", 0)) as BL_M_WODIS_ARR_rate
, ("SCH_DISCWODIS_ARR_BL_F" / NULLIF("SCH_ENR_BL_F", 0)) as BL_F_WODIS_ARR_rate
, ("SCH_DISCWODIS_ARR_BL_F" + "SCH_DISCWODIS_ARR_BL_M") / (NULLIF("SCH_ENR_BL_F", 0) + NULLIF("SCH_ENR_BL_M", 0)) as BL_both_genders_WODIS_ARR_rate
, ("SCH_DISCWODIS_ARR_WH_M" / NULLIF("SCH_ENR_WH_M", 0)) as WH_M_WODIS_ARR_rate
, ("SCH_DISCWODIS_ARR_WH_F" / NULLIF("SCH_ENR_WH_F", 0)) as WH_F_WODIS_ARR_rate
, ("SCH_DISCWODIS_ARR_WH_F" + "SCH_DISCWODIS_ARR_WH_M") / (NULLIF("SCH_ENR_WH_F", 0) + NULLIF("SCH_ENR_WH_M", 0)) as WH_both_genders_WODIS_ARR_rate
, ("SCH_DISCWODIS_ARR_AM_M" / NULLIF("SCH_ENR_AM_M", 0)) as AM_M_WODIS_ARR_rate
, ("SCH_DISCWODIS_ARR_AM_F" / NULLIF("SCH_ENR_AM_F", 0)) as AM_F_WODIS_ARR_rate
, ("SCH_DISCWODIS_ARR_AM_F" + "SCH_DISCWODIS_ARR_AM_M") / (NULLIF("SCH_ENR_AM_F", 0) + NULLIF("SCH_ENR_AM_M", 0)) as AM_both_genders_WODIS_ARR_rate
, ("SCH_DISCWODIS_ARR_AS_M" / NULLIF("SCH_ENR_AS_M", 0)) as AS_M_WODIS_ARR_rate
, ("SCH_DISCWODIS_ARR_AS_F" / NULLIF("SCH_ENR_AS_F", 0)) as AS_F_WODIS_ARR_rate
, ("SCH_DISCWODIS_ARR_AS_F" + "SCH_DISCWODIS_ARR_AS_M") / (NULLIF("SCH_ENR_AS_F", 0) + NULLIF("SCH_ENR_AS_M", 0)) as AS_both_genders_WODIS_ARR_rate
, ("SCH_DISCWODIS_ARR_HI_M" / NULLIF("SCH_ENR_HI_M", 0)) as HI_M_WODIS_ARR_rate
, ("SCH_DISCWODIS_ARR_HI_F" / NULLIF("SCH_ENR_HI_F", 0)) as HI_F_WODIS_ARR_rate
, ("SCH_DISCWODIS_ARR_HI_F" + "SCH_DISCWODIS_ARR_HI_M") / (NULLIF("SCH_ENR_HI_F", 0) + NULLIF("SCH_ENR_HI_M", 0)) as HI_both_genders_WODIS_ARR_rate
, ("SCH_DISCWODIS_ARR_HP_M" / NULLIF("SCH_ENR_HP_M", 0)) as HP_M_WODIS_ARR_rate
, ("SCH_DISCWODIS_ARR_HP_F" / NULLIF("SCH_ENR_HP_F", 0)) as HP_F_WODIS_ARR_rate
, ("SCH_DISCWODIS_ARR_HP_F" + "SCH_DISCWODIS_ARR_HP_M") / (NULLIF("SCH_ENR_HP_F", 0) + NULLIF("SCH_ENR_HP_M", 0)) as HP_both_genders_WODIS_ARR_rate
, ("SCH_DISCWODIS_ARR_TR_M" / NULLIF("SCH_ENR_TR_M", 0)) as TR_M_WODIS_ARR_rate
, ("SCH_DISCWODIS_ARR_TR_F" / NULLIF("SCH_ENR_TR_F", 0)) as TR_F_WODIS_ARR_rate
, ("SCH_DISCWODIS_ARR_TR_F" + "SCH_DISCWODIS_ARR_TR_M") / (NULLIF("SCH_ENR_TR_F", 0) + NULLIF("SCH_ENR_TR_M", 0)) as TR_both_genders_WODIS_ARR_rate
, ("SCH_DISCWDIS_ARR_IDEA_BL_M" / NULLIF("SCH_IDEAENR_BL_M", 0)) as BL_M_WDIS_ARR_IDEA_rate
, ("SCH_DISCWDIS_ARR_IDEA_BL_F" / NULLIF("SCH_IDEAENR_BL_F", 0)) as BL_F_WDIS_ARR_IDEA_rate
, ("SCH_DISCWDIS_ARR_IDEA_BL_F" + "SCH_DISCWDIS_ARR_IDEA_BL_M") / (NULLIF("SCH_IDEAENR_BL_F", 0) + NULLIF("SCH_IDEAENR_BL_M", 0)) as BL_both_genders_WDIS_ARR_IDEA_rate
, ("SCH_DISCWDIS_ARR_IDEA_WH_M" / NULLIF("SCH_IDEAENR_WH_M", 0)) as WH_M_WDIS_ARR_IDEA_rate
, ("SCH_DISCWDIS_ARR_IDEA_WH_F" / NULLIF("SCH_IDEAENR_WH_F", 0)) as WH_F_WDIS_ARR_IDEA_rate
, ("SCH_DISCWDIS_ARR_IDEA_WH_F" + "SCH_DISCWDIS_ARR_IDEA_WH_M") / (NULLIF("SCH_IDEAENR_WH_F", 0) + NULLIF("SCH_IDEAENR_WH_M", 0)) as WH_both_genders_WDIS_ARR_IDEA_rate
, ("SCH_DISCWDIS_ARR_IDEA_AM_M" / NULLIF("SCH_IDEAENR_AM_M", 0)) as AM_M_WDIS_ARR_IDEA_rate
, ("SCH_DISCWDIS_ARR_IDEA_AM_F" / NULLIF("SCH_IDEAENR_AM_F", 0)) as AM_F_WDIS_ARR_IDEA_rate
, ("SCH_DISCWDIS_ARR_IDEA_AM_F" + "SCH_DISCWDIS_ARR_IDEA_AM_M") / (NULLIF("SCH_IDEAENR_AM_F", 0) + NULLIF("SCH_IDEAENR_AM_M", 0)) as AM_both_genders_WDIS_ARR_IDEA_rate
, ("SCH_DISCWDIS_ARR_IDEA_AS_M" / NULLIF("SCH_IDEAENR_AS_M", 0)) as AS_M_WDIS_ARR_IDEA_rate
, ("SCH_DISCWDIS_ARR_IDEA_AS_F" / NULLIF("SCH_IDEAENR_AS_F", 0)) as AS_F_WDIS_ARR_IDEA_rate
, ("SCH_DISCWDIS_ARR_IDEA_AS_F" + "SCH_DISCWDIS_ARR_IDEA_AS_M") / (NULLIF("SCH_IDEAENR_AS_F", 0) + NULLIF("SCH_IDEAENR_AS_M", 0)) as AS_both_genders_WDIS_ARR_IDEA_rate
, ("SCH_DISCWDIS_ARR_IDEA_HI_M" / NULLIF("SCH_IDEAENR_HI_M", 0)) as HI_M_WDIS_ARR_IDEA_rate
, ("SCH_DISCWDIS_ARR_IDEA_HI_F" / NULLIF("SCH_IDEAENR_HI_F", 0)) as HI_F_WDIS_ARR_IDEA_rate
, ("SCH_DISCWDIS_ARR_IDEA_HI_F" + "SCH_DISCWDIS_ARR_IDEA_HI_M") / (NULLIF("SCH_IDEAENR_HI_F", 0) + NULLIF("SCH_IDEAENR_HI_M", 0)) as HI_both_genders_WDIS_ARR_IDEA_rate
, ("SCH_DISCWDIS_ARR_IDEA_HP_M" / NULLIF("SCH_IDEAENR_HP_M", 0)) as HP_M_WDIS_ARR_IDEA_rate
, ("SCH_DISCWDIS_ARR_IDEA_HP_F" / NULLIF("SCH_IDEAENR_HP_F", 0)) as HP_F_WDIS_ARR_IDEA_rate
, ("SCH_DISCWDIS_ARR_IDEA_HP_F" + "SCH_DISCWDIS_ARR_IDEA_HP_M") / (NULLIF("SCH_IDEAENR_HP_F", 0) + NULLIF("SCH_IDEAENR_HP_M", 0)) as HP_both_genders_WDIS_ARR_IDEA_rate
, ("SCH_DISCWDIS_ARR_IDEA_TR_M" / NULLIF("SCH_IDEAENR_TR_M", 0)) as TR_M_WDIS_ARR_IDEA_rate
, ("SCH_DISCWDIS_ARR_IDEA_TR_F" / NULLIF("SCH_IDEAENR_TR_F", 0)) as TR_F_WDIS_ARR_IDEA_rate
, ("SCH_DISCWDIS_ARR_IDEA_TR_F" + "SCH_DISCWDIS_ARR_IDEA_TR_M") / (NULLIF("SCH_IDEAENR_TR_F", 0) + NULLIF("SCH_IDEAENR_TR_M", 0)) as TR_both_genders_WDIS_ARR_IDEA_rate

-- Gifted and Talented enrollment
, ("SCH_GTENR_BL_M" / NULLIF("SCH_ENR_BL_M", 0)) as BL_M_GTENR_rate
, ("SCH_GTENR_BL_F" / NULLIF("SCH_ENR_BL_F", 0)) as BL_F_GTENR_rate
, ("SCH_GTENR_BL_F" + "SCH_GTENR_BL_M") / (NULLIF("SCH_ENR_BL_F", 0) + NULLIF("SCH_ENR_BL_M", 0)) as BL_both_genders_GTENR_rate
, ("SCH_GTENR_WH_M" / NULLIF("SCH_ENR_WH_M", 0)) as WH_M_GTENR_rate
, ("SCH_GTENR_WH_F" / NULLIF("SCH_ENR_WH_F", 0)) as WH_F_GTENR_rate
, ("SCH_GTENR_WH_F" + "SCH_GTENR_WH_M") / (NULLIF("SCH_ENR_WH_F", 0) + NULLIF("SCH_ENR_WH_M", 0)) as WH_both_genders_GTENR_rate
, ("SCH_GTENR_AM_M" / NULLIF("SCH_ENR_AM_M", 0)) as AM_M_GTENR_rate
, ("SCH_GTENR_AM_F" / NULLIF("SCH_ENR_AM_F", 0)) as AM_F_GTENR_rate
, ("SCH_GTENR_AM_F" + "SCH_GTENR_AM_M") / (NULLIF("SCH_ENR_AM_F", 0) + NULLIF("SCH_ENR_AM_M", 0)) as AM_both_genders_GTENR_rate
, ("SCH_GTENR_AS_M" / NULLIF("SCH_ENR_AS_M", 0)) as AS_M_GTENR_rate
, ("SCH_GTENR_AS_F" / NULLIF("SCH_ENR_AS_F", 0)) as AS_F_GTENR_rate
, ("SCH_GTENR_AS_F" + "SCH_GTENR_AS_M") / (NULLIF("SCH_ENR_AS_F", 0) + NULLIF("SCH_ENR_AS_M", 0)) as AS_both_genders_GTENR_rate
, ("SCH_GTENR_HI_M" / NULLIF("SCH_ENR_HI_M", 0)) as HI_M_GTENR_rate
, ("SCH_GTENR_HI_F" / NULLIF("SCH_ENR_HI_F", 0)) as HI_F_GTENR_rate
, ("SCH_GTENR_HI_F" + "SCH_GTENR_HI_M") / (NULLIF("SCH_ENR_HI_F", 0) + NULLIF("SCH_ENR_HI_M", 0)) as HI_both_genders_GTENR_rate
, ("SCH_GTENR_HP_M" / NULLIF("SCH_ENR_HP_M", 0)) as HP_M_GTENR_rate
, ("SCH_GTENR_HP_F" / NULLIF("SCH_ENR_HP_F", 0)) as HP_F_GTENR_rate
, ("SCH_GTENR_HP_F" + "SCH_GTENR_HP_M") / (NULLIF("SCH_ENR_HP_F", 0) + NULLIF("SCH_ENR_HP_M", 0)) as HP_both_genders_GTENR_rate
, ("SCH_GTENR_TR_M" / NULLIF("SCH_ENR_TR_M", 0)) as TR_M_GTENR_rate
, ("SCH_GTENR_TR_F" / NULLIF("SCH_ENR_TR_F", 0)) as TR_F_GTENR_rate
, ("SCH_GTENR_TR_F" + "SCH_GTENR_TR_M") / (NULLIF("SCH_ENR_TR_F", 0) + NULLIF("SCH_ENR_TR_M", 0)) as TR_both_genders_GTENR_rate

-- AP Enrollment
, ("SCH_APENR_BL_M" / NULLIF("SCH_ENR_BL_M", 0)) as BL_M_APENR_rate
, ("SCH_APENR_BL_F" / NULLIF("SCH_ENR_BL_F", 0)) as BL_F_APENR_rate
, ("SCH_APENR_BL_F" + "SCH_APENR_BL_M") / (NULLIF("SCH_ENR_BL_F", 0) + NULLIF("SCH_ENR_BL_M", 0)) as BL_both_genders_APENR_rate
, ("SCH_APENR_WH_M" / NULLIF("SCH_ENR_WH_M", 0)) as WH_M_APENR_rate
, ("SCH_APENR_WH_F" / NULLIF("SCH_ENR_WH_F", 0)) as WH_F_APENR_rate
, ("SCH_APENR_WH_F" + "SCH_APENR_WH_M") / (NULLIF("SCH_ENR_WH_F", 0) + NULLIF("SCH_ENR_WH_M", 0)) as WH_both_genders_APENR_rate
, ("SCH_APENR_AM_M" / NULLIF("SCH_ENR_AM_M", 0)) as AM_M_APENR_rate
, ("SCH_APENR_AM_F" / NULLIF("SCH_ENR_AM_F", 0)) as AM_F_APENR_rate
, ("SCH_APENR_AM_F" + "SCH_APENR_AM_M") / (NULLIF("SCH_ENR_AM_F", 0) + NULLIF("SCH_ENR_AM_M", 0)) as AM_both_genders_APENR_rate
, ("SCH_APENR_AS_M" / NULLIF("SCH_ENR_AS_M", 0)) as AS_M_APENR_rate
, ("SCH_APENR_AS_F" / NULLIF("SCH_ENR_AS_F", 0)) as AS_F_APENR_rate
, ("SCH_APENR_AS_F" + "SCH_APENR_AS_M") / (NULLIF("SCH_ENR_AS_F", 0) + NULLIF("SCH_ENR_AS_M", 0)) as AS_both_genders_APENR_rate
, ("SCH_APENR_HI_M" / NULLIF("SCH_ENR_HI_M", 0)) as HI_M_APENR_rate
, ("SCH_APENR_HI_F" / NULLIF("SCH_ENR_HI_F", 0)) as HI_F_APENR_rate
, ("SCH_APENR_HI_F" + "SCH_APENR_HI_M") / (NULLIF("SCH_ENR_HI_F", 0) + NULLIF("SCH_ENR_HI_M", 0)) as HI_both_genders_APENR_rate
, ("SCH_APENR_HP_M" / NULLIF("SCH_ENR_HP_M", 0)) as HP_M_APENR_rate
, ("SCH_APENR_HP_F" / NULLIF("SCH_ENR_HP_F", 0)) as HP_F_APENR_rate
, ("SCH_APENR_HP_F" + "SCH_APENR_HP_M") / (NULLIF("SCH_ENR_HP_F", 0) + NULLIF("SCH_ENR_HP_M", 0)) as HP_both_genders_APENR_rate
, ("SCH_APENR_TR_M" / NULLIF("SCH_ENR_TR_M", 0)) as TR_M_APENR_rate
, ("SCH_APENR_TR_F" / NULLIF("SCH_ENR_TR_F", 0)) as TR_F_APENR_rate
, ("SCH_APENR_TR_F" + "SCH_APENR_TR_M") / (NULLIF("SCH_ENR_TR_F", 0) + NULLIF("SCH_ENR_TR_M", 0)) as TR_both_genders_APENR_rate
FROM districts
ORDER BY 1, 2
);