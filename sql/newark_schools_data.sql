--- SCHOOL-LEVEL DATA
select 
sn.school_name, 
s."YEAR",
s."SCHID",
s."COMBOKEY", 
s."LEAID",
'Newark Public School District' as "LEA_NAME", 
s."LEA_STATE_NAME",
'013' as county_fips,
'34' as state_fips,
("SCH_FTESERVICES_PSY" + "SCH_FTESERVICES_SOC") as socioemotional_staff,
("SCH_FTESECURITY_LEO" + "SCH_FTESECURITY_GUA") as law_enforcement_presence,

--Total enrollment
("TOT_ENR_M" + "TOT_ENR_F") as total_enrollment,


-- Total enrollment by race
("SCH_ENR_WH_M" + "SCH_ENR_WH_F") as white_enrollment,
("SCH_ENR_BL_M" + "SCH_ENR_BL_F") as black_enrollment,
("SCH_ENR_HI_M" + "SCH_ENR_HI_F") as hispanic_enrollment,
("SCH_ENR_AS_M" + "SCH_ENR_AS_F") as asian_enrollment,
("SCH_ENR_AM_M" + "SCH_ENR_AM_F") as native_american_enrollment,
("SCH_ENR_HP_M" + "SCH_ENR_HP_F") as hawaiian_pacific_islander_enrollment,
("SCH_ENR_TR_M" + "SCH_ENR_TR_F") as two_or_more_races_enrollment,

-- Total GT enrollment by race
("SCH_GTENR_WH_M" + "SCH_GTENR_WH_F") as white_GT_enrollment,
("SCH_GTENR_BL_M" + "SCH_GTENR_BL_F") as black_GT_enrollment,
("SCH_GTENR_HI_M" + "SCH_GTENR_HI_F") as hispanic_GT_enrollment,
("SCH_GTENR_AS_M" + "SCH_GTENR_AS_F") as asian_GT_enrollment,
("SCH_GTENR_AM_M" + "SCH_GTENR_AM_F") as native_american_GT_enrollment,
("SCH_GTENR_HP_M" + "SCH_GTENR_HP_F") as hawaiian_pacific_islander_GT_enrollment,
("SCH_GTENR_TR_M" + "SCH_GTENR_TR_F") as two_or_more_races_GT_enrollment,

-- Total AP enrollment by race
("SCH_APENR_WH_M" + "SCH_APENR_WH_F") as white_AP_enrollment,
("SCH_APENR_BL_M" + "SCH_APENR_BL_F") as black_AP_enrollment,
("SCH_APENR_HI_M" + "SCH_APENR_HI_F") as hispanic_AP_enrollment,
("SCH_APENR_AS_M" + "SCH_APENR_AS_F") as asian_AP_enrollment,
("SCH_APENR_AM_M" + "SCH_APENR_AM_F") as native_american_AP_enrollment,
("SCH_APENR_HP_M" + "SCH_APENR_HP_F") as hawaiian_pacific_islander_AP_enrollment,
("SCH_APENR_TR_M" + "SCH_APENR_TR_F") as two_or_more_races_AP_enrollment

-- Suspensions by race
, ("SCH_DISCWODIS_MULTOOS_WH_M" + "SCH_DISCWODIS_SINGOOS_WH_M" + "SCH_DISCWODIS_MULTOOS_WH_F" + "SCH_DISCWODIS_SINGOOS_WH_F" + "SCH_DISCWDIS_SINGOOS_IDEA_WH_M" + "SCH_DISCWDIS_SINGOOS_IDEA_WH_F" + "SCH_DISCWDIS_MULTOOS_IDEA_WH_M" + "SCH_DISCWDIS_MULTOOS_IDEA_WH_F") as white_oos_suspensions 
, ("SCH_DISCWODIS_MULTOOS_BL_M" + "SCH_DISCWODIS_SINGOOS_BL_M" + "SCH_DISCWODIS_MULTOOS_BL_F" + "SCH_DISCWODIS_SINGOOS_BL_F" + "SCH_DISCWDIS_SINGOOS_IDEA_BL_M" + "SCH_DISCWDIS_SINGOOS_IDEA_BL_F" + "SCH_DISCWDIS_MULTOOS_IDEA_BL_M" + "SCH_DISCWDIS_MULTOOS_IDEA_BL_F") as black_oos_suspensions 
, ("SCH_DISCWODIS_MULTOOS_HI_M" + "SCH_DISCWODIS_SINGOOS_HI_M" + "SCH_DISCWODIS_MULTOOS_HI_F" + "SCH_DISCWODIS_SINGOOS_HI_F" + "SCH_DISCWDIS_SINGOOS_IDEA_HI_M" + "SCH_DISCWDIS_SINGOOS_IDEA_HI_F" + "SCH_DISCWDIS_MULTOOS_IDEA_HI_M" + "SCH_DISCWDIS_MULTOOS_IDEA_HI_F") as hispanic_oos_suspensions 
, ("SCH_DISCWODIS_MULTOOS_AS_M" + "SCH_DISCWODIS_SINGOOS_AS_M" + "SCH_DISCWODIS_MULTOOS_AS_F" + "SCH_DISCWODIS_SINGOOS_AS_F" + "SCH_DISCWDIS_SINGOOS_IDEA_AS_M" + "SCH_DISCWDIS_SINGOOS_IDEA_AS_F" + "SCH_DISCWDIS_MULTOOS_IDEA_AS_M" + "SCH_DISCWDIS_MULTOOS_IDEA_AS_F") as asian_oos_suspensions 
, ("SCH_DISCWODIS_MULTOOS_AM_M" + "SCH_DISCWODIS_SINGOOS_AM_M" + "SCH_DISCWODIS_MULTOOS_AM_F" + "SCH_DISCWODIS_SINGOOS_AM_F" + "SCH_DISCWDIS_SINGOOS_IDEA_AM_M" + "SCH_DISCWDIS_SINGOOS_IDEA_AM_F" + "SCH_DISCWDIS_MULTOOS_IDEA_AM_M" + "SCH_DISCWDIS_MULTOOS_IDEA_AM_F") as native_american_oos_suspensions 
, ("SCH_DISCWODIS_MULTOOS_HP_M" + "SCH_DISCWODIS_SINGOOS_HP_M" + "SCH_DISCWODIS_MULTOOS_HP_F" + "SCH_DISCWODIS_SINGOOS_HP_F" + "SCH_DISCWDIS_SINGOOS_IDEA_HP_M" + "SCH_DISCWDIS_SINGOOS_IDEA_HP_F" + "SCH_DISCWDIS_MULTOOS_IDEA_HP_M" + "SCH_DISCWDIS_MULTOOS_IDEA_HP_F") as hawaiian_pacific_islander_oos_suspensions 
, ("SCH_DISCWODIS_MULTOOS_TR_M" + "SCH_DISCWODIS_SINGOOS_TR_M" + "SCH_DISCWODIS_MULTOOS_TR_F" + "SCH_DISCWODIS_SINGOOS_TR_F" + "SCH_DISCWDIS_SINGOOS_IDEA_TR_M" + "SCH_DISCWDIS_SINGOOS_IDEA_TR_F" + "SCH_DISCWDIS_MULTOOS_IDEA_TR_M" + "SCH_DISCWDIS_MULTOOS_IDEA_TR_F") as two_or_more_races_oos_suspensions 


-- Law enforcement interactions by race
, ("SCH_DISCWODIS_REF_WH_M" 
+ "SCH_DISCWODIS_REF_WH_F" 
+ "SCH_DISCWDIS_REF_IDEA_WH_M" 
+ "SCH_DISCWDIS_REF_IDEA_WH_F"
+ "SCH_DISCWODIS_ARR_WH_M"
+ "SCH_DISCWODIS_ARR_WH_F"
+ "SCH_DISCWDIS_ARR_IDEA_WH_M"
+ "SCH_DISCWDIS_ARR_IDEA_WH_F") as white_le_referrals_arrests 

, ("SCH_DISCWODIS_REF_BL_M" 
+ "SCH_DISCWODIS_REF_BL_F" 
+ "SCH_DISCWDIS_REF_IDEA_BL_M" 
+ "SCH_DISCWDIS_REF_IDEA_BL_F"
+ "SCH_DISCWODIS_ARR_BL_M"
+ "SCH_DISCWODIS_ARR_BL_F"
+ "SCH_DISCWDIS_ARR_IDEA_BL_M"
+ "SCH_DISCWDIS_ARR_IDEA_BL_F") as black_le_referrals_arrests 

, ("SCH_DISCWODIS_REF_HI_M" 
+ "SCH_DISCWODIS_REF_HI_F" 
+ "SCH_DISCWDIS_REF_IDEA_HI_M" 
+ "SCH_DISCWDIS_REF_IDEA_HI_F"
+ "SCH_DISCWODIS_ARR_HI_M"
+ "SCH_DISCWODIS_ARR_HI_F"
+ "SCH_DISCWDIS_ARR_IDEA_HI_M"
+ "SCH_DISCWDIS_ARR_IDEA_HI_F") as hispanic_le_referrals_arrests 

, ("SCH_DISCWODIS_REF_AS_M" 
+ "SCH_DISCWODIS_REF_AS_F" 
+ "SCH_DISCWDIS_REF_IDEA_AS_M" 
+ "SCH_DISCWDIS_REF_IDEA_AS_F"
+ "SCH_DISCWODIS_ARR_AS_M"
+ "SCH_DISCWODIS_ARR_AS_F"
+ "SCH_DISCWDIS_ARR_IDEA_AS_M"
+ "SCH_DISCWDIS_ARR_IDEA_AS_F") as asian_le_referrals_arrests 

, ("SCH_DISCWODIS_REF_AM_M" 
+ "SCH_DISCWODIS_REF_AM_F" 
+ "SCH_DISCWDIS_REF_IDEA_AM_M" 
+ "SCH_DISCWDIS_REF_IDEA_AM_F"
+ "SCH_DISCWODIS_ARR_AM_M"
+ "SCH_DISCWODIS_ARR_AM_F"
+ "SCH_DISCWDIS_ARR_IDEA_AM_M"
+ "SCH_DISCWDIS_ARR_IDEA_AM_F") as native_american_le_referrals_arrests 


, ("SCH_DISCWODIS_REF_HP_M" 
+ "SCH_DISCWODIS_REF_HP_F" 
+ "SCH_DISCWDIS_REF_IDEA_HP_M" 
+ "SCH_DISCWDIS_REF_IDEA_HP_F"
+ "SCH_DISCWODIS_ARR_HP_M"
+ "SCH_DISCWODIS_ARR_HP_F"
+ "SCH_DISCWDIS_ARR_IDEA_HP_M"
+ "SCH_DISCWDIS_ARR_IDEA_HP_F") as hawaiian_pacific_islander_le_referrals_arrests 


, ("SCH_DISCWODIS_REF_TR_M" 
+ "SCH_DISCWODIS_REF_TR_F" 
+ "SCH_DISCWDIS_REF_IDEA_TR_M" 
+ "SCH_DISCWDIS_REF_IDEA_TR_F"
+ "SCH_DISCWODIS_ARR_TR_M"
+ "SCH_DISCWODIS_ARR_TR_F"
+ "SCH_DISCWDIS_ARR_IDEA_TR_M"
+ "SCH_DISCWDIS_ARR_IDEA_TR_F") as two_or_more_races_le_referrals_arrests 

-- BL both genders risk ratios
, srr.bl_both_genders_wodis_ref_risk_ratio_all_races
,srr.bl_both_genders_wodis_ref_risk_ratio_white
,srr.bl_both_genders_wdis_ref_idea_risk_ratio_all_races
,srr.bl_both_genders_wdis_ref_idea_risk_ratio_white
,srr.bl_both_genders_wodis_arr_risk_ratio_all_races
,srr.bl_both_genders_wodis_arr_risk_ratio_white
,srr.bl_both_genders_wdis_arr_idea_risk_ratio_all_races
,srr.bl_both_genders_wdis_arr_idea_risk_ratio_white
,srr.bl_both_genders_wodis_suspension_risk_ratio_all_races
,srr.bl_both_genders_wodis_suspension_risk_ratio_white
,srr.bl_both_genders_wdis_suspension_risk_ratio_all_races
,srr.bl_both_genders_wdis_suspension_risk_ratio_white
,srr.all_races_ratio_bl_both_genders_gtenr_risk
,srr.white_ratio_bl_both_genders_gtenr_risk
,srr.all_races_ratio_bl_both_genders_apenr_risk
,srr.white_ratio_bl_both_genders_apenr_risk

-- HI both genders risk ratios
, srr.hi_both_genders_wodis_ref_risk_ratio_all_races
,srr.hi_both_genders_wodis_ref_risk_ratio_white
,srr.hi_both_genders_wdis_ref_idea_risk_ratio_all_races
,srr.hi_both_genders_wdis_ref_idea_risk_ratio_white
,srr.hi_both_genders_wodis_arr_risk_ratio_all_races
,srr.hi_both_genders_wodis_arr_risk_ratio_white
,srr.hi_both_genders_wdis_arr_idea_risk_ratio_all_races
,srr.hi_both_genders_wdis_arr_idea_risk_ratio_white
,srr.hi_both_genders_wodis_suspension_risk_ratio_all_races
,srr.hi_both_genders_wodis_suspension_risk_ratio_white
,srr.hi_both_genders_wdis_suspension_risk_ratio_all_races
,srr.hi_both_genders_wdis_suspension_risk_ratio_white
,srr.all_races_ratio_hi_both_genders_gtenr_risk
,srr.white_ratio_hi_both_genders_gtenr_risk
,srr.all_races_ratio_hi_both_genders_apenr_risk
,srr.white_ratio_hi_both_genders_apenr_risk

-- Rates
, sr.bl_both_genders_wodis_suspension_rate
, sr.bl_both_genders_wdis_suspension_rate
, sr.hi_both_genders_wodis_suspension_rate
, sr.hi_both_genders_wdis_suspension_rate
, sr.bl_both_genders_wodis_arr_rate
, sr.hi_both_genders_wodis_arr_rate
, sr.bl_both_genders_apenr_rate
, sr.hi_both_genders_apenr_rate

, nda.*
from schools s
join
(select MAX("SCH_NAME") school_name, "COMBOKEY"
from schools
where "LEAID" = '3411340'
group by 2
order by 2
) sn
on s."COMBOKEY" = sn."COMBOKEY"
join newark n
on n."COMBOKEY" = s."COMBOKEY"
join
school_risk_ratios srr
on s."COMBOKEY" = srr."COMBOKEY"
and s."YEAR" = srr."YEAR"
join
school_rates sr
on s."COMBOKEY" = sr."COMBOKEY"
and s."YEAR" = sr."YEAR"
join newark_district_agg nda
on nda."YEAR" = s."YEAR"
order by 1, 2;



-- Schools raw data
select *
from schools
join newark n
on n."COMBOKEY" = schools."COMBOKEY"
order by 1, 2;


-- Newark School risk ratios
select s."SCHID", s."SCH_NAME", srr.* from
schools s join
school_risk_ratios srr
on s."COMBOKEY" = srr."COMBOKEY"
and s."YEAR" = srr."YEAR"
join newark n
on n."COMBOKEY" = srr."COMBOKEY";

-- Newark school rates
select s."SCHID", s."SCH_NAME", sr.* from
schools s join
school_rates sr
on s."COMBOKEY" = sr."COMBOKEY"
and s."YEAR" = sr."YEAR"
join newark n
on n."COMBOKEY" = sr."COMBOKEY";




--- DISTRICT-LEVEL DATA

select 
d."YEAR",
d."LEAID",
'Newark Public School District' as "LEA_NAME", 
d."LEA_STATE_NAME",
'013' as county_fips,
'34' as state_fips,
("SCH_FTESERVICES_PSY" + "SCH_FTESERVICES_SOC") as socioemotional_staff,
("SCH_FTESECURITY_LEO" + "SCH_FTESECURITY_GUA") as law_enforcement_presence,

--Total enrollment
("TOT_ENR_M" + "TOT_ENR_F") as total_enrollment,


-- Total enrollment by race
("SCH_ENR_WH_M" + "SCH_ENR_WH_F") as white_enrollment,
("SCH_ENR_BL_M" + "SCH_ENR_BL_F") as black_enrollment,
("SCH_ENR_HI_M" + "SCH_ENR_HI_F") as hispanic_enrollment,
("SCH_ENR_AS_M" + "SCH_ENR_AS_F") as asian_enrollment,
("SCH_ENR_AM_M" + "SCH_ENR_AM_F") as native_american_enrollment,
("SCH_ENR_HP_M" + "SCH_ENR_HP_F") as hawaiian_pacific_islander_enrollment,
("SCH_ENR_TR_M" + "SCH_ENR_TR_F") as two_or_more_races_enrollment,

-- Total GT enrollment by race
("SCH_GTENR_WH_M" + "SCH_GTENR_WH_F") as white_GT_enrollment,
("SCH_GTENR_BL_M" + "SCH_GTENR_BL_F") as black_GT_enrollment,
("SCH_GTENR_HI_M" + "SCH_GTENR_HI_F") as hispanic_GT_enrollment,
("SCH_GTENR_AS_M" + "SCH_GTENR_AS_F") as asian_GT_enrollment,
("SCH_GTENR_AM_M" + "SCH_GTENR_AM_F") as native_american_GT_enrollment,
("SCH_GTENR_HP_M" + "SCH_GTENR_HP_F") as hawaiian_pacific_islander_GT_enrollment,
("SCH_GTENR_TR_M" + "SCH_GTENR_TR_F") as two_or_more_races_GT_enrollment,

-- Total AP enrollment by race
("SCH_APENR_WH_M" + "SCH_APENR_WH_F") as white_AP_enrollment,
("SCH_APENR_BL_M" + "SCH_APENR_BL_F") as black_AP_enrollment,
("SCH_APENR_HI_M" + "SCH_APENR_HI_F") as hispanic_AP_enrollment,
("SCH_APENR_AS_M" + "SCH_APENR_AS_F") as asian_AP_enrollment,
("SCH_APENR_AM_M" + "SCH_APENR_AM_F") as native_american_AP_enrollment,
("SCH_APENR_HP_M" + "SCH_APENR_HP_F") as hawaiian_pacific_islander_AP_enrollment,
("SCH_APENR_TR_M" + "SCH_APENR_TR_F") as two_or_more_races_AP_enrollment

-- Suspensions by race
, ("SCH_DISCWODIS_MULTOOS_WH_M" + "SCH_DISCWODIS_SINGOOS_WH_M" + "SCH_DISCWODIS_MULTOOS_WH_F" + "SCH_DISCWODIS_SINGOOS_WH_F" + "SCH_DISCWDIS_SINGOOS_IDEA_WH_M" + "SCH_DISCWDIS_SINGOOS_IDEA_WH_F" + "SCH_DISCWDIS_MULTOOS_IDEA_WH_M" + "SCH_DISCWDIS_MULTOOS_IDEA_WH_F") as white_oos_suspensions 
, ("SCH_DISCWODIS_MULTOOS_BL_M" + "SCH_DISCWODIS_SINGOOS_BL_M" + "SCH_DISCWODIS_MULTOOS_BL_F" + "SCH_DISCWODIS_SINGOOS_BL_F" + "SCH_DISCWDIS_SINGOOS_IDEA_BL_M" + "SCH_DISCWDIS_SINGOOS_IDEA_BL_F" + "SCH_DISCWDIS_MULTOOS_IDEA_BL_M" + "SCH_DISCWDIS_MULTOOS_IDEA_BL_F") as black_oos_suspensions 
, ("SCH_DISCWODIS_MULTOOS_HI_M" + "SCH_DISCWODIS_SINGOOS_HI_M" + "SCH_DISCWODIS_MULTOOS_HI_F" + "SCH_DISCWODIS_SINGOOS_HI_F" + "SCH_DISCWDIS_SINGOOS_IDEA_HI_M" + "SCH_DISCWDIS_SINGOOS_IDEA_HI_F" + "SCH_DISCWDIS_MULTOOS_IDEA_HI_M" + "SCH_DISCWDIS_MULTOOS_IDEA_HI_F") as hispanic_oos_suspensions 
, ("SCH_DISCWODIS_MULTOOS_AS_M" + "SCH_DISCWODIS_SINGOOS_AS_M" + "SCH_DISCWODIS_MULTOOS_AS_F" + "SCH_DISCWODIS_SINGOOS_AS_F" + "SCH_DISCWDIS_SINGOOS_IDEA_AS_M" + "SCH_DISCWDIS_SINGOOS_IDEA_AS_F" + "SCH_DISCWDIS_MULTOOS_IDEA_AS_M" + "SCH_DISCWDIS_MULTOOS_IDEA_AS_F") as asian_oos_suspensions 
, ("SCH_DISCWODIS_MULTOOS_AM_M" + "SCH_DISCWODIS_SINGOOS_AM_M" + "SCH_DISCWODIS_MULTOOS_AM_F" + "SCH_DISCWODIS_SINGOOS_AM_F" + "SCH_DISCWDIS_SINGOOS_IDEA_AM_M" + "SCH_DISCWDIS_SINGOOS_IDEA_AM_F" + "SCH_DISCWDIS_MULTOOS_IDEA_AM_M" + "SCH_DISCWDIS_MULTOOS_IDEA_AM_F") as native_american_oos_suspensions 
, ("SCH_DISCWODIS_MULTOOS_HP_M" + "SCH_DISCWODIS_SINGOOS_HP_M" + "SCH_DISCWODIS_MULTOOS_HP_F" + "SCH_DISCWODIS_SINGOOS_HP_F" + "SCH_DISCWDIS_SINGOOS_IDEA_HP_M" + "SCH_DISCWDIS_SINGOOS_IDEA_HP_F" + "SCH_DISCWDIS_MULTOOS_IDEA_HP_M" + "SCH_DISCWDIS_MULTOOS_IDEA_HP_F") as hawaiian_pacific_islander_oos_suspensions 
, ("SCH_DISCWODIS_MULTOOS_TR_M" + "SCH_DISCWODIS_SINGOOS_TR_M" + "SCH_DISCWODIS_MULTOOS_TR_F" + "SCH_DISCWODIS_SINGOOS_TR_F" + "SCH_DISCWDIS_SINGOOS_IDEA_TR_M" + "SCH_DISCWDIS_SINGOOS_IDEA_TR_F" + "SCH_DISCWDIS_MULTOOS_IDEA_TR_M" + "SCH_DISCWDIS_MULTOOS_IDEA_TR_F") as two_or_more_races_oos_suspensions 


-- Law enforcement interactions by race
, ("SCH_DISCWODIS_REF_WH_M" 
+ "SCH_DISCWODIS_REF_WH_F" 
+ "SCH_DISCWDIS_REF_IDEA_WH_M" 
+ "SCH_DISCWDIS_REF_IDEA_WH_F"
+ "SCH_DISCWODIS_ARR_WH_M"
+ "SCH_DISCWODIS_ARR_WH_F"
+ "SCH_DISCWDIS_ARR_IDEA_WH_M"
+ "SCH_DISCWDIS_ARR_IDEA_WH_F") as white_le_referrals_arrests 

, ("SCH_DISCWODIS_REF_BL_M" 
+ "SCH_DISCWODIS_REF_BL_F" 
+ "SCH_DISCWDIS_REF_IDEA_BL_M" 
+ "SCH_DISCWDIS_REF_IDEA_BL_F"
+ "SCH_DISCWODIS_ARR_BL_M"
+ "SCH_DISCWODIS_ARR_BL_F"
+ "SCH_DISCWDIS_ARR_IDEA_BL_M"
+ "SCH_DISCWDIS_ARR_IDEA_BL_F") as black_le_referrals_arrests 

, ("SCH_DISCWODIS_REF_HI_M" 
+ "SCH_DISCWODIS_REF_HI_F" 
+ "SCH_DISCWDIS_REF_IDEA_HI_M" 
+ "SCH_DISCWDIS_REF_IDEA_HI_F"
+ "SCH_DISCWODIS_ARR_HI_M"
+ "SCH_DISCWODIS_ARR_HI_F"
+ "SCH_DISCWDIS_ARR_IDEA_HI_M"
+ "SCH_DISCWDIS_ARR_IDEA_HI_F") as hispanic_le_referrals_arrests 

, ("SCH_DISCWODIS_REF_AS_M" 
+ "SCH_DISCWODIS_REF_AS_F" 
+ "SCH_DISCWDIS_REF_IDEA_AS_M" 
+ "SCH_DISCWDIS_REF_IDEA_AS_F"
+ "SCH_DISCWODIS_ARR_AS_M"
+ "SCH_DISCWODIS_ARR_AS_F"
+ "SCH_DISCWDIS_ARR_IDEA_AS_M"
+ "SCH_DISCWDIS_ARR_IDEA_AS_F") as asian_le_referrals_arrests 

, ("SCH_DISCWODIS_REF_AM_M" 
+ "SCH_DISCWODIS_REF_AM_F" 
+ "SCH_DISCWDIS_REF_IDEA_AM_M" 
+ "SCH_DISCWDIS_REF_IDEA_AM_F"
+ "SCH_DISCWODIS_ARR_AM_M"
+ "SCH_DISCWODIS_ARR_AM_F"
+ "SCH_DISCWDIS_ARR_IDEA_AM_M"
+ "SCH_DISCWDIS_ARR_IDEA_AM_F") as native_american_le_referrals_arrests 


, ("SCH_DISCWODIS_REF_HP_M" 
+ "SCH_DISCWODIS_REF_HP_F" 
+ "SCH_DISCWDIS_REF_IDEA_HP_M" 
+ "SCH_DISCWDIS_REF_IDEA_HP_F"
+ "SCH_DISCWODIS_ARR_HP_M"
+ "SCH_DISCWODIS_ARR_HP_F"
+ "SCH_DISCWDIS_ARR_IDEA_HP_M"
+ "SCH_DISCWDIS_ARR_IDEA_HP_F") as hawaiian_pacific_islander_le_referrals_arrests 


, ("SCH_DISCWODIS_REF_TR_M" 
+ "SCH_DISCWODIS_REF_TR_F" 
+ "SCH_DISCWDIS_REF_IDEA_TR_M" 
+ "SCH_DISCWDIS_REF_IDEA_TR_F"
+ "SCH_DISCWODIS_ARR_TR_M"
+ "SCH_DISCWODIS_ARR_TR_F"
+ "SCH_DISCWDIS_ARR_IDEA_TR_M"
+ "SCH_DISCWDIS_ARR_IDEA_TR_F") as two_or_more_races_le_referrals_arrests 

-- BL both genders risk ratios
, srr.bl_both_genders_wodis_ref_risk_ratio_all_races
,srr.bl_both_genders_wodis_ref_risk_ratio_white
,srr.bl_both_genders_wdis_ref_idea_risk_ratio_all_races
,srr.bl_both_genders_wdis_ref_idea_risk_ratio_white
,srr.bl_both_genders_wodis_arr_risk_ratio_all_races
,srr.bl_both_genders_wodis_arr_risk_ratio_white
,srr.bl_both_genders_wdis_arr_idea_risk_ratio_all_races
,srr.bl_both_genders_wdis_arr_idea_risk_ratio_white
,srr.bl_both_genders_wodis_suspension_risk_ratio_all_races
,srr.bl_both_genders_wodis_suspension_risk_ratio_white
,srr.bl_both_genders_wdis_suspension_risk_ratio_all_races
,srr.bl_both_genders_wdis_suspension_risk_ratio_white
,srr.all_races_ratio_bl_both_genders_gtenr_risk
,srr.white_ratio_bl_both_genders_gtenr_risk
,srr.all_races_ratio_bl_both_genders_apenr_risk
,srr.white_ratio_bl_both_genders_apenr_risk

-- HI both genders risk ratios
, srr.hi_both_genders_wodis_ref_risk_ratio_all_races
,srr.hi_both_genders_wodis_ref_risk_ratio_white
,srr.hi_both_genders_wdis_ref_idea_risk_ratio_all_races
,srr.hi_both_genders_wdis_ref_idea_risk_ratio_white
,srr.hi_both_genders_wodis_arr_risk_ratio_all_races
,srr.hi_both_genders_wodis_arr_risk_ratio_white
,srr.hi_both_genders_wdis_arr_idea_risk_ratio_all_races
,srr.hi_both_genders_wdis_arr_idea_risk_ratio_white
,srr.hi_both_genders_wodis_suspension_risk_ratio_all_races
,srr.hi_both_genders_wodis_suspension_risk_ratio_white
,srr.hi_both_genders_wdis_suspension_risk_ratio_all_races
,srr.hi_both_genders_wdis_suspension_risk_ratio_white
,srr.all_races_ratio_hi_both_genders_gtenr_risk
,srr.white_ratio_hi_both_genders_gtenr_risk
,srr.all_races_ratio_hi_both_genders_apenr_risk
,srr.white_ratio_hi_both_genders_apenr_risk

-- Rates
, sr.bl_both_genders_wodis_suspension_rate
, sr.bl_both_genders_wdis_suspension_rate
, sr.hi_both_genders_wodis_suspension_rate
, sr.hi_both_genders_wdis_suspension_rate
, sr.bl_both_genders_wodis_arr_rate
, sr.hi_both_genders_wodis_arr_rate
, sr.bl_both_genders_apenr_rate
, sr.hi_both_genders_apenr_rate

from districts d
join
risk_ratios srr
on d."LEAID" = srr."LEAID"
and d."YEAR" = srr."YEAR"
join
district_rates sr
on d."LEAID" = sr."LEAID"
and d."YEAR" = sr."YEAR"
order by 1, 2;
;




-- Raw district-level data
select * from districts d
where "LEAID" ='3411340'
order by "YEAR" asc
;

-- District-level dissimilarity scores
select d."LEA_NAME", cdi.* from
districts d join
classified_dissimilarity_index cdi
on d."LEAID" = cdi."LEAID"
and d."YEAR" = cdi."YEAR"
where d."LEAID" = '3411340'
order by d."YEAR" asc
;

-- Newark district risk ratios
select d."LEA_NAME", rr.*
from risk_ratios rr
join districts d
on d."LEAID" = rr."LEAID"
and d."YEAR" = rr."YEAR"
where rr."LEAID" = '3411340'
order by "YEAR" asc
;

-- Newark district rates
select d."LEA_NAME", dr.*
from district_rates dr
join districts d
on d."LEAID" = dr."LEAID"
and d."YEAR" = dr."YEAR"
where dr. "LEAID" = '3411340'
order by "YEAR" asc
;

