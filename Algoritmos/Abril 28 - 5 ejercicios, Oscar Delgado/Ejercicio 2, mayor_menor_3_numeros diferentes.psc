Proceso mayor_menor_3_numeros
	
	//Oscar Felipe Delgado
	
	Definir num1, num2, num3 Como Real;
	
	Escribir "";
	Escribir "Digite 3 n�meros distintos";
	Leer num1, num2, num3;
	Escribir "";
	
	Si (num1=num2 y num1=num3) Entonces
		Escribir "Estos tres n�meros son iguales";
	SiNo
		Si (num1>num2 y num1>num3) Entonces
			Escribir "El n�mero ",num1," es el mayor";
		SiNo
			Si (num2>num3 y num2>num1) Entonces
				Escribir "El n�mero ",num2," es n�mero el mayor";
			SiNo
				Escribir "El n�mero ",num3," es el n�mero mayor";
			FinSi
		FinSi
	FinSi
	
	Escribir "";
	
FinProceso
