# # # # # # # # # # # # # # # # # # # # 
## PSY 4960 FINAL PROJECT
## DATA CLEANING DOCUMENT
## 
## Created March 2022
## Authors: Peter M. Grund
## Additional project contributors: 
# # # # # # # # # # # # # # # # # # # # 

# Import data and dependencies --------------------------------------------

#load tidyverse
library(tidyverse)

# This open-source data file can be found at https://osf.io/te54b/
df <- read_csv("In-data/emerging_adult_data.csv")

# Create IDs for rows -----------------------------------------------------

df$ID <- 1:nrow(df)

# Select variables of interest --------------------------------------------

df_select <- df %>%
  select(ID, mindful_1:mindful_biascheck)
