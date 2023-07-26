Proceso ejercicio_1_mayor_menor
	
	//Oscar Felipe Delgado
	
	Definir num1, num2 Como Real;
	
	Escribir "";
	Escribir "--------------------------------";
	Escribir "  Ingrese un número";
	Leer num1;
	Escribir "  Ingrese otro número";
	Leer num2;
	Escribir "--------------------------------";
	
	Si (num1>=num2) Entonces
		Si (num1=num2) Entonces
			Escribir "  Los números ",num1, " y ",num2, " son iguales";
		SiNo
			Escribir "  ",num1,"es mayor que ",num2;
		FinSi
	SiNo
		Escribir "  ",num2," es mayor que ",num1;
	FinSi
	Escribir "--------------------------------";
	Escribir "";
	
FinProceso
