Proceso requisitos_bachiller
	
	Definir bachiller, prueba, resultado Como Caracter;

	Escribir "Es usted bachiller? si/no";
	Leer bachiller;
	
	si bachiller="si" Entonces
		Escribir "Usted puede ingresar a la U";
	SiNo
		Escribir "Entonces debe presentar una prueba de acceso";
		Escribir "Desea presentarla en este momento si/no";
		Leer prueba;
		si prueba="si" Entonces
			Escribir "Resuelva:2+2";
			Leer resultado;
			
			si resultado="4" Entonces
				Escribir "Bienvenido a la universidad";
			SiNo
				Escribir "Estudia un poco m�s e int�ntalo la pr�xima vez";
			FinSi
		SiNo
			Escribir "Gracias por contactarnos, adi�s";
		FinSi
	FinSi
	
FinProceso
