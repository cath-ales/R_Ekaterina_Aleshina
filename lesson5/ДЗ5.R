library(tidyr)
sapply(df1, class)

# Task 1
unite(df1, col='Education_and_M_Status', c('Education', 'Marital_Status'), sep='-')
dff <- unite(df1, col='Education_and_M_Status', c('Education', 'Marital_Status'), sep='-')

# Task 2 
class(dff$Rich_flag)
ddff <- as.numeric(dff$Rich_flag)
class(ddff)

# Task 3

is.null(dff$Id)
is.null(dff$Year_Birth)
is.null(dff$Income)
is.null(dff$Education_and_M_Status)
is.null(dff$Response)
is.null(dff$Age)
is.null(dff$Rich_flag)

# Task 4

ggplot(data = dff, aes(x="", y=Age, group=Response, fill=Response)) +
  geom_boxplot()


# Task 5

install.packages("stringr")
library(stringr)
str_which(dff$Age,"9")
