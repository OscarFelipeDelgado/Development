
SubProceso rellenarArray(num, filas, columnas)
	Definir i, j Como Real;
	
	Para i<-0 Hasta filas-1 Con Paso 1 Hacer
		Para j<-0 Hasta columnas-1 Con Paso 1 Hacer
			num[i,j]<-Azar(10);
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarArray(filas, columnas, num)
	Definir i, j Como Real;
	Escribir "";
	Para i<-0 Hasta filas-1 Con Paso 1 Hacer
		Para j<-0 Hasta columnas-1 Con Paso 1 Hacer
			Escribir "  ",num[i,j] Sin Saltar;
		FinPara
		Escribir "";
	FinPara
	Escribir "";
FinSubProceso

	
Proceso llenar_mostrar_array
	Definir num, filas, columnas Como Entero;
	
	Escribir "Ingrese la cantidad de filas, y de columnas";
	Leer filas;
	Leer columnas;
	
	Dimension num[filas, columnas];
	rellenarArray(num, filas, columnas);
	mostrarArray(filas, columnas, num);
	
FinProceso
	