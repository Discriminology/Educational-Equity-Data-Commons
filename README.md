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
7. Categorize schools as elementary / middle / high / secondary / other based on grade levels enrolled following [this mapping](https://agora-file-storage-prod.s3.us-west-1.amazonaws.com/workplace/attachment/7581678860581031821?response-content-disposition=inline%3B%20filename%3D%22IMG_0281.jpg%22%3B%20filename%2A%3Dutf-8%27%27IMG_0281.jpg&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEIj%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLXdlc3QtMSJHMEUCIDHVLL3NIekhCF9eWDn%2FRotSSvL9OQclig70jYC96dXFAiEAuFW9sC%2B%2BmAMGKZmCN8t5nHArQ0lkxW6lVmFdp%2BmB4NoqkAQIMBAAGgw3Mzk5MzkxNzM4MTkiDPW9oyX7MoQgNq8FFyrtA8f07Ip0CU1mXkwYsUCBIBdmECp9BSWbD4MNfGacUMoxyDBcrG6ySaSMB690CKKTE4J%2FpWfsYV8WHsGEMJ7UdHfnqxr9n0nO395LU0kE1KiepCVnVRdZ%2BmA4sxhi6Lf9oZGnAlUgqQvau6DAwDbQcwcIA9uQr89NewinYqmDyVBHvoa1Y7C3MKc2uitAPscd06JaTiIKwSuF5SsTzAzgxm49Syr1XvnvVrsaOpZEVtaO0sj2jEvmLOX2wiBJDuyIRX95xoUQa9XVhb8v0lD953X9YZh36kD%2Fic%2BRAUzrt3CbXuy9gls037lfnEroZ6FUNya9a3woA16HsmZlKmYGeTNqtNjKs0IJlI7ZwouBa9JlFWKc2ley5JQ8EAGt%2BZlTTU9pEsTCb7AZlVmZfD0FNg3Lq5Pv1G3jZsqpDfp5rflPqIsqVw3Xb3P0%2Bobq13mz5YxGaRUufqkFe3WhtnnT5F7pql81sjRCNCksufRxHP8aGA3yiESMkLLwg2HKs2OzOQK1efoRhbfRu3e94L5O7JmrzDACd3pJKJQ%2F8%2B8cGNR2zF8PnBzPaJKXdB8mtPr91LvKJfTSb9mAC%2Ft9HBga2dGPMi5O4oKbidS3i0upPyMwpUUDGd6bBj2Rp8iSvPnZ1fC9oWxdjI5GuJkldnswiJqi%2BAU67wEY1%2FK8iN0ifslls30EPHM10XrqwHivnSUcC0yzgLqg0hkkw%2FRiwS0qsrIRlV81qLix4SdjavVoYBn%2FWBqA4w78CKm7ozI3JeyLLWh6lAAzY1PERD5IOt4KGlW8pOp6WO5O%2FDJdQu9iZ34ai2YblpkmhgidfyTaHdVhFeka9NwgUFzWSnCeR%2BbQkTs8OEtqt%2Bve1WI%2F4DDJOszu7HZ8UciOZS0sVMntXeDwY%2FejS0DMo50JLYBC6EEAsseTmiD5da6021PoVnzSpH08QjqFfDv%2B6qGNkxxshFbyLSvPVJjwnfaya8t2YziVeRkBFf8jAQ%3D%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20200710T191715Z&X-Amz-SignedHeaders=host&X-Amz-Expires=599&X-Amz-Credential=ASIA2YR6PYW54TKC3MUT%2F20200710%2Fus-west-1%2Fs3%2Faws4_request&X-Amz-Signature=ea35775177aaebcf8e88c85815b514f448c97758f4e869d23dbc2abc64714b47)
8. Stack data from all 3 years into a single standard table with uniform data types
9. Create an aggregate table for districts




### Raw data from Department of Education:

- 2011/12 school data
- 2013/14 school data
- 2015/16 school data
- District Geodata

[Summary table](https://docs.google.com/spreadsheets/d/1h2x2jN24vmPVcQ2Ia72kezs0hD-E0xkjyIhXDCgMq5I/edit#gid=0) of school and district data



