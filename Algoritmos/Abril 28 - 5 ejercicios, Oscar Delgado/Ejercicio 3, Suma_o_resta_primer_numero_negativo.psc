Proceso Suma_o_resta_primer_numero_negativo
	
	//Oscar Felipe Delgado
	
	Definir num1, num2, num3, suma, multi Como Real;
	
	Escribir "Ingrese 3 números";
	Escribir "Si el primer número es negativo obtendras una multiplicacion, sino, obtendras una suma";
	Leer num1, num2, num3;
	
	suma <- num1+num2+num3;
	multi<- (num1*num2*num3);
	
	Si num1<0 Entonces
		Escribir "El primer número es negativo";
		Escribir "El producto de estos 3 números es ",multi;
	SiNo
		Escribir "El primer número es positivo";
		Escribir "La suma de estos 3 números es: ",suma;
	FinSi
	
FinProceso
