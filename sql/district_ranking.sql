drop table if exists district_inequality_rankings;

create table district_inequality_rankings as (

select rrr."LEA_NAME", rrr."LEA_STATE_NAME", di."YEAR", di."LEAID",

di.d_wh_bl
, rrr.black_ap_enrollment_ratio
, rrr.black_suspension_risk_ratio
, (di.d_wh_bl * (rrr.black_ap_enrollment_ratio + rrr.black_gt_enrollment_ratio + rrr.black_arrests_risk_ratio + rrr.black_suspension_risk_ratio) / 4.0) as inequality_index


from region_dashboard_risk_ratio rrr
join classified_dissimilarity_index di
on di."LEAID" = rrr."LEAID"
and di."YEAR" = rrr."YEAR"
order by 2, 1, 3, 4

);

select * from district_inequality_rankings
where inequality_index is not null
order by 2,8 desc;