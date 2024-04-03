install.packages("PerformanceAnalytics")
library(PerformanceAnalytics)

Peso=c(51,59,49,54,50,55,48,53,52,57)
largo =c(33.5,38,32,37.5,31.5,33,31,36.5,34,35)
pairs(largo~Peso)




# Datos
Peso <- c(51, 59, 49, 54, 50, 55, 48, 53, 52, 57)
Largo <- c(33.5, 38, 32, 37.5, 31.5, 33, 31, 36.5, 34, 35)

# Gráfico de dispersión con marcadores en forma de cuadrado (pch = 15)
pairs(Largo ~ Peso, col = "blue", main = "Diagrama de Dispersión Peso vs Largo", pch = 15)


df = data.frame(Peso,largo)
chart.Correlation(df)

shapiro.test(Peso) #0.9207
shapiro.test(largo)##0.5263, se utiliza R de pearson

cor(Peso,largo)
cor.test(Peso,largo)## 0.7794691=R, sig. 0.007


##############################


edad <- c(26, 18, 20, 19, 25, 22, 37, 56, 78)
talla <- c(1.56, 1.72, 1.65, 1.44, 1.69, 1.66, 1.51, 1.62, 1.42)


pairs(edad ~ talla, col = "red", main = "Diagrama de Dispersión Edad vs Talla")

df = data.frame(edad,talla)
chart.Correlation(df)


shapiro.test(edad)
shapiro.test(talla)

cor.test(edad,talla)
