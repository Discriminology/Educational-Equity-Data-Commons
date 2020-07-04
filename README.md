## Discriminology Data Pipeline

### Raw data:

- 2011/12 school data
- 2013/14 school data
- 2015/16 school data



The code in this notebook performs the following operations:

- Extracts desired fields from each year, as defined [here](https://docs.google.com/spreadsheets/d/1Z7BwQ8Sd20Q57UsgkTzopSzbJy3hz2sq2qed4I9kkQI/edit#gid=1997820201)
- Replaces negative numbers with 0
- Standardizes field names across all 3 years 
- Adds a column description field
- Creates a district-level aggregate table
