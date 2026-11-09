costal <- c(87.7, 80.01, 77.28, 78.76, 81.52, 74.2, 80.71, 79.5, 77.87, 81.94,
            80.7, 82.32, 75.78, 80.19, 83.91, 79.4, 77.52, 77.62, 81.4, 74.89,
            82.95, 73.59, 77.92, 77.18, 79.83, 81.23, 79.28, 78.44, 79.01,
            80.47, 76.23, 78.89, 77.14, 69.94, 78.54, 79.7, 82.45, 77.29,
            75.52, 77.21, 75.99, 81.94, 80.41, 77.7)

#¿Que representa H0 y H1?
#  H0: Los costales pesan, en promedio 80kg.
#  H1: Los costales pesan, en promedio menos de 80kg.
  
#¿Pórque corresponde utilizar una prueba de una cola?
#Porque se utiliza una prueba uniateral de cola izquierda, porque la pregunta de investigación
#establece explicitamente que se desea determinar si la media es menor que 80 kg.
  
mean(87.7, 80.01, 77.28, 78.76, 81.52, 74.2, 80.71, 79.5, 77.87, 81.94,
     80.7, 82.32, 75.78, 80.19, 83.91, 79.4, 77.52, 77.62, 81.4, 74.89,
     82.95, 73.59, 77.92, 77.18, 79.83, 81.23, 79.28, 78.44, 79.01,
     80.47, 76.23, 78.89, 77.14, 69.94, 78.54, 79.7, 82.45, 77.29,
     75.52, 77.21, 75.99, 81.94, 80.41, 77.7)

Media = 87.7

sd(costal)
#Desviación Estandar = 3.056023

t.test(costal, mu = 80, alternative = "less")

#Estadistico t= -2.3644
#Grados de libertad= 43
#Valor de p= 0.01132
#Media observada= 78.91068

#p<0.05 Se rechaza H0 y se acepta H1 porque el valor de p es menor a 0.05.

#La conclusión es que existe evidencia suficiente para afirmar que el peso promedio de los costales es menor a 80 kg.
