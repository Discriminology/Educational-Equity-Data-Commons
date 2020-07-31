select * from district_rates join (select "YEAR", "LEAID", "SCH_ENR_BL_M" as dist_wodis_enr_BL_M
		,"SCH_IDEAENR_BL_M" as dist_wodis_wdis_enr_BL_M
		,"SCH_ENR_BL_F" as dist_wodis_enr_BL_F
		,"SCH_IDEAENR_BL_F" as dist_wodis_wdis_enr_BL_F
		,"SCH_ENR_BL_M" + "SCH_ENR_BL_F" as dist_wodis_enr_BL
		,"SCH_IDEAENR_BL_M" + "SCH_IDEAENR_BL_F" as dist_wdis_enr_BL
		,"SCH_ENR_WH_M" as dist_wodis_enr_WH_M
		,"SCH_IDEAENR_WH_M" as dist_wodis_wdis_enr_WH_M
		,"SCH_ENR_WH_F" as dist_wodis_enr_WH_F
		,"SCH_IDEAENR_WH_F" as dist_wodis_wdis_enr_WH_F
		,"SCH_ENR_WH_M" + "SCH_ENR_WH_F" as dist_wodis_enr_WH
		,"SCH_IDEAENR_WH_M" + "SCH_IDEAENR_WH_F" as dist_wdis_enr_WH
		,"SCH_ENR_AM_M" as dist_wodis_enr_AM_M
		,"SCH_IDEAENR_AM_M" as dist_wodis_wdis_enr_AM_M
		,"SCH_ENR_AM_F" as dist_wodis_enr_AM_F
		,"SCH_IDEAENR_AM_F" as dist_wodis_wdis_enr_AM_F
		,"SCH_ENR_AM_M" + "SCH_ENR_AM_F" as dist_wodis_enr_AM
		,"SCH_IDEAENR_AM_M" + "SCH_IDEAENR_AM_F" as dist_wdis_enr_AM
		,"SCH_ENR_AS_M" as dist_wodis_enr_AS_M
		,"SCH_IDEAENR_AS_M" as dist_wodis_wdis_enr_AS_M
		,"SCH_ENR_AS_F" as dist_wodis_enr_AS_F
		,"SCH_IDEAENR_AS_F" as dist_wodis_wdis_enr_AS_F
		,"SCH_ENR_AS_M" + "SCH_ENR_AS_F" as dist_wodis_enr_AS
		,"SCH_IDEAENR_AS_M" + "SCH_IDEAENR_AS_F" as dist_wdis_enr_AS
		,"SCH_ENR_HI_M" as dist_wodis_enr_HI_M
		,"SCH_IDEAENR_HI_M" as dist_wodis_wdis_enr_HI_M
		,"SCH_ENR_HI_F" as dist_wodis_enr_HI_F
		,"SCH_IDEAENR_HI_F" as dist_wodis_wdis_enr_HI_F
		,"SCH_ENR_HI_M" + "SCH_ENR_HI_F" as dist_wodis_enr_HI
		,"SCH_IDEAENR_HI_M" + "SCH_IDEAENR_HI_F" as dist_wdis_enr_HI
		,"SCH_ENR_HP_M" as dist_wodis_enr_HP_M
		,"SCH_IDEAENR_HP_M" as dist_wodis_wdis_enr_HP_M
		,"SCH_ENR_HP_F" as dist_wodis_enr_HP_F
		,"SCH_IDEAENR_HP_F" as dist_wodis_wdis_enr_HP_F
		,"SCH_ENR_HP_M" + "SCH_ENR_HP_F" as dist_wodis_enr_HP
		,"SCH_IDEAENR_HP_M" + "SCH_IDEAENR_HP_F" as dist_wdis_enr_HP
		,"SCH_ENR_TR_M" as dist_wodis_enr_TR_M
		,"SCH_IDEAENR_TR_M" as dist_wodis_wdis_enr_TR_M
		,"SCH_ENR_TR_F" as dist_wodis_enr_TR_F
		,"SCH_IDEAENR_TR_F" as dist_wodis_wdis_enr_TR_F
		,"SCH_ENR_TR_M" + "SCH_ENR_TR_F" as dist_wodis_enr_TR
		,"SCH_IDEAENR_TR_M" + "SCH_IDEAENR_TR_F" as dist_wdis_enr_TR from districts) dist_enrs
		on dist_enrs."LEAID" = district_rates."LEAID"
		and
		dist_enrs."YEAR" = district_rates."YEAR"
		left join national_rates nr
		on nr."YEAR" = dist_enrs."YEAR"
	