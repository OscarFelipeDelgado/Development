
Funcion numeroUsuario <- leerNumero ()
	Definir numeroUsuario Como Real;
	
	Repetir
		Escribir "Ingrese un n�mero entre 1 y 100";
		Leer numeroUsuario;
	Hasta Que numeroUsuario >= 1 y numeroUsuario <= 100;
FinFuncion

Funcion codigo <- comprobarNumero(numeroCorrecto, numeroUsuario)
	Definir codigo Como Real;
	
	si numeroUsuario = numeroCorrecto Entonces
		codigo<-0;
	SiNo
		Si numeroUsuario < numeroCorrecto Entonces
			codigo<--1;
		SiNo
			codigo<-1;
		FinSi
	FinSi
FinFuncion


Algoritmo adivinanza_numero
	Definir numeroCorrecto, numeroUsuario Como Real;
	Definir adivinar Como Logico;
	
	
	numeroCorrecto<-43;
	adivinar<-Falso;
	
	Mientras no adivinar Hacer
		numeroUsuario<-leerNumero();
		Segun comprobarNumero(numeroCorrecto, numeroUsuario) Hacer
			
		   -1:
				Escribir "Su n�mero esta por debajo del n�mero correcto";
			0:
				Escribir "N�mero correcto!!";
				adivinar<-Verdadero;
			1:
				Escribir "Su n�mero est� por encima del n�mero correcto";
		 
		FinSegun
	FinMientras
	
FinAlgoritmo
