-- QC checks

select * from classified_dissimilarity_index where d_wh_bl > 0.5;
select * from classified_dissimilarity_index where d_wh_bl < 0.2;
select * from classified_dissimilarity_index where d_wh_as > 0.5;
select * from classified_dissimilarity_index where d_wh_am > 0.5;
