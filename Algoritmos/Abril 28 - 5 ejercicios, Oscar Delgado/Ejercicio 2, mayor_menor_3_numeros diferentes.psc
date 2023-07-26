Proceso mayor_menor_3_numeros
	
	//Oscar Felipe Delgado
	
	Definir num1, num2, num3 Como Real;
	
	Escribir "";
	Escribir "Digite 3 números distintos";
	Leer num1, num2, num3;
	Escribir "";
	
	Si (num1=num2 y num1=num3) Entonces
		Escribir "Estos tres números son iguales";
	SiNo
		Si (num1>num2 y num1>num3) Entonces
			Escribir "El número ",num1," es el mayor";
		SiNo
			Si (num2>num3 y num2>num1) Entonces
				Escribir "El número ",num2," es número el mayor";
			SiNo
				Escribir "El número ",num3," es el número mayor";
			FinSi
		FinSi
	FinSi
	
	Escribir "";
	
FinProceso
