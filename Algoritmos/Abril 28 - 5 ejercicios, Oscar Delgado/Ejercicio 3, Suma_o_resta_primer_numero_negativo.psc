Proceso Suma_o_resta_primer_numero_negativo
	
	//Oscar Felipe Delgado
	
	Definir num1, num2, num3, suma, multi Como Real;
	
	Escribir "Ingrese 3 n�meros";
	Escribir "Si el primer n�mero es negativo obtendras una multiplicacion, sino, obtendras una suma";
	Leer num1, num2, num3;
	
	suma <- num1+num2+num3;
	multi<- (num1*num2*num3);
	
	Si num1<0 Entonces
		Escribir "El primer n�mero es negativo";
		Escribir "El producto de estos 3 n�meros es ",multi;
	SiNo
		Escribir "El primer n�mero es positivo";
		Escribir "La suma de estos 3 n�meros es: ",suma;
	FinSi
	
FinProceso
