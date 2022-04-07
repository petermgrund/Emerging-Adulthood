#### Scoring Exploration - IDEA-8 ####
df <-  emerging_adult_data
df$ID <- 1:nrow(df)
df_MOA <- df %>% select(ID, starts_with("MOA"))
df_exploration <- df %>% select(ID, IDEA_1, IDEA_2, IDEA_5, IDEA_6)
df_exploration$exploration <- rowMeans(df_exploration[2:5])


#### Scoring Mindfulness ####

df_mindfulness <- df%>% select(ID, starts_with("mindful"))
df_mindfulness <- df_mindfulness %>% select(ID:mindful_15)
df_mindfulness$mindfulness <- rowMeans(df_mindfulness[2:16])

#### Scoring Stress ####
library(car)
df_stress$stress_4 <- recode(df_stress$stress_4, '5=1; 4=2; 3=3; 2=4; 1=5')
df_stress$stress_5 <- recode(df_stress$stress_5, '5=1; 4=2; 3=3; 2=4; 1=5')
df_stress$stress_7 <- recode(df_stress$stress_7, '5=1; 4=2; 3=3; 2=4; 1=5')
df_stress$stress_8 <- recode(df_stress$stress_8, '5=1; 4=2; 3=3; 2=4; 1=5')

