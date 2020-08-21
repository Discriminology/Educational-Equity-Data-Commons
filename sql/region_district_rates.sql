select "LEA_NAME", "LEA_STATE_NAME", "YEAR", "LEAID",
-- GT Enrollment rate
"white_gt_enrollment" / NULLIF("white_enrollment", 0) as white_gt_enrollment_rate,
"black_gt_enrollment" / NULLIF("black_enrollment", 0) as black_gt_enrollment_rate,
"hispanic_gt_enrollment" / NULLIF("hispanic_enrollment", 0) as hispanic_gt_enrollment_rate,
"asian_gt_enrollment" / NULLIF("asian_enrollment", 0) as asian_gt_enrollment_rate,
"hawaiian_pacific_islander_gt_enrollment" / NULLIF("hawaiian_pacific_islander_enrollment", 0) as hawaiian_pacific_islander_gt_enrollment_rate,
"native_american_gt_enrollment" / NULLIF("native_american_enrollment", 0) as native_american_gt_enrollment_rate,
"two_or_more_races_gt_enrollment" / NULLIF("two_or_more_races_enrollment", 0) as two_or_more_races_gt_enrollment_rate,

-- AP enrollment rate
"white_ap_enrollment" / NULLIF("white_enrollment", 0) as white_ap_enrollment_rate,
"black_ap_enrollment" / NULLIF("black_enrollment", 0) as black_ap_enrollment_rate,
"hispanic_ap_enrollment" / NULLIF("hispanic_enrollment", 0) as hispanic_ap_enrollment_rate,
"asian_ap_enrollment" / NULLIF("asian_enrollment", 0) as asian_ap_enrollment_rate,
"hawaiian_pacific_islander_ap_enrollment" / NULLIF("hawaiian_pacific_islander_enrollment", 0) as hawaiian_pacific_islander_ap_enrollment_rate,
"native_american_ap_enrollment" / NULLIF("native_american_enrollment", 0) as native_american_ap_enrollment_rate,
"two_or_more_races_ap_enrollment" / NULLIF("two_or_more_races_enrollment", 0) as two_or_more_races_ap_enrollment_rate,

-- Suspension rate
"white_oos_suspensions" / NULLIF("white_enrollment", 0) as white_out_of_school_suspension_rate,
"black_oos_suspensions" / NULLIF("black_enrollment", 0) as black_out_of_school_suspension_rate,
"hispanic_oos_suspensions" / NULLIF("hispanic_enrollment", 0) as hispanic_out_of_school_suspension_rate,
"asian_oos_suspensions" / NULLIF("asian_enrollment", 0) as asian_out_of_school_suspension_rate,
"hawaiian_pacific_islander_oos_suspensions" / NULLIF("hawaiian_pacific_islander_enrollment", 0) as hawaiian_pacific_islander_out_of_school_suspension_rate,
"native_american_oos_suspensions" / NULLIF("native_american_enrollment", 0) as native_american_out_of_school_suspension_rate,
"two_or_more_races_oos_suspensions" / NULLIF("two_or_more_races_enrollment", 0) as two_or_more_races_out_of_school_suspension_rate,

-- Law enforcement interaction rate
"white_le_referrals_arrests" / NULLIF("white_enrollment", 0) as white_le_referrals_arrests_rate,
"black_le_referrals_arrests" / NULLIF("black_enrollment", 0) as black_le_referrals_arrests_rate,
"hispanic_le_referrals_arrests" / NULLIF("hispanic_enrollment", 0) as hispanic_le_referrals_arrests_rate,
"asian_le_referrals_arrests" / NULLIF("asian_enrollment", 0) as asian_le_referrals_arrests_rate,
"hawaiian_pacific_islander_le_referrals_arrests" / NULLIF("hawaiian_pacific_islander_enrollment", 0) as hawaiian_pacific_islander_le_referrals_arrests_rate,
"native_american_le_referrals_arrests" / NULLIF("native_american_enrollment", 0) as native_american_le_referrals_arrests_rate,
"two_or_more_races_le_referrals_arrests" / NULLIF("two_or_more_races_enrollment", 0) as two_or_more_races_le_referrals_arrests_rate


from district_dashboard
where "LEA_STATE_NAME" in ('CONNECTICUT', 'MAINE', 'MASSACHUSETTS', 'NEW HAMPSHIRE', 'RHODE ISLAND',  'VERMONT',
'NEW JERSEY', 'NEW YORK', 'PENNSYLVANIA');


