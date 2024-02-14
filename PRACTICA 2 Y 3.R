#PRÁCTICA 1
#1
x <- c(1,2,3,4,5)
y <- c(9.1,2.4,7.5,1.3,3.4)

#Un vector en R es una estructura de datos que almacena elementos del mismo tipo 
#(por ejemplo, números, caracteres, lógicos) en una secuencia ordenada
#La función c() se utiliza comúnmente para combinar elementos en un vector.

#La diferencia principal entre un vector y una lista en R es que un vector 
#solo puede contener elementos del mismo tipo de datos, mientras que una lista 
#puede contener elementos de diferentes tipos de datos.

#La longitud de los dos vectores que hemos definido previamente es 5, ya que
#ambos contienen cinco elementos.

#En cuanto a la diferencia entre integer y double en R:
  #Integer representa números enteros (ejemplo: 1, 2, 3) y se almacenan como
  #números enteros de 32 bits.
  #Double representa números en coma flotante (números con decimales) y se 
  #almacenan como números de doble precisión de 64 bits.

#La implicación computacional de emplear un vector con datos decimales (double)
#en comparación con un vector que almacena valores enteros (integer) es que los 
#números en coma flotante (double) requieren más espacio de almacenamiento y, 
#por lo tanto, pueden consumir más memoria. Además, las operaciones aritméticas 
#con números en coma flotante pueden ser ligeramente más lentas que las 
#operaciones con enteros, aunque en la mayoría de los casos la diferencia es 
#insignificante para datos de tamaño moderado. Sin embargo, los números en coma 
#flotante (double) permiten representar una gama más amplia de valores y 
#realizar operaciones con mayor precisión en comparación con los enteros.

#2
suma <- x+y
print(suma)

resta <- x-y
print(resta)

multiplicacion <- x*y
print(multiplicacion)

division <- x/y
print(division)

elevar <- x^y
print(elevar)

#3
y_cuadrado <- y^2
print(y_cuadrado)

#4
y_10 <- y*10
print(y_10)

#5
suma_25 <- y+25
print(suma_25)

#6
maximo_y <- max(maximo_y)
print(maximo_y)

#7
minimo_y <- (min(minimo_y))
print(minimo_y)

#8
primer_valor_absoluto <- abs(y[1])
print(primer_valor_absoluto)

#9
raiz_cuadrada <- sqtr(y)
print(raiz_cuadrada)

#10
suma_y <- sum(y)
print(suma_y)

#11
my_list <- list(c(x,y))
print(my_list)
typeof(my_list)
longitud_lista <- length(my_list)
print(longitud_lista)
#La longitud de la lista es de 10 valores

#En R, cuando se crea una lista que contiene vectores numéricos, el tipo de dato
#que se emplea para almacenar los valores numéricos depende de los datos que se
#proporcionan. En este caso, los vectores "x" y "y" que hemos utilizado son de 
#tipo double, ya que contienen valores con decimales. Por lo tanto, la lista 
#"my_list" también almacenará estos valores como tipo de dato double.

#En este caso en particular, aunque los valores del vector x son enteros, 
#cuando se realizan operaciones combinando x con y, que son números en coma 
#flotante, R convertirá implícitamente los enteros en números en coma flotante
#para realizar la operación. Esto se hace para garantizar que la operación se 
#realice de manera precisa y consistente, sin perder información o precisión en
#los resultados empleando la coerción (prioridad que tiene R de transformar un
#tipo de dato a otro.


#12
is.na(my_list)
#En el objeto ''my_list'' no exiten valores NA

#13
z <- c(29, NA, 12, 46, 73)
is.vector (z)
print(z)

#14
media_z <- mean(z, na.rm = TRUE)
print(media_z)
#Cuando intentas calcular la media de un vector que contiene un valor NA en R,
#el resultado será NA. Esto se debe a que el valor NA indica un dato faltante o
#no disponible, y R trata a NA como un valor que desconoce, por lo que no puede
#calcular la media de manera adecuada si hay valores desconocidos en el vector.
#La media del vector ''z'' en este caso es 40. Para calcular la media del vector
#z y evitar que el valor NA afecte al cálculo, puedes usar la función mean() con
#el argumento na.rm = TRUE, que le indica a R que elimine los valores NA antes 
#de calcular la media


#15
matriz <- matrix(nrow = 4,ncol = 3,
                 data = c(24,69,3,90,23,56,1,63,87,21,77,19))
print(matriz)
#Esto creará una matriz llamada "matriz" con 4 filas y 3 columnas, y los 
#valores se llenarán en orden de columna, es decir, de arriba hacia abajo y de
#izquierda a derecha,  comenzando desde la primera columna y pasando a la 
#siguiente columna después de llenar la primera.

#16
matriz <- matrix (nrow = 4,ncol = 3, byrow = TRUE
                  data = c(24,69,3,90,23,56,1,63,87,21,77,19)
                  

#17
a <- matrix(nrow = 3,ncol = 3, data = 1:9, byrow = FALSE)
b <- matrix(nrow = 3,ncol = 3, data = 10:18, byrow = FALSE)

#18
suma_matriz <- a+b
resta_matriz <- a-b
print(suma_matriz)
print(resta_matriz)

#19
matriz_1 <- matrix(matriz, nrow = 4, byrow = TRUE)
print(matriz_1)


#20
constante <- 2
matriz_multiplicada <- matriz*constante
print(matriz_multiplicada)

#21
matriz_mult <- a %*% b
print(matriz_mult)

#22
elemento_2_3 <- matriz_mult[2, 3]
print(elemento_2_3)
elemento_2_3_otra_vez <- matriz_mult[2, 3]
print(elemento_2_3_otra_vez)


#PRÁCTICA 2
#1
set.seed(123)
longitud_muestra <- 100
media <- 50
desviacion_estandar <- 10
num_cuentas <-rnorm(n = longitud_muestra, mean = media, sd = desviacion_estandar)
print(num_cuentas)

#2
media_muestra <- mean(num_cuentas)
print(media_muestra)

#3
mediana_muestra <- median(num_cuentas)
print(mediana_muestra)

#4
moda <- mode(num_cuentas)
as.numeric(moda)
print(moda)

#5
rango <- range(num_cuentas)
print(rango)

#6
cuartil_1 <- quantile(num_cuentas, 0.25)
print(cuartil_1)

#7
percentil_75 <- quantile(num_cuentas, 0.75)
print(percentil_75)

#8
varianza <- var(num_cuentas)
print(varianza)

#9
desviacion_estandar <- sd(num_cuentas)
print(desviacion_estandar)

#10
hist(num_cuentas, main = "Histograma de frecuencia de cuentas por yacimiento",
     xlab = "Número de cuentas", ylab = "Frecuencia", col = "skyblue")

#11
boxplot(num_cuentas, main = "Diagrama de caja de cuentas por yacimiento",
        xlab = "Cuentas por yacimiento", col = "lightblue")

#12
densidad <- density(num_cuentas)
plot(densidad, main = "Gráfico de densidad de cuentas por yacimiento",
     xlab = "Cuentas por yacimiento", col = "blue")

#13
cuentas_por_yacimiento <- table(num_cuentas)
barplot(cuentas_por_yacimiento, main = "Gráfico de barras de cuentas por yacimiento",
        xlab = "Número de cuentas", ylab = "Frecuencia", col = "lightgreen")

#14
tipo_artefacto <- c("Ceramica", "Metal", "Piedra", "Textil", "Madera")
material <- c("Arcilla", "Bronce", "Granito", "Algodón", "Roble")
periodo_cultural <- c("Azteca", "Inca", "Egipcio", "Persa", "Romano")
estado_conservacion <- c("Bueno", "Regular", "Maltratado", "Restaurado", "Desgastado")
ubicacion_artefacto <- c("Museo", "Sitio arqueologico", "Coleccion privada", "Mercado de antigüedades", "Almacen")

set.seed(123)  
muestras_tipo_artefacto <- sample(tipo_artefacto, 10, replace = TRUE)
muestras_material <- sample(material, 10, replace = TRUE)
muestras_periodo_cultural <- sample(periodo_cultural, 10, replace = TRUE)
muestras_estado_conservacion <- sample(estado_conservacion, 10, replace = TRUE)
muestras_ubicacion_artefacto <- sample(ubicacion_artefacto, 10, replace = TRUE)

tabla_frecuencia_tipo_artefacto <- table(muestras_tipo_artefacto)
tabla_frecuencia_material <- table(muestras_material)
tabla_frecuencia_periodo_cultural <- table(muestras_periodo_cultural)
tabla_frecuencia_estado_conservacion <- table(muestras_estado_conservacion)
tabla_frecuencia_ubicacion_artefacto <- table(muestras_ubicacion_artefacto)

print("Tabla de frecuencia para Tipo de Artefacto:")
print(tabla_frecuencia_tipo_artefacto)
print("Tabla de frecuencia para Material:")
print(tabla_frecuencia_material)
print("Tabla de frecuencia para Periodo Cultural:")
print(tabla_frecuencia_periodo_cultural)
print("Tabla de frecuencia para Estado de Conservación:")
print(tabla_frecuencia_estado_conservacion)
print("Tabla de frecuencia para Ubicación del Artefacto:")
print(tabla_frecuencia_ubicacion_artefacto)










