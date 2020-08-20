select schools."LEA_NAME", 
schools."LEA_STATE_NAME",
schools."YEAR",
count(distinct "COMBOKEY") as school_count,
SUM("SCH_FTESERVICES_PSY" + "SCH_FTESERVICES_SOC") as socioemotional_staff,
SUM("SCH_FTESECURITY_LEO" + "SCH_FTESECURITY_GUA") as law_enforcement_presence,

-- Total enrollment by race
SUM("SCH_ENR_WH_M" + "SCH_ENR_WH_F") as white_enrollment,
SUM("SCH_ENR_BL_M" + "SCH_ENR_BL_F") as black_enrollment,
SUM("SCH_ENR_HI_M" + "SCH_ENR_HI_F") as hispanic_enrollment,
SUM("SCH_ENR_AS_M" + "SCH_ENR_AS_F") as asian_enrollment,
SUM("SCH_ENR_AM_M" + "SCH_ENR_AM_F") as native_american_enrollment,
SUM("SCH_ENR_HP_M" + "SCH_ENR_HP_F") as hawaiian_pacific_islander_enrollment,
SUM("SCH_ENR_TR_M" + "SCH_ENR_TR_F") as two_or_more_races_enrollment,

-- Total GT enrollment by race
SUM("SCH_ENR_WH_M" + "SCH_ENR_WH_F") as white_enrollment,
SUM("SCH_ENR_BL_M" + "SCH_ENR_BL_F") as black_enrollment,
SUM("SCH_ENR_HI_M" + "SCH_ENR_HI_F") as hispanic_enrollment,
SUM("SCH_ENR_AS_M" + "SCH_ENR_AS_F") as asian_enrollment,
SUM("SCH_ENR_AM_M" + "SCH_ENR_AM_F") as native_american_enrollment,
SUM("SCH_ENR_HP_M" + "SCH_ENR_HP_F") as hawaiian_pacific_islander_enrollment,
SUM("SCH_ENR_TR_M" + "SCH_ENR_TR_F") as two_or_more_races_enrollment,

-- Total AP enrollment by race
SUM("SCH_APENR_WH_M" + "SCH_APENR_WH_F") as white_AP_enrollment,
SUM("SCH_APENR_BL_M" + "SCH_APENR_BL_F") as black_AP_enrollment,
SUM("SCH_APENR_HI_M" + "SCH_APENR_HI_F") as hispanic_AP_enrollment,
SUM("SCH_APENR_AS_M" + "SCH_APENR_AS_F") as asian_AP_enrollment,
SUM("SCH_APENR_AM_M" + "SCH_APENR_AM_F") as native_american_AP_enrollment,
SUM("SCH_APENR_HP_M" + "SCH_APENR_HP_F") as hawaiian_pacific_islander_AP_enrollment,
SUM("SCH_APENR_TR_M" + "SCH_APENR_TR_F") as two_or_more_races_AP_enrollment

-- Suspensions by race
, SUM("SCH_DISCWODIS_MULTOOS_WH_M" + "SCH_DISCWODIS_SINGOOS_WH_M" + "SCH_DISCWODIS_MULTOOS_WH_F" + "SCH_DISCWODIS_SINGOOS_WH_F" + "SCH_DISCWDIS_SINGOOS_IDEA_WH_M" + "SCH_DISCWDIS_SINGOOS_IDEA_WH_F" + "SCH_DISCWDIS_MULTOOS_IDEA_WH_M" + "SCH_DISCWDIS_MULTOOS_IDEA_WH_F") as white_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_BL_M" + "SCH_DISCWODIS_SINGOOS_BL_M" + "SCH_DISCWODIS_MULTOOS_BL_F" + "SCH_DISCWODIS_SINGOOS_BL_F" + "SCH_DISCWDIS_SINGOOS_IDEA_BL_M" + "SCH_DISCWDIS_SINGOOS_IDEA_BL_F" + "SCH_DISCWDIS_MULTOOS_IDEA_BL_M" + "SCH_DISCWDIS_MULTOOS_IDEA_BL_F") as black_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_HI_M" + "SCH_DISCWODIS_SINGOOS_HI_M" + "SCH_DISCWODIS_MULTOOS_HI_F" + "SCH_DISCWODIS_SINGOOS_HI_F" + "SCH_DISCWDIS_SINGOOS_IDEA_HI_M" + "SCH_DISCWDIS_SINGOOS_IDEA_HI_F" + "SCH_DISCWDIS_MULTOOS_IDEA_HI_M" + "SCH_DISCWDIS_MULTOOS_IDEA_HI_F") as hispanic_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_AS_M" + "SCH_DISCWODIS_SINGOOS_AS_M" + "SCH_DISCWODIS_MULTOOS_AS_F" + "SCH_DISCWODIS_SINGOOS_AS_F" + "SCH_DISCWDIS_SINGOOS_IDEA_AS_M" + "SCH_DISCWDIS_SINGOOS_IDEA_AS_F" + "SCH_DISCWDIS_MULTOOS_IDEA_AS_M" + "SCH_DISCWDIS_MULTOOS_IDEA_AS_F") as asian_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_AM_M" + "SCH_DISCWODIS_SINGOOS_AM_M" + "SCH_DISCWODIS_MULTOOS_AM_F" + "SCH_DISCWODIS_SINGOOS_AM_F" + "SCH_DISCWDIS_SINGOOS_IDEA_AM_M" + "SCH_DISCWDIS_SINGOOS_IDEA_AM_F" + "SCH_DISCWDIS_MULTOOS_IDEA_AM_M" + "SCH_DISCWDIS_MULTOOS_IDEA_AM_F") as native_american_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_HP_M" + "SCH_DISCWODIS_SINGOOS_HP_M" + "SCH_DISCWODIS_MULTOOS_HP_F" + "SCH_DISCWODIS_SINGOOS_HP_F" + "SCH_DISCWDIS_SINGOOS_IDEA_HP_M" + "SCH_DISCWDIS_SINGOOS_IDEA_HP_F" + "SCH_DISCWDIS_MULTOOS_IDEA_HP_M" + "SCH_DISCWDIS_MULTOOS_IDEA_HP_F") as native_american_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_TR_M" + "SCH_DISCWODIS_SINGOOS_TR_M" + "SCH_DISCWODIS_MULTOOS_TR_F" + "SCH_DISCWODIS_SINGOOS_TR_F" + "SCH_DISCWDIS_SINGOOS_IDEA_TR_M" + "SCH_DISCWDIS_SINGOOS_IDEA_TR_F" + "SCH_DISCWDIS_MULTOOS_IDEA_TR_M" + "SCH_DISCWDIS_MULTOOS_IDEA_TR_F") as native_american_oos_suspensions 


from schools inner join classified_dissimilarity_index cdi
on cdi."LEAID" = schools."LEAID"
and cdi."YEAR" = schools."YEAR"
group by 1, 2, 3
having count(distinct "COMBOKEY") >=5
order by 1,3; 