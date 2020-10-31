# Load required packages
library(dplyr)
library(readr)

# Read and merge all spreadsheet files
df <- list.files(path = 'C:/Users/rcflo/Merge_CSV_spreadsheets_R/Data', full.names = T) %>% 
  lapply(read_csv) %>% 
  bind_rows

# Save merged CSV file
write.csv2(df, 'C:/Users/rcflo/Merge_CSV_spreadsheets_R/Output/merged_file.csv')
