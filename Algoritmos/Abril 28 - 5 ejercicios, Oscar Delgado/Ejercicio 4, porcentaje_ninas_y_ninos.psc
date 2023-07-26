Proceso porcentaje_ninas_y_ninos
	//Oscar Felipe Delgado
	Definir pninos, pninas, ninos, ninas, total Como Real;
	
	Escribir "Ingresa la cantidad de niños en el curso";
	Leer ninos;
	Escribir "Ingresa la cantidad de niñas en el curso";
	Leer ninas;
	
	total<-ninos+ninas;
	pninos<-(trunc((ninos/total)*1000))/10;
	pninas<-(trunc((ninas/total)*1000))/10;
	
	Escribir "El porcentaje de niños es del: ",pninos,"%";
	Escribir "El porcentaje de niñas es del: ",pninas,"%";
	
FinProceso
