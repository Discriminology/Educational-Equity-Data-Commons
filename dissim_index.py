import jenkspy
import pandas as pd
from utils import PostGresLoad


def classify(x, l1, l2):
    if x is None:
        return x
    if x <= l1:
        return 'low'
    if x <= l2:
        return 'med'
    if x < 1.0:
        return 'high'


def categorize_dscore(df_column):
    list_of_values = df_column
    breaks = jenkspy.jenks_breaks(list_of_values, nb_class=6)
    lim1 = breaks[2]
    lim2 = breaks[4]
    return df_column.apply(lambda x: classify(x, lim1, lim2))