pib <- read.csv("https://raw.githubusercontent.com/diogenesjusto/FIAP/master/SHIFT/Data/pib.csv")

treino <- pib[1:132,]
teste <- pib[133:138,]

# Modelo Regressao linear simples

mod <- lm(PIB ~ BRL, data = treino)

summary(mod)


#Previsão em teste

p <- predict(mod, newdata = teste)

# Comparacao previsto x real

cbind(p, teste$PIB, p-teste$PIB)

# erro previsão

sse=sum((p-teste$PIB)^2)
sse
rmse=sqrt(mean((p-teste$PIB)^2))
rmse


#regressao linear multipla

modm <- lm(PIB ~ BRL + BRP, data= treino)

summary(modm)
