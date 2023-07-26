Proceso fecha
	Definir d,m,a Como Entero;
	Definir nombremes Como Caracter;
	
	Escribir "Ingrese su fecha de nacimiento";
	Escribir "";
	
	Escribir "Ingrese el día";
	Leer d;
	Escribir "Ingrese el número del mes";
	Leer m;
	Escribir "Ingrese el año";
	Leer a;
	Escribir "";
	
	si d<1 o d>31 Entonces
		Repetir
			Escribir "Día fuera de rango";
			Escribir "Ingrese un día válido";
			Leer d;
		Hasta Que d>0 y d<32
	FinSi
	
	si m<1 o m>12 Entonces
		Repetir
			Escribir "Mes fuera de rango";
			Escribir "Ingrese un mes válido";
			Leer m;
		Hasta Que m>0 y m<13
	FinSi
	
	si a<1 o a>2023 Entonces
		Repetir
			Escribir "Año fuera de rango";
			Escribir "Ingrese un año válido";
			Leer a;
		Hasta Que a>1800 y a<2023
	FinSi
	
	Segun m Hacer
		1: nombremes<-"Enero";
		2: nombremes<-"Febrero";
		3: nombremes<-"Marzo";
		4: nombremes<-"Abril";
		5: nombremes<-"Mayo";
		6: nombremes<-"Junio";
		7: nombremes<-"Julio";
		8: nombremes<-"Agosto";
		9: nombremes<-"Septiembre";
		10: nombremes<-"Octubre";
		11: nombremes<-"Noviembre";
		12: nombremes<-"Diciembre";
	FinSegun
	
	Escribir "";
	Escribir "  ",d," de ",nombremes," del ",a;
	Escribir "";
	
FinProceso