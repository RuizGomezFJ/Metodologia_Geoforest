#############################################
####### MASTER GEOFOREST ####################
####### Francisco Jose Ruiz Gomez ###########
####### Oct- 2023 ###########################

####### Práctica gráficos con R Base ########
  

# GRAFICA DE DISPERSION DE PUNTOS
## Cargamos los datos mtcars, que vienen en la distribucion base de R
datos <- as.data.frame(mtcars)

# Definimos los argumentos previamente
x <- datos$wt
y <- datos$mpg

plot(x, y) # También podríamos haber 

# Personalizar
plot(x, y,
     main = "Relación peso-consumo",
     xlab = "Peso (x1000 lbs)",
     ylab = "Consumo (millas/US galon)",
     pch = 16, col="blue")

# Añadir linea de tendencia
modelo <- lm(y~x, data=datos)
abline(modelo,
       col ="red",
       lty = 2)

#Añadir texto
summary(modelo) # Para ver los resultados del modelo lineal
text(4, 30, "mpg ~ 37.3 - 5.3wt")
