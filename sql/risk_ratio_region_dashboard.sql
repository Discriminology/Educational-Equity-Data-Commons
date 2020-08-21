select dd."LEA_NAME",
dd."LEA_STATE_NAME",
dd."YEAR",
-- AP enrollment
nwr.national_white_ap_enrollment_rate / NULLIF(dd.white_ap_enrollment, 0) as white_AP_enrollment_ratio,
nwr.national_white_ap_enrollment_rate / NULLIF(dd.black_ap_enrollment, 0) as black_AP_enrollment_ratio,
nwr.national_white_ap_enrollment_rate / NULLIF(dd.asian_ap_enrollment, 0) as asian_AP_enrollment_ratio,
nwr.national_white_ap_enrollment_rate / NULLIF(dd.native_american_ap_enrollment, 0) as native_american_AP_enrollment_ratio,
nwr.national_white_ap_enrollment_rate / NULLIF(dd.hawaiian_pacific_islander_ap_enrollment, 0) as hawaiian_pacific_islander_AP_enrollment_ratio,
nwr.national_white_ap_enrollment_rate / NULLIF(dd.two_or_more_races_ap_enrollment, 0) as two_or_more_races_AP_enrollment_ratio,
nwr.national_white_ap_enrollment_rate / NULLIF(dd.hispanic_ap_enrollment, 0) as hispanic_AP_enrollment_ratio,


-- GT Enrollment
nwr.national_white_gt_enrollment_rate / NULLIF(dd.white_gt_enrollment, 0) as white_gt_enrollment_ratio,
nwr.national_white_gt_enrollment_rate / NULLIF(dd.black_gt_enrollment, 0) as black_gt_enrollment_ratio,
nwr.national_white_gt_enrollment_rate / NULLIF(dd.asian_gt_enrollment, 0) as asian_gt_enrollment_ratio,
nwr.national_white_gt_enrollment_rate / NULLIF(dd.native_american_gt_enrollment, 0) as native_american_gt_enrollment_ratio,
nwr.national_white_gt_enrollment_rate / NULLIF(dd.hawaiian_pacific_islander_gt_enrollment, 0) as hawaiian_pacific_islander_gt_enrollment_ratio,
nwr.national_white_gt_enrollment_rate / NULLIF(dd.two_or_more_races_gt_enrollment, 0) as two_or_more_races_gt_enrollment_ratio,
nwr.national_white_gt_enrollment_rate / NULLIF(dd.hispanic_gt_enrollment, 0) as hispanic_gt_enrollment_ratio,

-- Suspensions
dd.hispanic_oos_suspensions / NULLIF(nwr.national_white_suspension_rate, 0) as hispanic_suspension_risk_ratio,
dd.black_oos_suspensions / NULLIF(nwr.national_white_suspension_rate, 0) as black_suspension_risk_ratio,
dd.asian_oos_suspensions / NULLIF(nwr.national_white_suspension_rate, 0) as asian_suspension_risk_ratio,
dd.native_american_oos_suspensions / NULLIF(nwr.national_white_suspension_rate, 0) as native_american_suspension_risk_ratio,
dd.hawaiian_pacific_islander_oos_suspensions / NULLIF(nwr.national_white_suspension_rate, 0) as hawaiian_pacific_islander_suspension_risk_ratio,
dd.white_oos_suspensions / NULLIF(nwr.national_white_suspension_rate, 0) as white_suspension_risk_ratio,
dd.two_or_more_races_oos_suspensions / NULLIF(nwr.national_white_suspension_rate, 0) as white_suspension_risk_ratio,


-- Law enforcement interactions
dd.hispanic_le_referrals_arrests / NULLIF(nwr.national_white_le_referrals_arrests_rate, 0) as hispanic_arrests_risk_ratio,
dd.black_le_referrals_arrests / NULLIF(nwr.national_white_le_referrals_arrests_rate, 0) as black_arrests_risk_ratio,
dd.asian_le_referrals_arrests / NULLIF(nwr.national_white_le_referrals_arrests_rate, 0) as asian_arrests_risk_ratio,
dd.native_american_le_referrals_arrests / NULLIF(nwr.national_white_le_referrals_arrests_rate, 0) as native_american_arrests_risk_ratio,
dd.hawaiian_pacific_islander_le_referrals_arrests / NULLIF(nwr.national_white_le_referrals_arrests_rate, 0) as hawaiian_pacific_islander_arrests_risk_ratio,
dd.white_le_referrals_arrests / NULLIF(nwr.national_white_le_referrals_arrests_rate, 0) as white_arrests_risk_ratio,
dd.two_or_more_races_le_referrals_arrests / NULLIF(nwr.national_white_le_referrals_arrests_rate, 0) as white_arrests_risk_ratio

from district_dashboard dd left join national_white_rates nwr
on dd."YEAR" = nwr."YEAR";