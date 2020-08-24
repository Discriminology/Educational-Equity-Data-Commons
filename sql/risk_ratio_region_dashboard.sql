select dd."LEA_NAME",
dd."LEA_STATE_NAME",
dd."YEAR",

-- AP enrollment
nwr.national_white_ap_enrollment_rate / NULLIF(dd.white_ap_enrollment_rate, 0) as white_AP_enrollment_ratio,
nwr.national_white_ap_enrollment_rate / NULLIF(dd.black_ap_enrollment_rate, 0) as black_AP_enrollment_ratio,
nwr.national_white_ap_enrollment_rate / NULLIF(dd.asian_ap_enrollment_rate, 0) as asian_AP_enrollment_ratio,
nwr.national_white_ap_enrollment_rate / NULLIF(dd.native_american_ap_enrollment_rate, 0) as native_american_AP_enrollment_ratio,
nwr.national_white_ap_enrollment_rate / NULLIF(dd.hawaiian_pacific_islander_ap_enrollment_rate, 0) as hawaiian_pacific_islander_AP_enrollment_ratio,
nwr.national_white_ap_enrollment_rate / NULLIF(dd.two_or_more_races_ap_enrollment_rate, 0) as two_or_more_races_AP_enrollment_ratio,
nwr.national_white_ap_enrollment_rate / NULLIF(dd.hispanic_ap_enrollment_rate, 0) as hispanic_AP_enrollment_ratio,


-- GT Enrollment
nwr.national_white_gt_enrollment_rate / NULLIF(dd.white_gt_enrollment_rate, 0) as white_gt_enrollment_ratio,
nwr.national_white_gt_enrollment_rate / NULLIF(dd.black_gt_enrollment_rate, 0) as black_gt_enrollment_ratio,
nwr.national_white_gt_enrollment_rate / NULLIF(dd.asian_gt_enrollment_rate, 0) as asian_gt_enrollment_ratio,
nwr.national_white_gt_enrollment_rate / NULLIF(dd.native_american_gt_enrollment_rate, 0) as native_american_gt_enrollment_ratio,
nwr.national_white_gt_enrollment_rate / NULLIF(dd.hawaiian_pacific_islander_gt_enrollment_rate, 0) as hawaiian_pacific_islander_gt_enrollment_ratio,
nwr.national_white_gt_enrollment_rate / NULLIF(dd.two_or_more_races_gt_enrollment_rate, 0) as two_or_more_races_gt_enrollment_ratio,
nwr.national_white_gt_enrollment_rate / NULLIF(dd.hispanic_gt_enrollment_rate, 0) as hispanic_gt_enrollment_ratio,

-- Suspensions
dd.hispanic_out_of_school_suspension_rate / NULLIF(nwr.national_white_suspension_rate, 0) as hispanic_suspension_risk_ratio,
dd.black_out_of_school_suspension_rate / NULLIF(nwr.national_white_suspension_rate, 0) as black_suspension_risk_ratio,
dd.asian_out_of_school_suspension_rate / NULLIF(nwr.national_white_suspension_rate, 0) as asian_suspension_risk_ratio,
dd.native_american_out_of_school_suspension_rate / NULLIF(nwr.national_white_suspension_rate, 0) as native_american_suspension_risk_ratio,
dd.hawaiian_pacific_islander_out_of_school_suspension_rate / NULLIF(nwr.national_white_suspension_rate, 0) as hawaiian_pacific_islander_suspension_risk_ratio,
dd.white_out_of_school_suspension_rate / NULLIF(nwr.national_white_suspension_rate, 0) as white_suspension_risk_ratio,
dd.two_or_more_races_out_of_school_suspension_rate / NULLIF(nwr.national_white_suspension_rate, 0) as two_or_more_races_suspension_risk_ratio,


-- Law enforcement interactions
dd.hispanic_le_referrals_arrests_rate / NULLIF(nwr.national_white_le_referrals_arrests_rate, 0) as hispanic_arrests_risk_ratio,
dd.black_le_referrals_arrests_rate / NULLIF(nwr.national_white_le_referrals_arrests_rate, 0) as black_arrests_risk_ratio,
dd.asian_le_referrals_arrests_rate / NULLIF(nwr.national_white_le_referrals_arrests_rate, 0) as asian_arrests_risk_ratio,
dd.native_american_le_referrals_arrests_rate / NULLIF(nwr.national_white_le_referrals_arrests_rate, 0) as native_american_arrests_risk_ratio,
dd.hawaiian_pacific_islander_le_referrals_arrests_rate / NULLIF(nwr.national_white_le_referrals_arrests_rate, 0) as hawaiian_pacific_islander_arrests_risk_ratio,
dd.white_le_referrals_arrests_rate / NULLIF(nwr.national_white_le_referrals_arrests_rate, 0) as white_arrests_risk_ratio,
dd.two_or_more_races_le_referrals_arrests_rate / NULLIF(nwr.national_white_le_referrals_arrests_rate, 0) as two_or_more_races_arrests_risk_ratio

from district_rates_simplified dd left join national_white_rates nwr
on dd."YEAR" = nwr."YEAR"
where "LEA_STATE_NAME" in 

-- Region 1
('CONNECTICUT', 'MAINE', 'MASSACHUSETTS', 'NEW HAMPSHIRE', 'RHODE ISLAND',  'VERMONT',
'NEW JERSEY', 'NEW YORK', 'PENNSYLVANIA')

-- Region 2
('ILLINOIS',
 'INDIANA',
 'MICHIGAN',
 'OHIO',
 'WISCONSIN',
 'IOWA',
 'KANSAS',
 'MINNESOTA',
 'MISSOURI',
 'NEBRASKA',
 'NORTH DAKOTA',
 'SOUTH DAKOTA')

-- Region 3
('DELAWARE',
 'FLORIDA',
 'GEORGIA',
 'MARYLAND',
 'NORTH CAROLINA',
 'SOUTH CAROLINA',
 'VIRGINIA',
 'DISTRICT OF COLUMBIA',
 'WEST VIRGINIAALABAMA',
 'KENTUCKY',
 'MISSISSIPPI',
 'TENNESSEE',
 'ARKANSAS',
 'LOUISIANA',
 'OKLAHOMA',
 'TEXAS')

-- Region 4
('ARIZONA',
 'COLORADO',
 'IDAHO',
 'MONTANA',
 'NEVADA',
 'NEW MEXICO',
 'UTAH',
 'WYOMING',
 'ALASKA',
 'CALIFORNIA',
 'HAWAII',
 'OREGON',
 'WASHINGTON'
)
