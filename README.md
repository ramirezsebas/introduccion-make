# Introduccion a Make
## Overview
Dado varios archivo de C. Para poder compilarlo y ejecutarlo.
```bash
    //Mediante Archivo Binarios
    gcc -o nombreArchivo archivo1.c archivo2.c archivo3.c ... archivoN.c
    ./nombreArchivo

    //Mediante Archivos Objetos
    gcc -c archivo1
        ...
    gcc -c archivoN
    gcc -o nombreArchivo archivo1.o archivo2.o archivo3.o ... archivoN.o

    

```

Como vemos se vuelve muy tedioso, por lo tanto podemos utiliar a lo que llamamos Make.

## Make
Un makefile es un archivo que indica un conjunto de reglas.

Creamos un archivo makefile.
Su formato es:
```
//COMPLETO SON REGLAS
//El Objetivo es lo que queremos hacer.
//Las Dependencias son los archivos que se necesita para poder realizar el objetivo.
//Las Instrucciones: Serie de comandos que se determina.

objetivo: dependencias
          instrucciones
```