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
