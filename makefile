# objetivo -> El Objetivo es lo que queremos hacer.
# dependencias -> son los archivos que se necesita para poder realizar el objetivo.
# instrucciones -> Serie de comandos que se determina.

# objetivo:dependencias
#instrucciones:

programa: main.o salida.o calculadora.o
	gcc -o programa main.o salida.o calculadora.o

main.o: main.c funciones.h
	gcc -c main.c



salida.o: salida.c funciones.h
	gcc -c salida.c 


calculadora.o: calculadora.c funciones.h
	gcc -c calculadora.c 

clean:
	rm -f programa *.o