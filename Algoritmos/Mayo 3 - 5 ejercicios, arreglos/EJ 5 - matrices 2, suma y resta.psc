Proceso matrices_2_suma_y_resta
	Definir i, j, opc, filas, columnas Como Entero;
	Definir matriz1, matriz2, matrizr Como Entero;
	
	i<-0;
	j<-0;
	
	Escribir "-----------------------";
	Escribir "  Matrices";
	Escribir " 1. Sumar matrices ";
	Escribir " 2. Restar matrices ";
	Escribir " 3. Salir ";
	Escribir "-----------------------";
	
	Leer opc;
	
	Borrar Pantalla;
	
	Escribir "";
	Escribir "  Ingrese el número de filas";
	Leer filas;
	Escribir "  Ingrese el número de columnas";
	Leer columnas;
	
	Borrar Pantalla;
	
	Escribir "";
	Escribir "Matriz 1";
	Dimension matriz1[filas,columnas];
	Para i<-0 Hasta filas-1 Hacer
		
		Para j<-0 Hasta columnas-1 Hacer
			Escribir "Ingrese el valor para la fila ",i+1," ,columna ",j+1;
			Leer matriz1[i,j];
		FinPara
		
	FinPara
	
	Escribir "";
	Escribir "Matriz 2";
	Dimension matriz2[filas,columnas];
	Para i<-0 Hasta filas-1 Hacer
		
		Para j<-0 Hasta columnas-1 Hacer
			Escribir "Ingrese el valor para la fila ",i+1," ,columna ",j+1;
			Leer matriz2[i,j];
		FinPara
		
	FinPara
	
	Segun opc Hacer
		
		1:	
			Escribir "";
			Escribir "   SUMA: MATRIZ RESULTANTE";
			Para i<-0 Hasta filas-1 Hacer
				
				Escribir "  |" Sin Saltar;
				
				Para j<-0 Hasta columnas-1 Hacer
					Escribir " ",matriz1[i,j] + matriz2[i,j]," " Sin Saltar;
				FinPara 
				
				Escribir "|";
				
			FinPara
			Escribir "";
			Escribir "";
			
		2:  
			Escribir "";
			Escribir "   RESTA: MATRIZ RESULTANTE";
			Para i<-0 Hasta filas-1 Hacer
				
				Escribir "  |" Sin Saltar;
				
				Para j<-0 Hasta columnas-1 Hacer
					Escribir " ",matriz1[i,j] - matriz2[i,j]," " Sin Saltar;
				FinPara 
				
				Escribir "|";
				
			FinPara
			Escribir "";
			Escribir "";
			
	  
	FinSegun

	
FinProceso
