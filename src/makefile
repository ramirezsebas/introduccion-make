# objetivo -> El Objetivo es lo que queremos hacer.
# dependencias -> son los archivos que se necesita para poder realizar el objetivo.
# instrucciones -> Serie de comandos que se determina.

# objetivo: dependencias
# 	instruccion 1
# 	...
# 	instruccion N

# Objetivo por defecto en caso de no especificar el objetivo.
default: programa

# Objetivo que compila los archivos .o en un archivo binario ./programa
programa: main.o salida.o calculadora.o
	gcc -o programa *.o

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
	rm -f programa *.o