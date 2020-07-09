## Discriminology Data Pipeline

### Pipeline overview

1. Read raw Dept. of Education .excel files
2. Extract desired fields from each year, as defined [here](https://docs.google.com/spreadsheets/d/1Z7BwQ8Sd20Q57UsgkTzopSzbJy3hz2sq2qed4I9kkQI/edit#gid=1997820201)
3. Replace negative numbers with zeroes and remove other bad characters
   - Negative numbers replaced with zero
   - Non-alphanumeric symbols removed
4. Standardizes field names and data types across all 3 years (see mapping [here](https://docs.google.com/spreadsheets/d/1JAyg1wv83FDjvOWV-zvrS8oWWRFRD6U5ZMnppoQpsoE/edit?usp=sharing))
5. Standardize indices `LEAID`, `SCHID` and `COMBOKEY` to be the same length to make cross-year comparison possible
6. Add decoded column descriptions to each table
7. Stack data from all 3 years into a single standard table with uniform data types
8. Create an aggregate table for districts




### Raw data from Department of Education:

- 2011/12 school data
- 2013/14 school data
- 2015/16 school data
- District Geodata

[Summary table](https://docs.google.com/spreadsheets/d/1h2x2jN24vmPVcQ2Ia72kezs0hD-E0xkjyIhXDCgMq5I/edit#gid=0) of school and district data



