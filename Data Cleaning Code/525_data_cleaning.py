"""
@filename: IS525.py
@author: Genie
@time: 2023 - 12 - 06
"""
import pandas as

# Handling missing values
def fill_missing_values(df):
    if isinstance(df, pd.DataFrame):
        for col in df.columns:
            if df[col].dtype == 'float64' and all(df[col].dropna().apply(float.is_integer)):
                # If the column is float but the data are integer-like, fill with rounded mean
                mean_val = round(df[col].mean())
                df[col] = df[col].fillna(mean_val)
            elif df[col].dtype in ['float64', 'int64']:
                # For other numeric types, fill with the mean
                mean_val = df[col].mean()
                df[col] = df[col].fillna(mean_val)
            else:
                # For non-numeric types, fill with the mode
                mode_val = df[col].mode().iloc[0]
                df[col] = df[col].fillna(mode_val)
    return df


# Load all sheets from the 'questionnaire' Excel file
questionnaires = pd.read_excel('D:/UIUC/IS 525/Final Project/questionnaires.xlsx',sheet_name=None)
recallData = pd.read_excel('D:/UIUC/IS 525/Final Project/24 hour recalldata.xlsx')

# Apply the missing value handling to each DataFrame in the dictionary
questionnaires_cleaned = {sheet_name: fill_missing_values(df) if isinstance(df, pd.DataFrame) else df for sheet_name, df in questionnaires.items()}
recallData_cleaned = fill_missing_values(recallData)

# Export cleaned datasets
with pd.ExcelWriter('questionnaires_cleaned.xlsx') as writer:
    # Iterate over each DataFrame in the dictionary
    for sheet_name, df in questionnaires_cleaned.items():
        # Converting 'Date' in 'questionnaires' to datetime format
        df['Date'] = pd.to_datetime(df['Date'], errors='coerce').dt.date
        # Write each DataFrame to a different sheet
        df.to_excel(writer, sheet_name=sheet_name, index=False)

recallData_cleaned.to_excel('24 hour recalldata_cleaned.xlsx', sheet_name='Sheet1', index=False)