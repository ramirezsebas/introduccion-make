# objetivo -> El Objetivo es lo que queremos hacer.
# dependencias -> son los archivos que se necesita para poder realizar el objetivo.
# instrucciones -> Serie de comandos que se determina.

# objetivo: dependencias
# 	instruccion 1
# 	...
# 	instruccion N

# Creamos una Variable
OBJFILE = main.o salida.o calculadora.o
BINARIO = programa

num1 = 10
# Variable de Expansion Simple(Referencia a una variable pero utiliza el valor hasta ese momento) Resultado: 10 12
num2 := $(num1) 12

# Variable de Expansion Recursiva(Referencia a una variable pero utiliza el valor Nuevo que se asigno) Resultado: 100 12
num2 = $(num1) 12

num1 = 100

# Objetivo por defecto en caso de no especificar el objetivo.
default: programa

# Objetivo que compila los archivos .o en un archivo binario ./programa
programa: $(OBJFILE)
	gcc -o $(BINARIO) $(OBJFILE)

# Objetivo que genera main.o
main.o: main.c funciones.h
	gcc -c main.c

# Objetivo que genera salida.o
salida.o: salida.c funciones.h
	gcc -c salida.c 

# Objetivo que genera calculadora.o
calculadora.o: calculadora.c funciones.h
	gcc -c calculadora.c 

# Objetivo que elimina todos los archivos .o
clean:
	rm -f $(BINARIO) $(OBJFILE)

#Objetivo que permite imprimir(Usamos @ para evitar que se muestre en consola el comando.)
imprimir:
	@echo $(num1)
	@echo $(num2)