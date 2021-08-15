# Load required packages
library(dplyr)
library(readr)

# Read and merge all spreadsheet files
df <- list.files(
        path = './Data', 
        full.names = TRUE
) %>% 
  lapply(read_csv) %>% 
  bind_rows

# Save merged CSV file
write.csv2(df, 
           './Output/merged_file.csv', 
           row.names = FALSE
)
