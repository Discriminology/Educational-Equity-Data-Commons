## Discriminology Data Pipeline

### Pipeline overview

1. Read raw Dept. of Education .excel files
2. Extract desired fields from each year, as defined [here](https://docs.google.com/spreadsheets/d/1Z7BwQ8Sd20Q57UsgkTzopSzbJy3hz2sq2qed4I9kkQI/edit#gid=1997820201)
3. Replace negative numbers with zeroes and remove other bad characters
   - Negative numbers replaced with zero
   - Non-alphanumeric symbols removed
4. Standardizes field names and data types across all 3 years (see mapping [here](https://docs.google.com/spreadsheets/d/1JAyg1wv83FDjvOWV-zvrS8oWWRFRD6U5ZMnppoQpsoE/edit?usp=sharing) 
5. Add decoded column descriptions to each table
5. Stack data from all 3 years into a single standard table with uniform data types



### Raw data from Department of Education:

- 2011/12 school data
- 2013/14 school data
- 2015/16 school data


