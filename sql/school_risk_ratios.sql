DROP TABLE if exists school_risk_ratios;

CREATE TABLE school_risk_ratios as (
SELECT "COMBOKEY"
	, school_rates."YEAR"
	, "LEA_STATE_NAME"
	, ("bl_m_wodis_ref_rate" / "ntl_all_races_m_wodis_ref_rate") as bl_m_wodis_ref_risk_ratio_all_races
	, ("bl_m_wodis_ref_rate" / "ntl_wh_m_wodis_ref_rate") as bl_m_wodis_ref_risk_ratio_white
	, ("bl_f_wodis_ref_rate" / "ntl_all_races_f_wodis_ref_rate") as bl_f_wodis_ref_risk_ratio_all_races
	, ("bl_f_wodis_ref_rate" / "ntl_wh_f_wodis_ref_rate") as bl_f_wodis_ref_risk_ratio_white
	, ("bl_both_genders_wodis_ref_rate" / "ntl_all_races_both_genders_wodis_ref_rate") as bl_both_genders_wodis_ref_risk_ratio_all_races
	, ("bl_both_genders_wodis_ref_rate" / "ntl_wh_both_genders_wodis_ref_rate") as bl_both_genders_wodis_ref_risk_ratio_white
	, ("wh_m_wodis_ref_rate" / "ntl_all_races_m_wodis_ref_rate") as wh_m_wodis_ref_risk_ratio_all_races
	, ("wh_m_wodis_ref_rate" / "ntl_wh_m_wodis_ref_rate") as wh_m_wodis_ref_risk_ratio_white
	, ("wh_f_wodis_ref_rate" / "ntl_all_races_f_wodis_ref_rate") as wh_f_wodis_ref_risk_ratio_all_races
	, ("wh_f_wodis_ref_rate" / "ntl_wh_f_wodis_ref_rate") as wh_f_wodis_ref_risk_ratio_white
	, ("wh_both_genders_wodis_ref_rate" / "ntl_all_races_both_genders_wodis_ref_rate") as wh_both_genders_wodis_ref_risk_ratio_all_races
	, ("wh_both_genders_wodis_ref_rate" / "ntl_wh_both_genders_wodis_ref_rate") as wh_both_genders_wodis_ref_risk_ratio_white
	, ("am_m_wodis_ref_rate" / "ntl_all_races_m_wodis_ref_rate") as am_m_wodis_ref_risk_ratio_all_races
	, ("am_m_wodis_ref_rate" / "ntl_wh_m_wodis_ref_rate") as am_m_wodis_ref_risk_ratio_white
	, ("am_f_wodis_ref_rate" / "ntl_all_races_f_wodis_ref_rate") as am_f_wodis_ref_risk_ratio_all_races
	, ("am_f_wodis_ref_rate" / "ntl_wh_f_wodis_ref_rate") as am_f_wodis_ref_risk_ratio_white
	, ("am_both_genders_wodis_ref_rate" / "ntl_all_races_both_genders_wodis_ref_rate") as am_both_genders_wodis_ref_risk_ratio_all_races
	, ("am_both_genders_wodis_ref_rate" / "ntl_wh_both_genders_wodis_ref_rate") as am_both_genders_wodis_ref_risk_ratio_white
	, ("as_m_wodis_ref_rate" / "ntl_all_races_m_wodis_ref_rate") as as_m_wodis_ref_risk_ratio_all_races
	, ("as_m_wodis_ref_rate" / "ntl_wh_m_wodis_ref_rate") as as_m_wodis_ref_risk_ratio_white
	, ("as_f_wodis_ref_rate" / "ntl_all_races_f_wodis_ref_rate") as as_f_wodis_ref_risk_ratio_all_races
	, ("as_f_wodis_ref_rate" / "ntl_wh_f_wodis_ref_rate") as as_f_wodis_ref_risk_ratio_white
	, ("as_both_genders_wodis_ref_rate" / "ntl_all_races_both_genders_wodis_ref_rate") as as_both_genders_wodis_ref_risk_ratio_all_races
	, ("as_both_genders_wodis_ref_rate" / "ntl_wh_both_genders_wodis_ref_rate") as as_both_genders_wodis_ref_risk_ratio_white
	, ("hi_m_wodis_ref_rate" / "ntl_all_races_m_wodis_ref_rate") as hi_m_wodis_ref_risk_ratio_all_races
	, ("hi_m_wodis_ref_rate" / "ntl_wh_m_wodis_ref_rate") as hi_m_wodis_ref_risk_ratio_white
	, ("hi_f_wodis_ref_rate" / "ntl_all_races_f_wodis_ref_rate") as hi_f_wodis_ref_risk_ratio_all_races
	, ("hi_f_wodis_ref_rate" / "ntl_wh_f_wodis_ref_rate") as hi_f_wodis_ref_risk_ratio_white
	, ("hi_both_genders_wodis_ref_rate" / "ntl_all_races_both_genders_wodis_ref_rate") as hi_both_genders_wodis_ref_risk_ratio_all_races
	, ("hi_both_genders_wodis_ref_rate" / "ntl_wh_both_genders_wodis_ref_rate") as hi_both_genders_wodis_ref_risk_ratio_white
	, ("hp_m_wodis_ref_rate" / "ntl_all_races_m_wodis_ref_rate") as hp_m_wodis_ref_risk_ratio_all_races
	, ("hp_m_wodis_ref_rate" / "ntl_wh_m_wodis_ref_rate") as hp_m_wodis_ref_risk_ratio_white
	, ("hp_f_wodis_ref_rate" / "ntl_all_races_f_wodis_ref_rate") as hp_f_wodis_ref_risk_ratio_all_races
	, ("hp_f_wodis_ref_rate" / "ntl_wh_f_wodis_ref_rate") as hp_f_wodis_ref_risk_ratio_white
	, ("hp_both_genders_wodis_ref_rate" / "ntl_all_races_both_genders_wodis_ref_rate") as hp_both_genders_wodis_ref_risk_ratio_all_races
	, ("hp_both_genders_wodis_ref_rate" / "ntl_wh_both_genders_wodis_ref_rate") as hp_both_genders_wodis_ref_risk_ratio_white
	, ("tr_m_wodis_ref_rate" / "ntl_all_races_m_wodis_ref_rate") as tr_m_wodis_ref_risk_ratio_all_races
	, ("tr_m_wodis_ref_rate" / "ntl_wh_m_wodis_ref_rate") as tr_m_wodis_ref_risk_ratio_white
	, ("tr_f_wodis_ref_rate" / "ntl_all_races_f_wodis_ref_rate") as tr_f_wodis_ref_risk_ratio_all_races
	, ("tr_f_wodis_ref_rate" / "ntl_wh_f_wodis_ref_rate") as tr_f_wodis_ref_risk_ratio_white
	, ("tr_both_genders_wodis_ref_rate" / "ntl_all_races_both_genders_wodis_ref_rate") as tr_both_genders_wodis_ref_risk_ratio_all_races
	, ("tr_both_genders_wodis_ref_rate" / "ntl_wh_both_genders_wodis_ref_rate") as tr_both_genders_wodis_ref_risk_ratio_white
	, ("bl_m_wdis_ref_idea_rate" / "ntl_all_races_m_wdis_ref_idea_rate") as bl_m_wdis_ref_idea_risk_ratio_all_races
	, ("bl_m_wdis_ref_idea_rate" / "ntl_wh_m_wdis_ref_idea_rate") as bl_m_wdis_ref_idea_risk_ratio_white
	, ("bl_f_wdis_ref_idea_rate" / "ntl_all_races_f_wdis_ref_idea_rate") as bl_f_wdis_ref_idea_risk_ratio_all_races
	, ("bl_f_wdis_ref_idea_rate" / "ntl_wh_f_wdis_ref_idea_rate") as bl_f_wdis_ref_idea_risk_ratio_white
	, ("bl_both_genders_wdis_ref_idea_rate" / "ntl_all_races_both_genders_wdis_ref_idea_rate") as bl_both_genders_wdis_ref_idea_risk_ratio_all_races
	, ("bl_both_genders_wdis_ref_idea_rate" / "ntl_wh_both_genders_wdis_ref_idea_rate") as bl_both_genders_wdis_ref_idea_risk_ratio_white
	, ("wh_m_wdis_ref_idea_rate" / "ntl_all_races_m_wdis_ref_idea_rate") as wh_m_wdis_ref_idea_risk_ratio_all_races
	, ("wh_m_wdis_ref_idea_rate" / "ntl_wh_m_wdis_ref_idea_rate") as wh_m_wdis_ref_idea_risk_ratio_white
	, ("wh_f_wdis_ref_idea_rate" / "ntl_all_races_f_wdis_ref_idea_rate") as wh_f_wdis_ref_idea_risk_ratio_all_races
	, ("wh_f_wdis_ref_idea_rate" / "ntl_wh_f_wdis_ref_idea_rate") as wh_f_wdis_ref_idea_risk_ratio_white
	, ("wh_both_genders_wdis_ref_idea_rate" / "ntl_all_races_both_genders_wdis_ref_idea_rate") as wh_both_genders_wdis_ref_idea_risk_ratio_all_races
	, ("wh_both_genders_wdis_ref_idea_rate" / "ntl_wh_both_genders_wdis_ref_idea_rate") as wh_both_genders_wdis_ref_idea_risk_ratio_white
	, ("am_m_wdis_ref_idea_rate" / "ntl_all_races_m_wdis_ref_idea_rate") as am_m_wdis_ref_idea_risk_ratio_all_races
	, ("am_m_wdis_ref_idea_rate" / "ntl_wh_m_wdis_ref_idea_rate") as am_m_wdis_ref_idea_risk_ratio_white
	, ("am_f_wdis_ref_idea_rate" / "ntl_all_races_f_wdis_ref_idea_rate") as am_f_wdis_ref_idea_risk_ratio_all_races
	, ("am_f_wdis_ref_idea_rate" / "ntl_wh_f_wdis_ref_idea_rate") as am_f_wdis_ref_idea_risk_ratio_white
	, ("am_both_genders_wdis_ref_idea_rate" / "ntl_all_races_both_genders_wdis_ref_idea_rate") as am_both_genders_wdis_ref_idea_risk_ratio_all_races
	, ("am_both_genders_wdis_ref_idea_rate" / "ntl_wh_both_genders_wdis_ref_idea_rate") as am_both_genders_wdis_ref_idea_risk_ratio_white
	, ("as_m_wdis_ref_idea_rate" / "ntl_all_races_m_wdis_ref_idea_rate") as as_m_wdis_ref_idea_risk_ratio_all_races
	, ("as_m_wdis_ref_idea_rate" / "ntl_wh_m_wdis_ref_idea_rate") as as_m_wdis_ref_idea_risk_ratio_white
	, ("as_f_wdis_ref_idea_rate" / "ntl_all_races_f_wdis_ref_idea_rate") as as_f_wdis_ref_idea_risk_ratio_all_races
	, ("as_f_wdis_ref_idea_rate" / "ntl_wh_f_wdis_ref_idea_rate") as as_f_wdis_ref_idea_risk_ratio_white
	, ("as_both_genders_wdis_ref_idea_rate" / "ntl_all_races_both_genders_wdis_ref_idea_rate") as as_both_genders_wdis_ref_idea_risk_ratio_all_races
	, ("as_both_genders_wdis_ref_idea_rate" / "ntl_wh_both_genders_wdis_ref_idea_rate") as as_both_genders_wdis_ref_idea_risk_ratio_white
	, ("hi_m_wdis_ref_idea_rate" / "ntl_all_races_m_wdis_ref_idea_rate") as hi_m_wdis_ref_idea_risk_ratio_all_races
	, ("hi_m_wdis_ref_idea_rate" / "ntl_wh_m_wdis_ref_idea_rate") as hi_m_wdis_ref_idea_risk_ratio_white
	, ("hi_f_wdis_ref_idea_rate" / "ntl_all_races_f_wdis_ref_idea_rate") as hi_f_wdis_ref_idea_risk_ratio_all_races
	, ("hi_f_wdis_ref_idea_rate" / "ntl_wh_f_wdis_ref_idea_rate") as hi_f_wdis_ref_idea_risk_ratio_white
	, ("hi_both_genders_wdis_ref_idea_rate" / "ntl_all_races_both_genders_wdis_ref_idea_rate") as hi_both_genders_wdis_ref_idea_risk_ratio_all_races
	, ("hi_both_genders_wdis_ref_idea_rate" / "ntl_wh_both_genders_wdis_ref_idea_rate") as hi_both_genders_wdis_ref_idea_risk_ratio_white
	, ("hp_m_wdis_ref_idea_rate" / "ntl_all_races_m_wdis_ref_idea_rate") as hp_m_wdis_ref_idea_risk_ratio_all_races
	, ("hp_m_wdis_ref_idea_rate" / "ntl_wh_m_wdis_ref_idea_rate") as hp_m_wdis_ref_idea_risk_ratio_white
	, ("hp_f_wdis_ref_idea_rate" / "ntl_all_races_f_wdis_ref_idea_rate") as hp_f_wdis_ref_idea_risk_ratio_all_races
	, ("hp_f_wdis_ref_idea_rate" / "ntl_wh_f_wdis_ref_idea_rate") as hp_f_wdis_ref_idea_risk_ratio_white
	, ("hp_both_genders_wdis_ref_idea_rate" / "ntl_all_races_both_genders_wdis_ref_idea_rate") as hp_both_genders_wdis_ref_idea_risk_ratio_all_races
	, ("hp_both_genders_wdis_ref_idea_rate" / "ntl_wh_both_genders_wdis_ref_idea_rate") as hp_both_genders_wdis_ref_idea_risk_ratio_white
	, ("tr_m_wdis_ref_idea_rate" / "ntl_all_races_m_wdis_ref_idea_rate") as tr_m_wdis_ref_idea_risk_ratio_all_races
	, ("tr_m_wdis_ref_idea_rate" / "ntl_wh_m_wdis_ref_idea_rate") as tr_m_wdis_ref_idea_risk_ratio_white
	, ("tr_f_wdis_ref_idea_rate" / "ntl_all_races_f_wdis_ref_idea_rate") as tr_f_wdis_ref_idea_risk_ratio_all_races
	, ("tr_f_wdis_ref_idea_rate" / "ntl_wh_f_wdis_ref_idea_rate") as tr_f_wdis_ref_idea_risk_ratio_white
	, ("tr_both_genders_wdis_ref_idea_rate" / "ntl_all_races_both_genders_wdis_ref_idea_rate") as tr_both_genders_wdis_ref_idea_risk_ratio_all_races
	, ("tr_both_genders_wdis_ref_idea_rate" / "ntl_wh_both_genders_wdis_ref_idea_rate") as tr_both_genders_wdis_ref_idea_risk_ratio_white
	, ("bl_m_wodis_arr_rate" / "ntl_all_races_m_wodis_arr_rate") as bl_m_wodis_arr_risk_ratio_all_races
	, ("bl_m_wodis_arr_rate" / "ntl_wh_m_wodis_arr_rate") as bl_m_wodis_arr_risk_ratio_white
	, ("bl_f_wodis_arr_rate" / "ntl_all_races_f_wodis_arr_rate") as bl_f_wodis_arr_risk_ratio_all_races
	, ("bl_f_wodis_arr_rate" / "ntl_wh_f_wodis_arr_rate") as bl_f_wodis_arr_risk_ratio_white
	, ("bl_both_genders_wodis_arr_rate" / "ntl_all_races_both_genders_wodis_arr_rate") as bl_both_genders_wodis_arr_risk_ratio_all_races
	, ("bl_both_genders_wodis_arr_rate" / "ntl_wh_both_genders_wodis_arr_rate") as bl_both_genders_wodis_arr_risk_ratio_white
	, ("wh_m_wodis_arr_rate" / "ntl_all_races_m_wodis_arr_rate") as wh_m_wodis_arr_risk_ratio_all_races
	, ("wh_m_wodis_arr_rate" / "ntl_wh_m_wodis_arr_rate") as wh_m_wodis_arr_risk_ratio_white
	, ("wh_f_wodis_arr_rate" / "ntl_all_races_f_wodis_arr_rate") as wh_f_wodis_arr_risk_ratio_all_races
	, ("wh_f_wodis_arr_rate" / "ntl_wh_f_wodis_arr_rate") as wh_f_wodis_arr_risk_ratio_white
	, ("wh_both_genders_wodis_arr_rate" / "ntl_all_races_both_genders_wodis_arr_rate") as wh_both_genders_wodis_arr_risk_ratio_all_races
	, ("wh_both_genders_wodis_arr_rate" / "ntl_wh_both_genders_wodis_arr_rate") as wh_both_genders_wodis_arr_risk_ratio_white
	, ("am_m_wodis_arr_rate" / "ntl_all_races_m_wodis_arr_rate") as am_m_wodis_arr_risk_ratio_all_races
	, ("am_m_wodis_arr_rate" / "ntl_wh_m_wodis_arr_rate") as am_m_wodis_arr_risk_ratio_white
	, ("am_f_wodis_arr_rate" / "ntl_all_races_f_wodis_arr_rate") as am_f_wodis_arr_risk_ratio_all_races
	, ("am_f_wodis_arr_rate" / "ntl_wh_f_wodis_arr_rate") as am_f_wodis_arr_risk_ratio_white
	, ("am_both_genders_wodis_arr_rate" / "ntl_all_races_both_genders_wodis_arr_rate") as am_both_genders_wodis_arr_risk_ratio_all_races
	, ("am_both_genders_wodis_arr_rate" / "ntl_wh_both_genders_wodis_arr_rate") as am_both_genders_wodis_arr_risk_ratio_white
	, ("as_m_wodis_arr_rate" / "ntl_all_races_m_wodis_arr_rate") as as_m_wodis_arr_risk_ratio_all_races
	, ("as_m_wodis_arr_rate" / "ntl_wh_m_wodis_arr_rate") as as_m_wodis_arr_risk_ratio_white
	, ("as_f_wodis_arr_rate" / "ntl_all_races_f_wodis_arr_rate") as as_f_wodis_arr_risk_ratio_all_races
	, ("as_f_wodis_arr_rate" / "ntl_wh_f_wodis_arr_rate") as as_f_wodis_arr_risk_ratio_white
	, ("as_both_genders_wodis_arr_rate" / "ntl_all_races_both_genders_wodis_arr_rate") as as_both_genders_wodis_arr_risk_ratio_all_races
	, ("as_both_genders_wodis_arr_rate" / "ntl_wh_both_genders_wodis_arr_rate") as as_both_genders_wodis_arr_risk_ratio_white
	, ("hi_m_wodis_arr_rate" / "ntl_all_races_m_wodis_arr_rate") as hi_m_wodis_arr_risk_ratio_all_races
	, ("hi_m_wodis_arr_rate" / "ntl_wh_m_wodis_arr_rate") as hi_m_wodis_arr_risk_ratio_white
	, ("hi_f_wodis_arr_rate" / "ntl_all_races_f_wodis_arr_rate") as hi_f_wodis_arr_risk_ratio_all_races
	, ("hi_f_wodis_arr_rate" / "ntl_wh_f_wodis_arr_rate") as hi_f_wodis_arr_risk_ratio_white
	, ("hi_both_genders_wodis_arr_rate" / "ntl_all_races_both_genders_wodis_arr_rate") as hi_both_genders_wodis_arr_risk_ratio_all_races
	, ("hi_both_genders_wodis_arr_rate" / "ntl_wh_both_genders_wodis_arr_rate") as hi_both_genders_wodis_arr_risk_ratio_white
	, ("hp_m_wodis_arr_rate" / "ntl_all_races_m_wodis_arr_rate") as hp_m_wodis_arr_risk_ratio_all_races
	, ("hp_m_wodis_arr_rate" / "ntl_wh_m_wodis_arr_rate") as hp_m_wodis_arr_risk_ratio_white
	, ("hp_f_wodis_arr_rate" / "ntl_all_races_f_wodis_arr_rate") as hp_f_wodis_arr_risk_ratio_all_races
	, ("hp_f_wodis_arr_rate" / "ntl_wh_f_wodis_arr_rate") as hp_f_wodis_arr_risk_ratio_white
	, ("hp_both_genders_wodis_arr_rate" / "ntl_all_races_both_genders_wodis_arr_rate") as hp_both_genders_wodis_arr_risk_ratio_all_races
	, ("hp_both_genders_wodis_arr_rate" / "ntl_wh_both_genders_wodis_arr_rate") as hp_both_genders_wodis_arr_risk_ratio_white
	, ("tr_m_wodis_arr_rate" / "ntl_all_races_m_wodis_arr_rate") as tr_m_wodis_arr_risk_ratio_all_races
	, ("tr_m_wodis_arr_rate" / "ntl_wh_m_wodis_arr_rate") as tr_m_wodis_arr_risk_ratio_white
	, ("tr_f_wodis_arr_rate" / "ntl_all_races_f_wodis_arr_rate") as tr_f_wodis_arr_risk_ratio_all_races
	, ("tr_f_wodis_arr_rate" / "ntl_wh_f_wodis_arr_rate") as tr_f_wodis_arr_risk_ratio_white
	, ("tr_both_genders_wodis_arr_rate" / "ntl_all_races_both_genders_wodis_arr_rate") as tr_both_genders_wodis_arr_risk_ratio_all_races
	, ("tr_both_genders_wodis_arr_rate" / "ntl_wh_both_genders_wodis_arr_rate") as tr_both_genders_wodis_arr_risk_ratio_white
	, ("bl_m_wdis_arr_idea_rate" / "ntl_all_races_m_wdis_arr_idea_rate") as bl_m_wdis_arr_idea_risk_ratio_all_races
	, ("bl_m_wdis_arr_idea_rate" / "ntl_wh_m_wdis_arr_idea_rate") as bl_m_wdis_arr_idea_risk_ratio_white
	, ("bl_f_wdis_arr_idea_rate" / "ntl_all_races_f_wdis_arr_idea_rate") as bl_f_wdis_arr_idea_risk_ratio_all_races
	, ("bl_f_wdis_arr_idea_rate" / "ntl_wh_f_wdis_arr_idea_rate") as bl_f_wdis_arr_idea_risk_ratio_white
	, ("bl_both_genders_wdis_arr_idea_rate" / "ntl_all_races_both_genders_wdis_arr_idea_rate") as bl_both_genders_wdis_arr_idea_risk_ratio_all_races
	, ("bl_both_genders_wdis_arr_idea_rate" / "ntl_wh_both_genders_wdis_arr_idea_rate") as bl_both_genders_wdis_arr_idea_risk_ratio_white
	, ("wh_m_wdis_arr_idea_rate" / "ntl_all_races_m_wdis_arr_idea_rate") as wh_m_wdis_arr_idea_risk_ratio_all_races
	, ("wh_m_wdis_arr_idea_rate" / "ntl_wh_m_wdis_arr_idea_rate") as wh_m_wdis_arr_idea_risk_ratio_white
	, ("wh_f_wdis_arr_idea_rate" / "ntl_all_races_f_wdis_arr_idea_rate") as wh_f_wdis_arr_idea_risk_ratio_all_races
	, ("wh_f_wdis_arr_idea_rate" / "ntl_wh_f_wdis_arr_idea_rate") as wh_f_wdis_arr_idea_risk_ratio_white
	, ("wh_both_genders_wdis_arr_idea_rate" / "ntl_all_races_both_genders_wdis_arr_idea_rate") as wh_both_genders_wdis_arr_idea_risk_ratio_all_races
	, ("wh_both_genders_wdis_arr_idea_rate" / "ntl_wh_both_genders_wdis_arr_idea_rate") as wh_both_genders_wdis_arr_idea_risk_ratio_white
	, ("am_m_wdis_arr_idea_rate" / "ntl_all_races_m_wdis_arr_idea_rate") as am_m_wdis_arr_idea_risk_ratio_all_races
	, ("am_m_wdis_arr_idea_rate" / "ntl_wh_m_wdis_arr_idea_rate") as am_m_wdis_arr_idea_risk_ratio_white
	, ("am_f_wdis_arr_idea_rate" / "ntl_all_races_f_wdis_arr_idea_rate") as am_f_wdis_arr_idea_risk_ratio_all_races
	, ("am_f_wdis_arr_idea_rate" / "ntl_wh_f_wdis_arr_idea_rate") as am_f_wdis_arr_idea_risk_ratio_white
	, ("am_both_genders_wdis_arr_idea_rate" / "ntl_all_races_both_genders_wdis_arr_idea_rate") as am_both_genders_wdis_arr_idea_risk_ratio_all_races
	, ("am_both_genders_wdis_arr_idea_rate" / "ntl_wh_both_genders_wdis_arr_idea_rate") as am_both_genders_wdis_arr_idea_risk_ratio_white
	, ("as_m_wdis_arr_idea_rate" / "ntl_all_races_m_wdis_arr_idea_rate") as as_m_wdis_arr_idea_risk_ratio_all_races
	, ("as_m_wdis_arr_idea_rate" / "ntl_wh_m_wdis_arr_idea_rate") as as_m_wdis_arr_idea_risk_ratio_white
	, ("as_f_wdis_arr_idea_rate" / "ntl_all_races_f_wdis_arr_idea_rate") as as_f_wdis_arr_idea_risk_ratio_all_races
	, ("as_f_wdis_arr_idea_rate" / "ntl_wh_f_wdis_arr_idea_rate") as as_f_wdis_arr_idea_risk_ratio_white
	, ("as_both_genders_wdis_arr_idea_rate" / "ntl_all_races_both_genders_wdis_arr_idea_rate") as as_both_genders_wdis_arr_idea_risk_ratio_all_races
	, ("as_both_genders_wdis_arr_idea_rate" / "ntl_wh_both_genders_wdis_arr_idea_rate") as as_both_genders_wdis_arr_idea_risk_ratio_white
	, ("hi_m_wdis_arr_idea_rate" / "ntl_all_races_m_wdis_arr_idea_rate") as hi_m_wdis_arr_idea_risk_ratio_all_races
	, ("hi_m_wdis_arr_idea_rate" / "ntl_wh_m_wdis_arr_idea_rate") as hi_m_wdis_arr_idea_risk_ratio_white
	, ("hi_f_wdis_arr_idea_rate" / "ntl_all_races_f_wdis_arr_idea_rate") as hi_f_wdis_arr_idea_risk_ratio_all_races
	, ("hi_f_wdis_arr_idea_rate" / "ntl_wh_f_wdis_arr_idea_rate") as hi_f_wdis_arr_idea_risk_ratio_white
	, ("hi_both_genders_wdis_arr_idea_rate" / "ntl_all_races_both_genders_wdis_arr_idea_rate") as hi_both_genders_wdis_arr_idea_risk_ratio_all_races
	, ("hi_both_genders_wdis_arr_idea_rate" / "ntl_wh_both_genders_wdis_arr_idea_rate") as hi_both_genders_wdis_arr_idea_risk_ratio_white
	, ("hp_m_wdis_arr_idea_rate" / "ntl_all_races_m_wdis_arr_idea_rate") as hp_m_wdis_arr_idea_risk_ratio_all_races
	, ("hp_m_wdis_arr_idea_rate" / "ntl_wh_m_wdis_arr_idea_rate") as hp_m_wdis_arr_idea_risk_ratio_white
	, ("hp_f_wdis_arr_idea_rate" / "ntl_all_races_f_wdis_arr_idea_rate") as hp_f_wdis_arr_idea_risk_ratio_all_races
	, ("hp_f_wdis_arr_idea_rate" / "ntl_wh_f_wdis_arr_idea_rate") as hp_f_wdis_arr_idea_risk_ratio_white
	, ("hp_both_genders_wdis_arr_idea_rate" / "ntl_all_races_both_genders_wdis_arr_idea_rate") as hp_both_genders_wdis_arr_idea_risk_ratio_all_races
	, ("hp_both_genders_wdis_arr_idea_rate" / "ntl_wh_both_genders_wdis_arr_idea_rate") as hp_both_genders_wdis_arr_idea_risk_ratio_white
	, ("tr_m_wdis_arr_idea_rate" / "ntl_all_races_m_wdis_arr_idea_rate") as tr_m_wdis_arr_idea_risk_ratio_all_races
	, ("tr_m_wdis_arr_idea_rate" / "ntl_wh_m_wdis_arr_idea_rate") as tr_m_wdis_arr_idea_risk_ratio_white
	, ("tr_f_wdis_arr_idea_rate" / "ntl_all_races_f_wdis_arr_idea_rate") as tr_f_wdis_arr_idea_risk_ratio_all_races
	, ("tr_f_wdis_arr_idea_rate" / "ntl_wh_f_wdis_arr_idea_rate") as tr_f_wdis_arr_idea_risk_ratio_white
	, ("tr_both_genders_wdis_arr_idea_rate" / "ntl_all_races_both_genders_wdis_arr_idea_rate") as tr_both_genders_wdis_arr_idea_risk_ratio_all_races
	, ("tr_both_genders_wdis_arr_idea_rate" / "ntl_wh_both_genders_wdis_arr_idea_rate") as tr_both_genders_wdis_arr_idea_risk_ratio_white
	, ("bl_m_wodis_suspension_rate" / "ntl_all_races_m_wodis_suspension_rate") as bl_m_wodis_suspension_risk_ratio_all_races
	, ("bl_m_wodis_suspension_rate" / "ntl_wh_m_wodis_suspension_rate") as bl_m_wodis_suspension_risk_ratio_white
	, ("bl_f_wodis_suspension_rate" / "ntl_all_races_f_wodis_suspension_rate") as bl_f_wodis_suspension_risk_ratio_all_races
	, ("bl_f_wodis_suspension_rate" / "ntl_wh_f_wodis_suspension_rate") as bl_f_wodis_suspension_risk_ratio_white
	, ("bl_both_genders_wodis_suspension_rate" / "ntl_all_races_both_genders_wodis_suspension_rate") as bl_both_genders_wodis_suspension_risk_ratio_all_races
	, ("bl_both_genders_wodis_suspension_rate" / "ntl_wh_both_genders_wodis_suspension_rate") as bl_both_genders_wodis_suspension_risk_ratio_white
	, ("wh_m_wodis_suspension_rate" / "ntl_all_races_m_wodis_suspension_rate") as wh_m_wodis_suspension_risk_ratio_all_races
	, ("wh_m_wodis_suspension_rate" / "ntl_wh_m_wodis_suspension_rate") as wh_m_wodis_suspension_risk_ratio_white
	, ("wh_f_wodis_suspension_rate" / "ntl_all_races_f_wodis_suspension_rate") as wh_f_wodis_suspension_risk_ratio_all_races
	, ("wh_f_wodis_suspension_rate" / "ntl_wh_f_wodis_suspension_rate") as wh_f_wodis_suspension_risk_ratio_white
	, ("wh_both_genders_wodis_suspension_rate" / "ntl_all_races_both_genders_wodis_suspension_rate") as wh_both_genders_wodis_suspension_risk_ratio_all_races
	, ("wh_both_genders_wodis_suspension_rate" / "ntl_wh_both_genders_wodis_suspension_rate") as wh_both_genders_wodis_suspension_risk_ratio_white
	, ("am_m_wodis_suspension_rate" / "ntl_all_races_m_wodis_suspension_rate") as am_m_wodis_suspension_risk_ratio_all_races
	, ("am_m_wodis_suspension_rate" / "ntl_wh_m_wodis_suspension_rate") as am_m_wodis_suspension_risk_ratio_white
	, ("am_f_wodis_suspension_rate" / "ntl_all_races_f_wodis_suspension_rate") as am_f_wodis_suspension_risk_ratio_all_races
	, ("am_f_wodis_suspension_rate" / "ntl_wh_f_wodis_suspension_rate") as am_f_wodis_suspension_risk_ratio_white
	, ("am_both_genders_wodis_suspension_rate" / "ntl_all_races_both_genders_wodis_suspension_rate") as am_both_genders_wodis_suspension_risk_ratio_all_races
	, ("am_both_genders_wodis_suspension_rate" / "ntl_wh_both_genders_wodis_suspension_rate") as am_both_genders_wodis_suspension_risk_ratio_white
	, ("as_m_wodis_suspension_rate" / "ntl_all_races_m_wodis_suspension_rate") as as_m_wodis_suspension_risk_ratio_all_races
	, ("as_m_wodis_suspension_rate" / "ntl_wh_m_wodis_suspension_rate") as as_m_wodis_suspension_risk_ratio_white
	, ("as_f_wodis_suspension_rate" / "ntl_all_races_f_wodis_suspension_rate") as as_f_wodis_suspension_risk_ratio_all_races
	, ("as_f_wodis_suspension_rate" / "ntl_wh_f_wodis_suspension_rate") as as_f_wodis_suspension_risk_ratio_white
	, ("as_both_genders_wodis_suspension_rate" / "ntl_all_races_both_genders_wodis_suspension_rate") as as_both_genders_wodis_suspension_risk_ratio_all_races
	, ("as_both_genders_wodis_suspension_rate" / "ntl_wh_both_genders_wodis_suspension_rate") as as_both_genders_wodis_suspension_risk_ratio_white
	, ("hi_m_wodis_suspension_rate" / "ntl_all_races_m_wodis_suspension_rate") as hi_m_wodis_suspension_risk_ratio_all_races
	, ("hi_m_wodis_suspension_rate" / "ntl_wh_m_wodis_suspension_rate") as hi_m_wodis_suspension_risk_ratio_white
	, ("hi_f_wodis_suspension_rate" / "ntl_all_races_f_wodis_suspension_rate") as hi_f_wodis_suspension_risk_ratio_all_races
	, ("hi_f_wodis_suspension_rate" / "ntl_wh_f_wodis_suspension_rate") as hi_f_wodis_suspension_risk_ratio_white
	, ("hi_both_genders_wodis_suspension_rate" / "ntl_all_races_both_genders_wodis_suspension_rate") as hi_both_genders_wodis_suspension_risk_ratio_all_races
	, ("hi_both_genders_wodis_suspension_rate" / "ntl_wh_both_genders_wodis_suspension_rate") as hi_both_genders_wodis_suspension_risk_ratio_white
	, ("hp_m_wodis_suspension_rate" / "ntl_all_races_m_wodis_suspension_rate") as hp_m_wodis_suspension_risk_ratio_all_races
	, ("hp_m_wodis_suspension_rate" / "ntl_wh_m_wodis_suspension_rate") as hp_m_wodis_suspension_risk_ratio_white
	, ("hp_f_wodis_suspension_rate" / "ntl_all_races_f_wodis_suspension_rate") as hp_f_wodis_suspension_risk_ratio_all_races
	, ("hp_f_wodis_suspension_rate" / "ntl_wh_f_wodis_suspension_rate") as hp_f_wodis_suspension_risk_ratio_white
	, ("hp_both_genders_wodis_suspension_rate" / "ntl_all_races_both_genders_wodis_suspension_rate") as hp_both_genders_wodis_suspension_risk_ratio_all_races
	, ("hp_both_genders_wodis_suspension_rate" / "ntl_wh_both_genders_wodis_suspension_rate") as hp_both_genders_wodis_suspension_risk_ratio_white
	, ("tr_m_wodis_suspension_rate" / "ntl_all_races_m_wodis_suspension_rate") as tr_m_wodis_suspension_risk_ratio_all_races
	, ("tr_m_wodis_suspension_rate" / "ntl_wh_m_wodis_suspension_rate") as tr_m_wodis_suspension_risk_ratio_white
	, ("tr_f_wodis_suspension_rate" / "ntl_all_races_f_wodis_suspension_rate") as tr_f_wodis_suspension_risk_ratio_all_races
	, ("tr_f_wodis_suspension_rate" / "ntl_wh_f_wodis_suspension_rate") as tr_f_wodis_suspension_risk_ratio_white
	, ("tr_both_genders_wodis_suspension_rate" / "ntl_all_races_both_genders_wodis_suspension_rate") as tr_both_genders_wodis_suspension_risk_ratio_all_races
	, ("tr_both_genders_wodis_suspension_rate" / "ntl_wh_both_genders_wodis_suspension_rate") as tr_both_genders_wodis_suspension_risk_ratio_white
	, ("bl_m_wdis_suspension_rate" / "ntl_all_races_m_wdis_suspension_rate") as bl_m_wdis_suspension_risk_ratio_all_races
	, ("bl_m_wdis_suspension_rate" / "ntl_wh_m_wdis_suspension_rate") as bl_m_wdis_suspension_risk_ratio_white
	, ("bl_f_wdis_suspension_rate" / "ntl_all_races_f_wdis_suspension_rate") as bl_f_wdis_suspension_risk_ratio_all_races
	, ("bl_f_wdis_suspension_rate" / "ntl_wh_f_wdis_suspension_rate") as bl_f_wdis_suspension_risk_ratio_white
	, ("bl_both_genders_wdis_suspension_rate" / "ntl_all_races_both_genders_wdis_suspension_rate") as bl_both_genders_wdis_suspension_risk_ratio_all_races
	, ("bl_both_genders_wdis_suspension_rate" / "ntl_wh_both_genders_wdis_suspension_rate") as bl_both_genders_wdis_suspension_risk_ratio_white
	, ("wh_m_wdis_suspension_rate" / "ntl_all_races_m_wdis_suspension_rate") as wh_m_wdis_suspension_risk_ratio_all_races
	, ("wh_m_wdis_suspension_rate" / "ntl_wh_m_wdis_suspension_rate") as wh_m_wdis_suspension_risk_ratio_white
	, ("wh_f_wdis_suspension_rate" / "ntl_all_races_f_wdis_suspension_rate") as wh_f_wdis_suspension_risk_ratio_all_races
	, ("wh_f_wdis_suspension_rate" / "ntl_wh_f_wdis_suspension_rate") as wh_f_wdis_suspension_risk_ratio_white
	, ("wh_both_genders_wdis_suspension_rate" / "ntl_all_races_both_genders_wdis_suspension_rate") as wh_both_genders_wdis_suspension_risk_ratio_all_races
	, ("wh_both_genders_wdis_suspension_rate" / "ntl_wh_both_genders_wdis_suspension_rate") as wh_both_genders_wdis_suspension_risk_ratio_white
	, ("am_m_wdis_suspension_rate" / "ntl_all_races_m_wdis_suspension_rate") as am_m_wdis_suspension_risk_ratio_all_races
	, ("am_m_wdis_suspension_rate" / "ntl_wh_m_wdis_suspension_rate") as am_m_wdis_suspension_risk_ratio_white
	, ("am_f_wdis_suspension_rate" / "ntl_all_races_f_wdis_suspension_rate") as am_f_wdis_suspension_risk_ratio_all_races
	, ("am_f_wdis_suspension_rate" / "ntl_wh_f_wdis_suspension_rate") as am_f_wdis_suspension_risk_ratio_white
	, ("am_both_genders_wdis_suspension_rate" / "ntl_all_races_both_genders_wdis_suspension_rate") as am_both_genders_wdis_suspension_risk_ratio_all_races
	, ("am_both_genders_wdis_suspension_rate" / "ntl_wh_both_genders_wdis_suspension_rate") as am_both_genders_wdis_suspension_risk_ratio_white
	, ("as_m_wdis_suspension_rate" / "ntl_all_races_m_wdis_suspension_rate") as as_m_wdis_suspension_risk_ratio_all_races
	, ("as_m_wdis_suspension_rate" / "ntl_wh_m_wdis_suspension_rate") as as_m_wdis_suspension_risk_ratio_white
	, ("as_f_wdis_suspension_rate" / "ntl_all_races_f_wdis_suspension_rate") as as_f_wdis_suspension_risk_ratio_all_races
	, ("as_f_wdis_suspension_rate" / "ntl_wh_f_wdis_suspension_rate") as as_f_wdis_suspension_risk_ratio_white
	, ("as_both_genders_wdis_suspension_rate" / "ntl_all_races_both_genders_wdis_suspension_rate") as as_both_genders_wdis_suspension_risk_ratio_all_races
	, ("as_both_genders_wdis_suspension_rate" / "ntl_wh_both_genders_wdis_suspension_rate") as as_both_genders_wdis_suspension_risk_ratio_white
	, ("hi_m_wdis_suspension_rate" / "ntl_all_races_m_wdis_suspension_rate") as hi_m_wdis_suspension_risk_ratio_all_races
	, ("hi_m_wdis_suspension_rate" / "ntl_wh_m_wdis_suspension_rate") as hi_m_wdis_suspension_risk_ratio_white
	, ("hi_f_wdis_suspension_rate" / "ntl_all_races_f_wdis_suspension_rate") as hi_f_wdis_suspension_risk_ratio_all_races
	, ("hi_f_wdis_suspension_rate" / "ntl_wh_f_wdis_suspension_rate") as hi_f_wdis_suspension_risk_ratio_white
	, ("hi_both_genders_wdis_suspension_rate" / "ntl_all_races_both_genders_wdis_suspension_rate") as hi_both_genders_wdis_suspension_risk_ratio_all_races
	, ("hi_both_genders_wdis_suspension_rate" / "ntl_wh_both_genders_wdis_suspension_rate") as hi_both_genders_wdis_suspension_risk_ratio_white
	, ("hp_m_wdis_suspension_rate" / "ntl_all_races_m_wdis_suspension_rate") as hp_m_wdis_suspension_risk_ratio_all_races
	, ("hp_m_wdis_suspension_rate" / "ntl_wh_m_wdis_suspension_rate") as hp_m_wdis_suspension_risk_ratio_white
	, ("hp_f_wdis_suspension_rate" / "ntl_all_races_f_wdis_suspension_rate") as hp_f_wdis_suspension_risk_ratio_all_races
	, ("hp_f_wdis_suspension_rate" / "ntl_wh_f_wdis_suspension_rate") as hp_f_wdis_suspension_risk_ratio_white
	, ("hp_both_genders_wdis_suspension_rate" / "ntl_all_races_both_genders_wdis_suspension_rate") as hp_both_genders_wdis_suspension_risk_ratio_all_races
	, ("hp_both_genders_wdis_suspension_rate" / "ntl_wh_both_genders_wdis_suspension_rate") as hp_both_genders_wdis_suspension_risk_ratio_white
	, ("tr_m_wdis_suspension_rate" / "ntl_all_races_m_wdis_suspension_rate") as tr_m_wdis_suspension_risk_ratio_all_races
	, ("tr_m_wdis_suspension_rate" / "ntl_wh_m_wdis_suspension_rate") as tr_m_wdis_suspension_risk_ratio_white
	, ("tr_f_wdis_suspension_rate" / "ntl_all_races_f_wdis_suspension_rate") as tr_f_wdis_suspension_risk_ratio_all_races
	, ("tr_f_wdis_suspension_rate" / "ntl_wh_f_wdis_suspension_rate") as tr_f_wdis_suspension_risk_ratio_white
	, ("tr_both_genders_wdis_suspension_rate" / "ntl_all_races_both_genders_wdis_suspension_rate") as tr_both_genders_wdis_suspension_risk_ratio_all_races
	, ("tr_both_genders_wdis_suspension_rate" / "ntl_wh_both_genders_wdis_suspension_rate") as tr_both_genders_wdis_suspension_risk_ratio_white
	, ("ntl_all_races_m_gtenr_rate" / nullif("bl_m_gtenr_rate", 0)) as all_races_ratio_bl_m_gtenr_risk
	, ("ntl_wh_m_gtenr_rate" / nullif("bl_m_gtenr_rate", 0)) as white_ratio_bl_m_gtenr_risk
	, ("ntl_all_races_f_gtenr_rate" / nullif("bl_f_gtenr_rate", 0)) as all_races_ratio_bl_f_gtenr_risk
	, ("ntl_wh_f_gtenr_rate" / nullif("bl_f_gtenr_rate", 0)) as white_ratio_bl_f_gtenr_risk
	, ("ntl_all_races_both_genders_gtenr_rate" / nullif("bl_both_genders_gtenr_rate", 0)) as all_races_ratio_bl_both_genders_gtenr_risk
	, ("ntl_wh_both_genders_gtenr_rate" / nullif("bl_both_genders_gtenr_rate", 0)) as white_ratio_bl_both_genders_gtenr_risk
	, ("ntl_all_races_m_gtenr_rate" / nullif("wh_m_gtenr_rate", 0)) as all_races_ratio_wh_m_gtenr_risk
	, ("ntl_wh_m_gtenr_rate" / nullif("wh_m_gtenr_rate", 0)) as white_ratio_wh_m_gtenr_risk
	, ("ntl_all_races_f_gtenr_rate" / nullif("wh_f_gtenr_rate", 0)) as all_races_ratio_wh_f_gtenr_risk
	, ("ntl_wh_f_gtenr_rate" / nullif("wh_f_gtenr_rate", 0)) as white_ratio_wh_f_gtenr_risk
	, ("ntl_all_races_both_genders_gtenr_rate" / nullif("wh_both_genders_gtenr_rate", 0)) as all_races_ratio_wh_both_genders_gtenr_risk
	, ("ntl_wh_both_genders_gtenr_rate" / nullif("wh_both_genders_gtenr_rate", 0)) as white_ratio_wh_both_genders_gtenr_risk
	, ("ntl_all_races_m_gtenr_rate" / nullif("am_m_gtenr_rate", 0)) as all_races_ratio_am_m_gtenr_risk
	, ("ntl_wh_m_gtenr_rate" / nullif("am_m_gtenr_rate", 0)) as white_ratio_am_m_gtenr_risk
	, ("ntl_all_races_f_gtenr_rate" / nullif("am_f_gtenr_rate", 0)) as all_races_ratio_am_f_gtenr_risk
	, ("ntl_wh_f_gtenr_rate" / nullif("am_f_gtenr_rate", 0)) as white_ratio_am_f_gtenr_risk
	, ("ntl_all_races_both_genders_gtenr_rate" / nullif("am_both_genders_gtenr_rate", 0)) as all_races_ratio_am_both_genders_gtenr_risk
	, ("ntl_wh_both_genders_gtenr_rate" / nullif("am_both_genders_gtenr_rate", 0)) as white_ratio_am_both_genders_gtenr_risk
	, ("ntl_all_races_m_gtenr_rate" / nullif("as_m_gtenr_rate", 0)) as all_races_ratio_as_m_gtenr_risk
	, ("ntl_wh_m_gtenr_rate" / nullif("as_m_gtenr_rate", 0)) as white_ratio_as_m_gtenr_risk
	, ("ntl_all_races_f_gtenr_rate" / nullif("as_f_gtenr_rate", 0)) as all_races_ratio_as_f_gtenr_risk
	, ("ntl_wh_f_gtenr_rate" / nullif("as_f_gtenr_rate", 0)) as white_ratio_as_f_gtenr_risk
	, ("ntl_all_races_both_genders_gtenr_rate" / nullif("as_both_genders_gtenr_rate", 0)) as all_races_ratio_as_both_genders_gtenr_risk
	, ("ntl_wh_both_genders_gtenr_rate" / nullif("as_both_genders_gtenr_rate", 0)) as white_ratio_as_both_genders_gtenr_risk
	, ("ntl_all_races_m_gtenr_rate" / nullif("hi_m_gtenr_rate", 0)) as all_races_ratio_hi_m_gtenr_risk
	, ("ntl_wh_m_gtenr_rate" / nullif("hi_m_gtenr_rate", 0)) as white_ratio_hi_m_gtenr_risk
	, ("ntl_all_races_f_gtenr_rate" / nullif("hi_f_gtenr_rate", 0)) as all_races_ratio_hi_f_gtenr_risk
	, ("ntl_wh_f_gtenr_rate" / nullif("hi_f_gtenr_rate", 0)) as white_ratio_hi_f_gtenr_risk
	, ("ntl_all_races_both_genders_gtenr_rate" / nullif("hi_both_genders_gtenr_rate", 0)) as all_races_ratio_hi_both_genders_gtenr_risk
	, ("ntl_wh_both_genders_gtenr_rate" / nullif("hi_both_genders_gtenr_rate", 0)) as white_ratio_hi_both_genders_gtenr_risk
	, ("ntl_all_races_m_gtenr_rate" / nullif("hp_m_gtenr_rate", 0)) as all_races_ratio_hp_m_gtenr_risk
	, ("ntl_wh_m_gtenr_rate" / nullif("hp_m_gtenr_rate", 0)) as white_ratio_hp_m_gtenr_risk
	, ("ntl_all_races_f_gtenr_rate" / nullif("hp_f_gtenr_rate", 0)) as all_races_ratio_hp_f_gtenr_risk
	, ("ntl_wh_f_gtenr_rate" / nullif("hp_f_gtenr_rate", 0)) as white_ratio_hp_f_gtenr_risk
	, ("ntl_all_races_both_genders_gtenr_rate" / nullif("hp_both_genders_gtenr_rate", 0)) as all_races_ratio_hp_both_genders_gtenr_risk
	, ("ntl_wh_both_genders_gtenr_rate" / nullif("hp_both_genders_gtenr_rate", 0)) as white_ratio_hp_both_genders_gtenr_risk
	, ("ntl_all_races_m_gtenr_rate" / nullif("tr_m_gtenr_rate", 0)) as all_races_ratio_tr_m_gtenr_risk
	, ("ntl_wh_m_gtenr_rate" / nullif("tr_m_gtenr_rate", 0)) as white_ratio_tr_m_gtenr_risk
	, ("ntl_all_races_f_gtenr_rate" / nullif("tr_f_gtenr_rate", 0)) as all_races_ratio_tr_f_gtenr_risk
	, ("ntl_wh_f_gtenr_rate" / nullif("tr_f_gtenr_rate", 0)) as white_ratio_tr_f_gtenr_risk
	, ("ntl_all_races_both_genders_gtenr_rate" / nullif("tr_both_genders_gtenr_rate", 0)) as all_races_ratio_tr_both_genders_gtenr_risk
	, ("ntl_wh_both_genders_gtenr_rate" / nullif("tr_both_genders_gtenr_rate", 0)) as white_ratio_tr_both_genders_gtenr_risk
	, ("ntl_all_races_m_apenr_rate" / nullif("bl_m_apenr_rate", 0)) as all_races_ratio_bl_m_apenr_risk
	, ("ntl_wh_m_apenr_rate" / nullif("bl_m_apenr_rate", 0)) as white_ratio_bl_m_apenr_risk
	, ("ntl_all_races_f_apenr_rate" / nullif("bl_f_apenr_rate", 0)) as all_races_ratio_bl_f_apenr_risk
	, ("ntl_wh_f_apenr_rate" / nullif("bl_f_apenr_rate", 0)) as white_ratio_bl_f_apenr_risk
	, ("ntl_all_races_both_genders_apenr_rate" / nullif("bl_both_genders_apenr_rate", 0)) as all_races_ratio_bl_both_genders_apenr_risk
	, ("ntl_wh_both_genders_apenr_rate" / nullif("bl_both_genders_apenr_rate", 0)) as white_ratio_bl_both_genders_apenr_risk
	, ("ntl_all_races_m_apenr_rate" / nullif("wh_m_apenr_rate", 0)) as all_races_ratio_wh_m_apenr_risk
	, ("ntl_wh_m_apenr_rate" / nullif("wh_m_apenr_rate", 0)) as white_ratio_wh_m_apenr_risk
	, ("ntl_all_races_f_apenr_rate" / nullif("wh_f_apenr_rate", 0)) as all_races_ratio_wh_f_apenr_risk
	, ("ntl_wh_f_apenr_rate" / nullif("wh_f_apenr_rate", 0)) as white_ratio_wh_f_apenr_risk
	, ("ntl_all_races_both_genders_apenr_rate" / nullif("wh_both_genders_apenr_rate", 0)) as all_races_ratio_wh_both_genders_apenr_risk
	, ("ntl_wh_both_genders_apenr_rate" / nullif("wh_both_genders_apenr_rate", 0)) as white_ratio_wh_both_genders_apenr_risk
	, ("ntl_all_races_m_apenr_rate" / nullif("am_m_apenr_rate", 0)) as all_races_ratio_am_m_apenr_risk
	, ("ntl_wh_m_apenr_rate" / nullif("am_m_apenr_rate", 0)) as white_ratio_am_m_apenr_risk
	, ("ntl_all_races_f_apenr_rate" / nullif("am_f_apenr_rate", 0)) as all_races_ratio_am_f_apenr_risk
	, ("ntl_wh_f_apenr_rate" / nullif("am_f_apenr_rate", 0)) as white_ratio_am_f_apenr_risk
	, ("ntl_all_races_both_genders_apenr_rate" / nullif("am_both_genders_apenr_rate", 0)) as all_races_ratio_am_both_genders_apenr_risk
	, ("ntl_wh_both_genders_apenr_rate" / nullif("am_both_genders_apenr_rate", 0)) as white_ratio_am_both_genders_apenr_risk
	, ("ntl_all_races_m_apenr_rate" / nullif("as_m_apenr_rate", 0)) as all_races_ratio_as_m_apenr_risk
	, ("ntl_wh_m_apenr_rate" / nullif("as_m_apenr_rate", 0)) as white_ratio_as_m_apenr_risk
	, ("ntl_all_races_f_apenr_rate" / nullif("as_f_apenr_rate", 0)) as all_races_ratio_as_f_apenr_risk
	, ("ntl_wh_f_apenr_rate" / nullif("as_f_apenr_rate", 0)) as white_ratio_as_f_apenr_risk
	, ("ntl_all_races_both_genders_apenr_rate" / nullif("as_both_genders_apenr_rate", 0)) as all_races_ratio_as_both_genders_apenr_risk
	, ("ntl_wh_both_genders_apenr_rate" / nullif("as_both_genders_apenr_rate", 0)) as white_ratio_as_both_genders_apenr_risk
	, ("ntl_all_races_m_apenr_rate" / nullif("hi_m_apenr_rate", 0)) as all_races_ratio_hi_m_apenr_risk
	, ("ntl_wh_m_apenr_rate" / nullif("hi_m_apenr_rate", 0)) as white_ratio_hi_m_apenr_risk
	, ("ntl_all_races_f_apenr_rate" / nullif("hi_f_apenr_rate", 0)) as all_races_ratio_hi_f_apenr_risk
	, ("ntl_wh_f_apenr_rate" / nullif("hi_f_apenr_rate", 0)) as white_ratio_hi_f_apenr_risk
	, ("ntl_all_races_both_genders_apenr_rate" / nullif("hi_both_genders_apenr_rate", 0)) as all_races_ratio_hi_both_genders_apenr_risk
	, ("ntl_wh_both_genders_apenr_rate" / nullif("hi_both_genders_apenr_rate", 0)) as white_ratio_hi_both_genders_apenr_risk
	, ("ntl_all_races_m_apenr_rate" / nullif("hp_m_apenr_rate", 0)) as all_races_ratio_hp_m_apenr_risk
	, ("ntl_wh_m_apenr_rate" / nullif("hp_m_apenr_rate", 0)) as white_ratio_hp_m_apenr_risk
	, ("ntl_all_races_f_apenr_rate" / nullif("hp_f_apenr_rate", 0)) as all_races_ratio_hp_f_apenr_risk
	, ("ntl_wh_f_apenr_rate" / nullif("hp_f_apenr_rate", 0)) as white_ratio_hp_f_apenr_risk
	, ("ntl_all_races_both_genders_apenr_rate" / nullif("hp_both_genders_apenr_rate", 0)) as all_races_ratio_hp_both_genders_apenr_risk
	, ("ntl_wh_both_genders_apenr_rate" / nullif("hp_both_genders_apenr_rate", 0)) as white_ratio_hp_both_genders_apenr_risk
	, ("ntl_all_races_m_apenr_rate" / nullif("tr_m_apenr_rate", 0)) as all_races_ratio_tr_m_apenr_risk
	, ("ntl_wh_m_apenr_rate" / nullif("tr_m_apenr_rate", 0)) as white_ratio_tr_m_apenr_risk
	, ("ntl_all_races_f_apenr_rate" / nullif("tr_f_apenr_rate", 0)) as all_races_ratio_tr_f_apenr_risk
	, ("ntl_wh_f_apenr_rate" / nullif("tr_f_apenr_rate", 0)) as white_ratio_tr_f_apenr_risk
	, ("ntl_all_races_both_genders_apenr_rate" / nullif("tr_both_genders_apenr_rate", 0)) as all_races_ratio_tr_both_genders_apenr_risk
	, ("ntl_wh_both_genders_apenr_rate" / nullif("tr_both_genders_apenr_rate", 0)) as white_ratio_tr_both_genders_apenr_risk
FROM school_rates
LEFT JOIN
national_rates
ON school_rates."YEAR" = national_rates."YEAR"
);
