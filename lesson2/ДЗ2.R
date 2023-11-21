# Задания с векторами: 
a <- c('lundi', 'mardi', 'mercredi', 'jeudi', 'vendredi', 'samedi', 'dimanche')
b <- c(seq(from = 1, to = 11, by = 2))
a; b                                               # 1

cat(length(b))                                     # 2
cat(b[1])
cat(b[2:4])  

d <- c(seq(from = 3, to = 9, len = 6))
d + b                                              # 3

mean(d)                                            # 4

abc <- function(x) {                               # 5
  v = x * 1.5
}

q <- abc(b)                                        # 6
q

# Задания с матрицей:
v1 <- round(c(seq(from = 4, to = 11, len = 9)),2)
m1 <- matrix(v1, nrow = 3, ncol = 3, byrow = TRUE)
m2 <- rbind(c(2, 4, 6), c(3, 5, 7), c(1, 9, 8))
m1; m2                                             # 1

m1[, 1]; m2[2,]                                    # 2

m1[2, 2]                                           # 3

# Задания с датафреймом:
library(readr)
df <- read_csv("ДЗ2_vgsales.csv")

print(df, n = 3)
str(df)
summary(df)
