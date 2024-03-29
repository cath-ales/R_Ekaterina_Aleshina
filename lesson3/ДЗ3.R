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
''
View(df1) 
 # У плоской таблицы много ограничений. Она подойдет в редких случаях, 
 # когда таблица простая для понимания либо же сделана для коллег, 
 # которые уже знакомы с ее структурой.'

install.packages('pivottabler')
library(pivottabler)
pt <- PivotTable$new()
pt$addData(df)
pt$addColumnDataGroups('Marital_Status')
pt$addRowDataGroups('Education')
pt$defineCalculation(calculationName='Total count', summariseExpression='n()')
pt$evaluatePivot()
pt
