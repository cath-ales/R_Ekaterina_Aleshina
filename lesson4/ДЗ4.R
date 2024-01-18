library(readr)
df <- read_csv('ДЗ3_superstore_data.csv')

library(dplyr)
filter(df, Income > 30000)
select(df, Id, Year_Birth, Education, Marital_Status, Income, Response)
df1 <- mutate(df, Age = (2023 - Year_Birth), Rich_flag = (Income > 80000))
df_group <- group_by(df, Education)
df_droup <- summarise(df_group, AVG_Income = mean(Income))
df1 <- full_join(df, df_group, by = 'Education')
df1
''
View(df1) 
 # У плоской таблицы много ограничений. Она подойдет в редких случаях, 
 # когда таблица простая для понимания либо же сделана для коллег, 
 # которые уже знакомы с ее структурой.'

library(pivottabler)
pt <- PivotTable$new()
pt$addData(df1)
pt$addColumnDataGroups('Marital_Status.x')
pt$addRowDataGroups('Education')
pt$defineCalculation(calculationName='Total count', summariseExpression='n()')
pt$evaluatePivot()
pt
 # Сводная таблица позволяет сделать таблицу с группировкой по ключевым параметрам
 # Это делает данные более наглядными

library(ggplot2)
ggplot(df1)+geom_col(mapping=aes(x=Education, y='Marital_Status.y', fill=Rich_flag))
 # Из этой диаграммы можно сделать вывод о соотношении людей с разным доходов
 # в зависимости от уровня образования

ggplot(df1) + geom_line(mapping = aes(x = Year_Birth, y = Age))


