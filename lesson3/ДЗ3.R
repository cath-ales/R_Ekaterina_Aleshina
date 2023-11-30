library(readr)
df <- read_csv('ДЗ3_superstore_data.csv')

library(dplyr)
filter(df, Income > 30000)
select(df, Id, Year_Birth, Education, Marital_Status, Income, Response)
mutate(df, Age = (2023 - Year_Birth), Rich_flag = (Income > 80000))
df_group <- group_by(df, Education)
df_droup <- summarise(df_group, AVG_Income = mean(Income))
df1 <- full_join(df, df_group, by = 'Education')
df1
