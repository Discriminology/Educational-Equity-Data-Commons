## Discriminology Data Pipeline

### Pipeline overview

1. Read raw Department of Education `.excel` files
2. Extract desired fields from each year, as defined [here](https://docs.google.com/spreadsheets/d/1Z7BwQ8Sd20Q57UsgkTzopSzbJy3hz2sq2qed4I9kkQI/edit#gid=1997820201)
3. Replace negative numbers with zeroes and remove other bad characters
   - Negative numbers replaced with zero
   - Non-alphanumeric symbols removed
   - `<=2` replaced with `1`, following [ProPublica methodology](https://projects.propublica.org/miseducation/methodology)
4. Standardize field names and data types across all 3 years (see mapping [here](https://docs.google.com/spreadsheets/d/1JAyg1wv83FDjvOWV-zvrS8oWWRFRD6U5ZMnppoQpsoE/edit?usp=sharing))
5. Standardize indices `LEAID`, `SCHID` and `COMBOKEY` to be the same length to make cross-year comparison possible
6. Add decoded column descriptions to each table
7. Categorize schools as elementary / middle / high / secondary / other based on grade levels enrolled following this mapping:


   | School level  | Grade Span  |
   |---|---|
   | Elementary  | Any combination of pre-K through 5th; pre-K + K  |
   | Middle  | 7-8; 6-8; 6th grade academies  |
   | High  | 9-12th; 10-12th; 11-12th; 9th grade academies; 12th grade academies  |
   | Secondary  | 6-12th  |
   | Other  | No grades (applies to alt schools); K-12; K-8  |


8. Stack data from all 3 years into a single standard table with uniform data types
9. Create an aggregate table for districts
10. Join [geodata](https://nces.ed.gov/programs/edge/Geographic/SchoolLocations) to district aggregation

### Analysis overview

After aggregating the data at the school and district level, we compute the district rates, national rates, and risk ratios defined in [this document](https://docs.google.com/document/d/1ZIK8-lsurTP1EPaxh7rvfcUWf2kPhTICwNCeIxdRoC0/edit#):

The code in `generate_metric_queries.ipynb` programmatically generates the lines of the query in `national_rates_table.sql` for all gender x race x disability status combinations.


### Raw data from Department of Education:

- 2011/12 school data
- 2013/14 school data
- 2015/16 school data
- District Geodata

[Summary table](https://docs.google.com/spreadsheets/d/1h2x2jN24vmPVcQ2Ia72kezs0hD-E0xkjyIhXDCgMq5I/edit#gid=0) of school and district data



