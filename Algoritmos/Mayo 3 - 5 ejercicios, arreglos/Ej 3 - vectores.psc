Proceso vectores_ejercicio_3
	
	Definir x, i, opc, num1, num2, num3, div, divi, vector, modulo, digitos, promedio, partEnt, parteDec Como Real;
	opc<-0;
	
	Repetir
		
		x<-0;
		
		Escribir "-------------------------------------------------------";
		Escribir "    Men� Principal";
		Escribir "";
		Escribir " 1. N�meros Aleatorios";
		Escribir " 2. Vector Aleatorio(n�meros pares elevados al cubo)";
		Escribir " 3. Divisi�n y cosiente, 2 n�meros";
		Escribir " 4. Cantidad de d�gitos";
		Escribir " 5. Salir";
		Escribir "-------------------------------------------------------";
		
		Leer opc;
		
		Segun opc Hacer
			1:
				Borrar Pantalla;
				Escribir "";
				Escribir " N�meros aleatorios:" Sin Saltar;
				num1<-Aleatorio(1,100);
				Escribir " ",num1 Sin Saltar;
				num2<-Aleatorio(1,100);
				Escribir " ",num2 Sin Saltar;
				num3<-Aleatorio(1,100);
				Escribir " ",num3;
				
				promedio<-(num1+num2+num3)/3;
				partEnt<-trunc(promedio);
				parteDec<-promedio-partEnt;
				
				Escribir "";
				Escribir " Promedio: ",promedio;
				Escribir " Parte Entera: ",partEnt;
				Escribir " Parte decimal: ",parteDec;
				Escribir "";
				
			2:
				Borrar Pantalla;
				Escribir "Ingrese el tama�o del vector";
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
				Borrar Pantalla;
				Escribir "Ingresa el primer n�mero";
				Leer num1;
				Escribir "Ingresa el segundo n�mero";
				Leer num2;
				
				divi<-num1/num2;
				modulo<-num1 MOD num2;
				
				Escribir "";
				Escribir "El resultado de la division es: ",divi,", el m�dulo o cociente es: ",modulo;
				
			4: 
				Borrar Pantalla;
				Escribir "Ingresa un n�mero";
				Leer num1;
				
				digitos<-0;
				
				Mientras num1>=1 Hacer
					num1<-num1/10;
					digitos<-digitos+1;
				FinMientras
				
				Escribir "El n�mero ingresado tiene ",digitos," digitos";
				
			De Otro Modo: 
				Escribir "Hasta pronto";
				
		FinSegun
		
	Hasta Que opc=5;
	
FinProceso
