# Metodos_Estadisticos
## Curso de métodos estadísticos 2026

Curso de Métodos Estadísticos de tercer semestre de la Facultad de Ingeniería Forestal 2026

##Semana 2: Inicio del curso métodos estadísticos**
+ Revisar mi área de trabajo
+ Revisar la aplicación R
+ Revisar la aplicación RStudios
+ Crear mi cuenta en Github
+ Crear mi repositorio

##Semana 2 del curso de metodos estadisticos**
+ Crear credencial
+ Crear usuario en Git Bash

##Semana 3 del curso de metodos estadisticos**
+ Israel Treviño
+ 2141332
+ 19/08/2026

+ Importar datos
+ Usar la función "read.cvs" para importar datos de excel
+ Declarar la columna tratamiento como factor y sus 2 niveles
+ Utilice la función #as.factor#

Obs <- read.csv("Vivero.csv", header = TRUE)
Obs$IE

Obs$Tratamiento <- as.factor (Obs$Tratamiento)
Obs$Tratamiento

#Grafica----

#Boxplot de los datos

boxplot(Obs$IE ~ Obs$Tratamiento,
 xlab = "Factor = Fertilizante",
 ylab = "Indice (IE)",
 col = "ligthblue",
 main = "Unidad experimental"

##Semana 3 clase 4 de metodos estadisticos 20/08/2026**


# Conocer la varianza de cada grupo

df_ctrl <- subset(Obs, Tratamiento  == "Ctrl")
df_fert <- subset(Obs, Tratamiento = "Ctrl")
df_fert <-subset(Obs, Tratamiento == "Fert")

var(df_ctrl$IE)
var(df_fert$IE)

mean(df_ctrl$IE)
mean(df_fert$IE)

#La varianza del grupo fertilizado es 3 veces mayor que la
#Varianza del grupo control
#Pregunta
#¿Serán las varianzas iguales o diferentes estadisticamente?
shapiro.test(df_ctrl$IE)
shapiro.test(df_fert$IE)


#¿Provienen de una distribución normal ambos grupos?
shapiro.test(df_ctrl$IE)
#Grupo ctrl proviene de una distribución normal
shapiro.test(df_fert$IE)
#Grupo fert sigue una distribución normal

#¿Serán las varianzas iguales o diferentes estadisticamente?

var.test(df_ctrl$IE, df_fert$IE)
#Las varianzas de ambos grupos son iguales

#Existen diferencias entre los tratamientos

t.test(df_ctrl$IE, df_fert$IE, var.equal = TRUE)

#Si la pregunta es que el Fert es mayor que Ctrl
t.test(df_ctrl$IE, df_fert$IE, var.equal = T,
         alternative = "greater")
         
##Clase #5

# ¨two.sided¨, ¨greater¨, ¨less¨

#Importar datos de altura y diametro

erupciones <- data(¨faithful¨)
erupciones <- faithful

#Crear un grafico base para revisar el comportamiento
# de las dos variables numericas

plot(erupciones$waiting, erupciones$erupcions
xlab = ¨Tiempo de espera (min)¨
      ylab = ¨Duración de la erupción (min)¨
      pch = 19, col = ¨red¨)

#Conocer el rango del tiempo
range(erupciones$waiting)

#Conocer el rango de la erupcion
range(erupciones$eruptions)

boxplot(erupciones$eruptions)
fivenum(erupciones$eruptions)

cor.test(erupciones$aruptions, erupciones$waiting)


#Datos sin valor extremo
x1 <- c (1.2, 1.5, 1.7, 1.8)
mean(1.2, 1.5, 1.7, 1.8)
median(1.2, 1.5, 1.7, 1.8)
var <- c(1.2, 1.5, 1.7, 1.8)

#Datos con valor extremo
x2 <- c (1.2, 1.5, 1.7, 1.8)
mean(1.2, 1.5, 1.7, 1.8)
median (1.2, 1.5, 1.7, 1.8)
var <- c(1.2, 1.5, 1.7, 1.8)

median = c(1.42, 1.58, 1.71, 1.63, 1.85, 1.94, 2.06, 1.76, 1.68, 1.89, 2.14, 1.53, 1.79, 1.97, 2.23, 1.61, 1.82, 2.08, 1.73, 1.87, 1.91, 2.04, 1.76, 1.83, 2.12, 1.69, 1.57, 1.88, 2.21, 1.95, 1.74, 1.81, 2.09, 1.66, 1.92, 2.17, 1.72, 1.86, 2.02, 3.48)


medianRW =  c(1.42, 1.58, 1.71, 1.63, 1.85, 1.94, 2.06, 1.76, 1.68, 1.89, 2.14, 1.53, 1.79, 1.97, 2.23, 1.61, 1.82, 2.08, 1.73, 1.87, 1.91, 2.04, 1.76, 1.83, 2.12, 1.69, 1.57, 1.88, 2.21, 1.95, 1.74, 1.81, 2.09, 1.66, 1.92, 2.17, 1.72, 1.86, 2.02, 3.48)
median.default( c(1.42, 1.58, 1.71, 1.63, 1.85, 1.94, 2.06, 1.76, 1.68, 1.89, 2.14, 1.53, 1.79, 1.97, 2.23, 1.61, 1.82, 2.08, 1.73, 1.87, 1.91, 2.04, 1.76, 1.83, 2.12, 1.69, 1.57, 1.88, 2.21, 1.95, 1.74, 1.81, 2.09, 1.66, 1.92, 2.17, 1.72, 1.86, 2.02, 3.48))

medianRW c(1.42, 1.58, 1.71, 1.63, 1.85, 1.94, 2.06, 1.76, 1.68, 1.89, 2.14, 1.53, 1.79, 1.97, 2.23, 1.61, 1.82, 2.08, 1.73, 1.87, 1.91, 2.04, 1.76, 1.83, 2.12, 1.69, 1.57, 1.88, 2.21, 1.95, 1.74, 1.81, 2.09, 1.66, 1.92, 2.17, 1.72, 1.86, 2.02, 3.48)


range (1.42, 1.58, 1.71, 1.63, 1.85, 1.94, 2.06, 1.76, 1.68, 1.89, 2.14, 1.53, 1.79, 1.97, 2.23, 1.61, 1.82, 2.08, 1.73, 1.87, 1.91, 2.04, 1.76, 1.83, 2.12, 1.69, 1.57, 1.88, 2.21, 1.95, 1.74, 1.81, 2.09, 1.66, 1.92, 2.17, 1.72, 1.86, 2.02, 3.48)

rang

var c(1.42, 1.58, 1.71, 1.63, 1.85, 1.94, 2.06, 1.76, 1.68, 1.89, 2.14, 1.53, 1.79, 1.97, 2.23, 1.61, 1.82, 2.08, 1.73, 1.87, 1.91, 2.04, 1.76, 1.83, 2.12, 1.69, 1.57, 1.88, 2.21, 1.95, 1.74, 1.81, 2.09, 1.66, 1.92, 2.17, 1.72, 1.86, 2.02, 3.48)(1.42, 1.58, 1.71, 1.63, 1.85, 1.94, 2.06, 1.76, 1.68, 1.89, 2.14, 1.53, 1.79, 1.97, 2.23, 1.61, 1.82, 2.08, 1.73, 1.87, 1.91, 2.04, 1.76, 1.83, 2.12, 1.69, 1.57, 1.88, 2.21, 1.95, 1.74, 1.81, 2.09, 1.66, 1.92, 2.17, 1.72, 1.86, 2.02, 3.48)


var (1.42, 1.58, 1.71, 1.63, 1.85, 1.94, 2.06, 1.76, 1.68, 1.89, 2.14, 1.53, 1.79, 1.97, 2.23, 1.61, 1.82, 2.08, 1.73, 1.87, 1.91, 2.04, 1.76, 1.83, 2.12, 1.69, 1.57, 1.88, 2.21, 1.95, 1.74, 1.81, 2.09, 1.66, 1.92, 2.17, 1.72, 1.86, 2.02, 3.48)
var.test(1.42, 1.58, 1.71, 1.63, 1.85, 1.94, 2.06, 1.76, 1.68, 1.89, 2.14, 1.53, 1.79, 1.97, 2.23, 1.61, 1.82, 2.08, 1.73, 1.87, 1.91, 2.04, 1.76, 1.83, 2.12, 1.69, 1.57, 1.88, 2.21, 1.95, 1.74, 1.81, 2.09, 1.66, 1.92, 2.17, 1.72, 1.86, 2.02, 3.48)
