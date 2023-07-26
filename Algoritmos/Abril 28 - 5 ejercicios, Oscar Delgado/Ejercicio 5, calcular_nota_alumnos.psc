Proceso calcular_nota_alumnos
	
	//5.) Calcular la nota de N alumnos, introduciendo su nota teórica (60%) 
	//    y su nota practica (40%). Mostrarlo por pantalla.
	
	//GRUPO 3
	
	Definir i, est, notateo, notaprac, ntotal, notaest, totalest Como Real;
	
	Escribir "------------------------------------";
	Escribir "  Ingrese el número de estudiantes";
	Escribir "------------------------------------";
	Leer totalest;
	
	Borrar Pantalla;
	
	Para est<-1 Hasta totalest Con Paso 1 Hacer
		
		Escribir "";
		Escribir "--------------------------------------------";
		Escribir "  Ingresa la nota teórica del alumno #",est;
		Leer notateo;
		Escribir "  Ingresa la nota practica del alumno #",est;
		Leer notaprac;
		
		ntotal<-(notateo*0.6)+(notaprac*0.4);
		
		Escribir " - - - - - - - - - - - - - - - - - - - - - - ";
		Escribir "";
		Escribir "  La nota total del estudante #",est," es: [",ntotal,"]";
		Escribir "";
		Escribir "--------------------------------------------";
		
		
	FinPara
	
FinProceso
