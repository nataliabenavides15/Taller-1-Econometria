#Taller 1

#1 importar el data set de inmuebles_ejemplo y asigar una variable 
#llamada inmuebles a esa base
base=inmuebles_ejmplo
inmuebles=base
inmuebles

#2 Creación barplot con variable operación y vendedor 

#2.1 Para la creación utilice primero una tabla entrecruzada entre las variables

#2.2 gráficar con el comando barplot

#2.3 Asignarle color, nombres y utilizar el comando beside = TRUE

#2.4 Interpretar el barplot

tabla_inmuebles=table(inmuebles$Operación, inmuebles$Vendedor)
tabla_inmuebles

barplot(tabla_inmuebles)

barplot(tabla_inmuebles, main = "Inmuebles", xlab = "Vendedor", ylab = "Operacion", col="lightskyblue1", border="azure3", horiz = TRUE)

#2.5 Realizar una regresión lineal explicando el precio de venta

regresion = lm(`Precio Venta`~ Operación, data = inmuebles)
summary(regresion)

#2.6 Explicar el summary de la regresión punto 2.5


#3 lock5data

#3.1 Llamar la librería Lock5Data, usar la data BaseballHits, y asignarle una 
#variable a esa base

library(Lock5Data)
data("BaseballHits1e")
attach(BaseballHits1e)
#Se asignará la variable prueba para base 

prueba= BaseballHits1e
prueba

#3.1 Graficar con plot donde x=RUNS y y=Wins

plot(prueba$Runs, prueba$Wins, col="maroon")

#3.2 interpretar


#4 correlación con la base basehits
cor(BaseballHits1e$Hits,BaseballHits1e$Runs)
#cor(prueba$Hits, prueba$Wins)


#4.1 Asignación de variables cuantitativas
fecha = inmuebles$`Fecha Alta`
superficie = inmuebles$Superficie
precio_venta = inmuebles$`Precio Venta`
fecha_venta = inmuebles$`Fecha Venta`

#4.2 correlación pearson asignandole otra variable
cor(precio_venta,fecha_venta)

#4.3 llamar la librería corrplot
library(corrplot)
#4.4 gráficar

#4.5 intepretar

#5 Realizar regresión lineal explicando las victorias
regresion2 = lm(Wins ~ HomeRuns, data = BaseballHits1e)
summary(regresion2)
#6 Explicación del summary de la regresión punto 5

