Proceso vectores_ejercicio_2
	
	Definir i, vector1, vector2, elementos1, elementos2 Como Entero;
	
	Escribir "Vector A";	
	elementos1<-5;
	
	Dimension vector1[elementos1];
	Para i<-0 Hasta elementos1-1 Con Paso 1 Hacer
		Escribir "Ingrese el valor para la posición: ",(i+1);
		Leer vector1[i];
	FinPara
	
	Escribir "";
	Escribir "Vector B";
	elementos2<-5;
	
	Dimension vector2[elementos2];
	Para i<-0 Hasta elementos2-1 Con Paso 1 Hacer
		Escribir "Ingrese el valor para la posición: ",(i+1);
		Leer vector2[i];
	FinPara
	
	Escribir "";
	Escribir "Sumando los vectores A y B, en vector C";
	Escribir "";
	
	Escribir " Vector C:";
	Para i<-0 Hasta elementos2-1 Con Paso 1 Hacer
		Escribir " [",vector1[i]+vector2[i],"] " Sin Saltar;
	FinPara
	
	Escribir "";
	Escribir "";
	
FinProceso
