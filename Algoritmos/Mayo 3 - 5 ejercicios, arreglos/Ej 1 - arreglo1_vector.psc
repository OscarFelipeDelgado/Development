Proceso arreglo1_vector
	Definir i, suma, vector, elementos Como Entero;
	
	suma<-0;
	
	Escribir "Ingrese la cantidad de elementos que quiere ingresa al vector";
	Leer elementos;
	Escribir "";
	
	Dimension vector[elementos];
	
	Para i<-0 Hasta elementos-1 Con Paso 1 Hacer
		Escribir "Ingrese el valor para la posición: ",(i+1);
		Leer vector[i];
		suma<-suma+vector[i];
	FinPara
	
	Escribir "";
	Escribir "La suma del vector es: ",suma;
	
FinProceso
