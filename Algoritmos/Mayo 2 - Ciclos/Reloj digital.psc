Proceso Reloi_digital
	
	//Oscar Felipe Delgado
	
	Definir horas, minutos, segundoss Como Entero;
	
	horas<-0;
	minutos<-0;
	segundoss<-0;
	
	Mientras Verdadero Hacer
     
		Escribir " " Sin Saltar;
		
		si horas<10 Entonces
			Escribir "0" Sin Saltar;
		FinSi
		Escribir horas,":" Sin Saltar;
		
		si minutos<10 Entonces
			Escribir "0" Sin Saltar;
		FinSi
		Escribir minutos,":" Sin Saltar;
		
		si segundoss<10 Entonces
			Escribir "0" Sin Saltar;
		FinSi
		Escribir segundoss Sin Saltar;
		
		
		segundoss<-segundoss+1;
		
		si segundoss=60 Entonces
			segundoss<-0;
			minutos<-minutos+1;
		SiNo
			si minutos=60 Entonces
				minutos<-0;
				horas<-horas+1;
			SiNo
				si horas=24 Entonces
					horas<-0;
				FinSi
			FinSi
		FinSi
		
		Esperar 1 segundo;
		
		Borrar Pantalla;
		
		Escribir "";
		
	FinMientras
	
FinProceso
