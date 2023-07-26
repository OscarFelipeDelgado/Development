Proceso vectores_ejercicio_3
	
	Definir x, opc, num1, num2, num3, div, divi, modulo, digitos, promedio, partEnt, parteDec Como Real;
	opc<-0;
	
	Repetir
		
		Escribir "";
		Escribir "    Menú Principal";
		Escribir "";
		Escribir " 1. Números Aleatorios";
		Escribir " 2. Vector Aleatorio(números pares elevados al cubo)";
		Escribir " 3. División y cosiente, 2 números";
		Escribir " 4. Cantidad de dígitos";
		Escribir " 5. Salir";
		
		Leer opc;
		
		Segun opc Hacer
			1:
				num1<-Aleatorio(1,100);
				Escribir  num1;
				num2<-Aleatorio(1,100);
				Escribir num2;
				num3<-Aleatorio(1,100);
				Escribir num3;
				promedio<-(num1+num2+num3)/3;
				Escribir promedio;
				partEnt<-trunc(promedio);
				parteDec<-promedio-partEnt;
				
			2:
				Escribir "Ingrese el tamaño del vector";
				Leer x;
				Dimension vector[x];
				
				Para i<-0 Hasta x-1 Hacer
					vector[i]<-Aleatorio(-50,50);
					si (vector[i] MOD 2 ) = 0 Entonces
						vector[i]<-vector[i]^3;
					FinSi
				FinPara
				Para i<-0 Hasta x-1 Hacer
					Escribir vector[i];
				FinPara
				
			3:
				Escribir "Ingresa el primer número";
				Leer num1;
				Escribir "Ingresa el segundo número";
				Leer num2;
				
				divi<-num1/num2;
				modulo<-num1 MOD num2;
				
				Escribir "El resultado de la division es: ",divi," y el módulo es: ",modulo;
				
			4: 
				Escribir "Ingresa un número";
				Leer num1;
				
				digitos<-0;
				
				Mientras num1>=1 Hacer
					num1<-num1/10;
					digitos<-digitos+1;
				FinMientras
				
				Escribir "El número ingresado tiene ",digitos," digitos";
				
			De Otro Modo: 
				Escribir "Hasta pronto";
				
		FinSegun
		
	Hasta Que opc=5;
	
FinProceso
