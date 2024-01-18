
install.packages("plotly")
library(plotly)
View(df1)

# Task1
plot_ly(data=dff, x=~Age, y=~Income)

# Task 2 
fig <- plot_ly(
  x=df1$Education, y=df1$Marital_Status,
  z=df1$Income, type="heatmap"
)
fig

# Task 3
fig <- plot_ly(
  type="treemap",
  labels=c("Сотрудник_1","Реклама_1","Реклама_2","Сотрудник_2","Реклама_3"),
  parents=c(" ", "Сотрудник_1","Сотрудник_1"," ","Сотрудник_2")
)
fig

# Task 4
install.packages("leaflet")
library(tidyverse)
library(leaflet)

map <- leaflet()
map <-  map %>% addTiles()
map <- map %>% addMarkers(
  lng = 30.28365, lat = 59.93817,
  label = "Башня грифонов"
)
map

# Task 5
install.packages("rpivotTable")
install.packages("DT")
library(DT)
library(rpivotTable)
datatable(df1)

# Task 6
rpivotTable(df1, rows="Education", cols="Marital_Status")
