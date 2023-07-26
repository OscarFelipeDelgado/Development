Proceso matriz_1
	Definir i, j, filas, columnas Como Entero;
	Definir matriz Como Entero;
	
	i<-0;
	j<-0;
	
	Escribir "";
	Escribir "  Matriz";
	
	Escribir "  Ingrese el número de filas";
	Leer filas;
	Escribir "  Ingrese el número de columnas";
	Leer columnas;
	Escribir "";
	
	Dimension matriz[filas,columnas];
	
	Para i<-0 Hasta filas-1 Hacer
		
		Para j<-0 Hasta columnas-1 Hacer
			Escribir "Ingrese el valor para la fila ",i+1," ,columna ",j+1;
			Leer matriz[i,j];
		FinPara
		
	FinPara
	
	Escribir "";
	Escribir "   MATRIZ";
	
	Para i<-0 Hasta filas-1 Hacer
		
		Escribir "  " Sin Saltar;
		
		Para j<-0 Hasta columnas-1 Hacer
			si i=0 Entonces
				Escribir "  _" Sin Saltar;
			FinSi
		FinPara 
		
		Escribir "";
		Escribir "  |" Sin Saltar;
		
		Para j<-0 Hasta columnas-1 Hacer
			Escribir " ",matriz[i,j]," " Sin Saltar;
		FinPara 
		
		Escribir "|" Sin Saltar;
		
		si	i=filas-1 Entonces
			Escribir "";
			Escribir "  " Sin Saltar;
		FinSi
		
		Para j<-0 Hasta columnas-1 Hacer
			si i=filas-1 Entonces
				Escribir "  -" Sin Saltar;
			FinSi
		FinPara 
		
	FinPara
	
	Escribir "";
	Escribir "";
	
FinProceso
