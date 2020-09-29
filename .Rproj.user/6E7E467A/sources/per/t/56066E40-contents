# aula 2 | SHIFT FIAP | Big Data Science #

library(tidyverse)

d <- diamonds

# Amostra linhas iniciais

head(d)

# Amostra linhas finais

tail(d)

# Contagem 
nrow(d)

# Contagem colunas
ncol(d)

## Estatísticas Descritivas

# Média de preços

mean(d$price)

# mediana

median(d$price)

# Desvio Padrão

sd(d$price)

# sumario
summary(d)

# Geração Amostra

a1 <- d[1:3000,]

# estatisticas descritivas da amostra

mean(a1$price)
median(a1$price)
sd(a1$price)

# Geração de amostra aleatória
set.seed(33)

sample(3)

va <- sample(53940)
a3 <- d[va[1:3000],]

mean(a3$price)
median(a3$price)
sd(a3$price)

# histograma de preço

hist(d$price)

hist(a3$price)
hist(a1$price)

ggplot(d, aes(price)) +
  geom_histogram(bins = 50)
# boxplot

boxplot(d$price ~ d$color)

fctOutlier <- function(x){
  scorez <- (x-mean(x))/sd(x)
  return(abs(scorez)>3)
}

fctOutlier(d$price)

d$outlier <- fctOutlier(d$price)

library(swirl)
