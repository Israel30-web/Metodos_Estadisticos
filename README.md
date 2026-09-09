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
