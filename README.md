## Discriminology Data Pipeline

### Pipeline overview

1. Read raw Department of Education `.excel` files
2. Extract desired fields from each year, as defined [here](https://docs.google.com/spreadsheets/d/1Z7BwQ8Sd20Q57UsgkTzopSzbJy3hz2sq2qed4I9kkQI/edit#gid=1997820201)
3. Replace negative numbers with zeroes and remove other bad characters
   - Negative numbers replaced with zero
   - Non-alphanumeric symbols removed
   - `<=2` replaced with `1`, following [ProPublica methodology](https://projects.propublica.org/miseducation/methodology)
4. Standardizes field names and data types across all 3 years (see mapping [here](https://docs.google.com/spreadsheets/d/1JAyg1wv83FDjvOWV-zvrS8oWWRFRD6U5ZMnppoQpsoE/edit?usp=sharing))
5. Standardize indices `LEAID`, `SCHID` and `COMBOKEY` to be the same length to make cross-year comparison possible
6. Add decoded column descriptions to each table
7. Categorize schools as elementary / middle / high / secondary / other based on grade levels enrolled following [this mapping](https://agora-file-storage-prod.s3.us-west-1.amazonaws.com/workplace/attachment/7581678860581031821?response-content-disposition=inline%3B%20filename%3D%22IMG_0281.jpg%22%3B%20filename%2A%3Dutf-8%27%27IMG_0281.jpg&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEND%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLXdlc3QtMSJHMEUCIHVS5mPKZRAih2pycbL3sWCEU5DlZdce14bQCVGq5ZrPAiEA6rLa6n%2BquD8PiLLSpPFRimmJ8mEe%2F9a9ezlRKxcb1qkqkAQIeBAAGgw3Mzk5MzkxNzM4MTkiDMvXWd59h%2BSNnL%2BUzirtA%2FSXLSNTcS0kr7cUjc%2BscXwKBz9G4Jzuigkvo1UGgF2e5JxRWHBxJw5Cc0ohSL11P5xS4QiXeVMTCzR38Yse3j%2BMZuFdJiNcPQ8LZFJ1m37XMDYwmSLR13bXXYfPlaR7D%2FqcHIaVlKHWp4zdV4E4AjlX%2FP3n2dH2H3hsK5o03NV12SuwMP5Z%2BvH9Wkwd4B%2FPTERvLvpqSm%2BqDX0mG%2FtO8BEZgrXYGRAhqFl7zdGETgdu63LxfVcUKR28sEW75r6r90wpUVMyFPo%2FUqK1kh2Rk00kYDIzw9ZO3H6LhXhhkC9CYQbBpwAEI1nSps%2F178ulbRnzK4Qf9R4IsWJZjEvhxyMsVqrPQvUsXPmOhT6m0V11ldDb7YywDvqIV9IyQ6bG1kA%2B3RYu3R2TKY3z8ZBqv0077LrHfTnjjNZ0gCdxseg51V9ySw5kqmeRhZjKgbDuNwM2ogQojocKAVCm86w1hKUPFIMthCA7eY7G3yYggEphQtG00EZhCpCR7C8c3zhRGjYYZbJYfJVT12%2BLjcG9xRYnfA6Ujg637OPp7aYVUjlA5R14xsxVQYUR2%2BGXSxB9TIJbWseO2r11vWg1zoAwb6SssrAX1sd%2FzNl0iCsXeHzstcksfO6ZD3dSIElG9jtRIwovVt7HKOkicXYEl%2FYw14%2By%2BAU67wEELesxOsBqmp6yOKCBE35DzFU0%2BnYuCTGAz36dTq6cNONiQaFmX5CdvppWt8k8eEYrkmegpepgLSuJsh2oBtEBb21ytAW8nSlkXG58euUOafLJYg42RbZ8wxye2TjuySaqqw9hHZeSxcb%2BROTqEs%2FaSC6DQeFyROJnQHgjjCw2TB6oygVWvkeAO%2BryUQxw1EA0x5BcNbtOywg%2FB81rzql0r%2FzoenRWw8CeTlR3ZfJ0CCJZDX8bXH0iL8LMpMOCPMuf6F0kQEVt79WU%2BWt9eifvcdq8Nkt3b5IeUhgDAf2kk%2FsZ9FYSJzlRHlTfdBKxDA%3D%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20200713T165513Z&X-Amz-SignedHeaders=host&X-Amz-Expires=599&X-Amz-Credential=ASIA2YR6PYW567Y75UE2%2F20200713%2Fus-west-1%2Fs3%2Faws4_request&X-Amz-Signature=c0ffb597d609eac55337c96e161c602975b1550e43bd36a502556a816c09ce26)
8. Stack data from all 3 years into a single standard table with uniform data types
9. Create an aggregate table for districts
10. Join [geodata](https://nces.ed.gov/programs/edge/Geographic/SchoolLocations) to district aggregation




### Raw data from Department of Education:

- 2011/12 school data
- 2013/14 school data
- 2015/16 school data
- District Geodata

[Summary table](https://docs.google.com/spreadsheets/d/1h2x2jN24vmPVcQ2Ia72kezs0hD-E0xkjyIhXDCgMq5I/edit#gid=0) of school and district data



