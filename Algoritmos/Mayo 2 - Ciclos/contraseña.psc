Proceso contrasena_1
	
	Definir contador Como Entero;
	Definir contrasena Como Caracter;
	Definir acierto Como Logico;
	
	contador<-0;
	acierto<-Falso;
	
	Mientras (contador< 3 y acierto=Falso) Hacer
		
		Escribir "Introduzca la clave";
		Leer contrasena;
		
		Borrar Pantalla;
		
		contador<-contador+1;
		
		si (contrasena="admin123") Entonces
			Escribir "La contrase�a es correcta";
			acierto<-Verdadero;
		SiNo
			Escribir "La contrase�a es incorrecta";
			Escribir "Intentos: ",contador;
		FinSi
		
		Escribir "";
		
	FinMientras
	
	si	acierto=Falso Entonces
		Escribir "Ya no tiene m�s intentos";
		Escribir "";
	FinSi
	
FinProceso
