select "LEAID"
		,"SCH_ENR_BL_F" + "SCH_ENR_BL_M" as bl_enrollment
		,"SCH_ENR_BL_F" + "SCH_ENR_BL_M" as wh_enrollment
		,("SCH_DISCWODIS_MULTOOS_BL_F" + "SCH_DISCWODIS_MULTOOS_BL_M") / (NULLIF("SCH_ENR_BL_F", 0) + NULLIF("SCH_ENR_BL_M", 0)) as bl_no_disab_mult_suspension_rate
		,("SCH_DISCWODIS_MULTOOS_WH_F" + "SCH_DISCWODIS_MULTOOS_WH_M") / (NULLIF("SCH_ENR_Wh_F", 0) + NULLIF("SCH_ENR_WH_M", 0)) as wh_no_disab_mult_suspension_rate
		,("SCH_DISCWODIS_SINGOOS_WH_F" + "SCH_DISCWODIS_SINGOOS_WH_M") / (NULLIF("SCH_ENR_WH_F", 0) + NULLIF("SCH_ENR_WH_M", 0)) as wh_no_disab_sing_suspension_rate
		,("SCH_DISCWODIS_SINGOOS_BL_F" + "SCH_DISCWODIS_SINGOOS_BL_M") / (NULLIF("SCH_ENR_BL_F", 0) + NULLIF("SCH_ENR_BL_M", 0)) as bl_no_disab_sing_suspension_rate
		,("SCH_DISCWODIS_REF_BL_F" + "SCH_DISCWODIS_REF_BL_M")  / (NULLIF("SCH_ENR_BL_F", 0) + NULLIF("SCH_ENR_BL_M", 0)) as bl_no_disab_le_referral_rate
		,("SCH_DISCWODIS_REF_WH_F" + "SCH_DISCWODIS_REF_WH_M")  / (NULLIF("SCH_ENR_WH_F", 0) + NULLIF("SCH_ENR_WH_M", 0)) as wh_no_disab_le_referral_rate
		
		 from districts;



# Queries below calculate desired metrics at the district-level and nationally

select SUM("SCH_DISCWODIS_MULTOOS_BL_M" + "SCH_DISCWODIS_MULTOOS_BL_M") as national_bl_suspensions
, SUM("SCH_ENR_BL_F" + "SCH_ENR_BL_M") as national_bl_enrollment
, SUM("SCH_DISCWODIS_MULTOOS_BL_M" + "SCH_DISCWODIS_MULTOOS_BL_M") / SUM("SCH_ENR_BL_F" + "SCH_ENR_BL_M") as bl_suspension_rate
