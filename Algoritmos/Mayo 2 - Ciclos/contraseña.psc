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
			Escribir "La contraseña es correcta";
			acierto<-Verdadero;
		SiNo
			Escribir "La contraseña es incorrecta";
			Escribir "Intentos: ",contador;
		FinSi
		
		Escribir "";
		
	FinMientras
	
	si	acierto=Falso Entonces
		Escribir "Ya no tiene más intentos";
		Escribir "";
	FinSi
	
FinProceso
