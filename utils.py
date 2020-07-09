# Utility functions for parsing school and district data

def aggregate_data(frame_array, desired_fields):

    clean_frames = []

    for df in frame_array:
        # subset dataframe to desired columns

        temp = df[list(set(df.columns[df.columns.isin(desired_fields)]))]

        num = temp._get_numeric_data()
        num[num < 0] = 0 # replace negative numbers with 0
        temp = temp.replace('<=2', '1') # round <=2 to 1, following ProPublica convention
        temp = temp.replace('‡', None) # remove misc symbols from values
        temp['COMBOKEY'] = temp['COMBOKEY'].astype(str)
        temp.set_index('COMBOKEY', inplace=True)
        clean_frames.append(temp)


    concat = pd.concat(clean_frames, axis=1, sort=True)
    flipped = concat.T.drop_duplicates()
    grouped = flipped.groupby(lambda x: x).agg({c: 'last' for c in flipped.columns})
    return grouped.T

def categorize_school_level(SCH_GRADE_KG, SCH_GRADE_G01,
                            SCH_GRADE_G02, SCH_GRADE_G03, SCH_GRADE_G04, SCH_GRADE_G05,
                            SCH_GRADE_G06, SCH_GRADE_G07, SCH_GRADE_G08, SCH_GRADE_G09,
                            SCH_GRADE_G10, SCH_GRADE_G11, SCH_GRADE_G12):
    
    
    SCH_GRADE_KG = SCH_GRADE_KG == 'Yes'
    SCH_GRADE_G01 = SCH_GRADE_G01 == 'Yes'
    SCH_GRADE_G02 = SCH_GRADE_G02 == 'Yes'
    SCH_GRADE_G03 = SCH_GRADE_G03 == 'Yes'
    SCH_GRADE_G04 = SCH_GRADE_G04 == 'Yes'
    SCH_GRADE_G05 = SCH_GRADE_G05 == 'Yes'
    SCH_GRADE_G06 = SCH_GRADE_G06 == 'Yes'
    SCH_GRADE_G07 = SCH_GRADE_G07 == 'Yes'
    SCH_GRADE_G08 = SCH_GRADE_G08 == 'Yes'
    SCH_GRADE_G09 = SCH_GRADE_G09 == 'Yes'
    SCH_GRADE_G10 = SCH_GRADE_G10 == 'Yes'
    SCH_GRADE_G11 = SCH_GRADE_G11 == 'Yes'
    SCH_GRADE_G12 = SCH_GRADE_G12 == 'Yes'

    
    if sum([SCH_GRADE_G09, SCH_GRADE_G10, SCH_GRADE_G11, SCH_GRADE_G12]) >= 2:
        return "High School"
    
    elif sum([SCH_GRADE_G05, SCH_GRADE_G06, SCH_GRADE_G07, SCH_GRADE_G08, SCH_GRADE_G09]) >= 2:
        return "Middle School"
    
    elif sum([SCH_GRADE_KG, SCH_GRADE_G01, SCH_GRADE_G02, SCH_GRADE_G03,
          SCH_GRADE_G04, SCH_GRADE_G05, SCH_GRADE_G06]) >= 2 and sum([SCH_GRADE_G07, SCH_GRADE_G08]) == 0:
        return 'Elementary School'
    
    elif SCH_GRADE_G06:
        return "Middle School"
    
    elif SCH_GRADE_G09:
        return "High School"

    else:
        return 'Other'