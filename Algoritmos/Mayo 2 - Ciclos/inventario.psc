Proceso inventario
	Definir productos, opcion, opcion_agregar, opcion_eliminar, opcion_buscar, opcion_actualizar Como Entero;
	Definir pantalon, camisas, zapatos, cant Como Entero;
	
	opcion<-0;
	opcion_agregar<-0;
	opcion_eliminar<-0;
	opcion_buscar<-0;
	
	pantalon<-10;
	camisas<-10;
	zapatos<-10;
	
	cant<-0;

	Mientras opcion<5 Hacer
		
		opcion<-0;
		opcion_agregar<-0;
		opcion_eliminar<-0;
		opcion_buscar<-0;
		opcion_actualizar<-0;
		
		Escribir "";
		Escribir "Bienvenido al gestor de inventario.";
		Escribir "1. Agregar producto";
		Escribir "2. Eliminar producto";
		Escribir "3. Buscar producto";
		Escribir "4. Actualizar producto";
		Escribir "5. Salir";
		Escribir "Seleccione una opción: ";
		Leer opcion;
		
		Segun opcion Hacer
			
			1:  Mientras opcion_agregar<>4 Hacer
					
					Escribir "Que desea agregar?";
					Escribir "1. Pantalón";
					Escribir "2. Camisas";
					Escribir "3. Zapatos";
					Escribir "4. Salir";
					Leer opcion_agregar;
					
					Escribir "Que cantidad";
					Leer cant;
					
					Segun opcion_agregar Hacer
						1: pantalon<-pantalon+cant;
						2: camisas<-camisas+cant;
						3: zapatos<-zapatos+cant;
					FinSegun
					
				FinMientras
			2:	 Mientras opcion_eliminar<>4 Hacer
					
					Escribir "Que desea eliminar?";
					Escribir "1. Pantalón";
					Escribir "2. Camisa";
					Escribir "3. Zapatos";
					Escribir "4. Salir";
					
					Leer opcion_eliminar;
					
					Segun opcion_eliminar Hacer
						1: pantalon<-pantalon-cant;
						2: camisas<-camisas-cant;
						3: zapatos<-zapatos-cant;
					FinSegun
					
				FinMientras
				
			3:	 Mientras opcion_buscar<>4 Hacer
					
					Escribir "Que desea agregar?";
					Escribir "1. Pantalón";
					Escribir "2. Camisa";
					Escribir "3. Zapatos";
					Escribir "4. Salir";
					
					Leer opcion_buscar;
					
					Segun opcion_buscar Hacer
						1: Escribir "En el inventario hay ",pantalon," pantalones";
						2: Escribir "En el inventario hay ",camisas," camisas";
						3: Escribir "En el inventario hay ",zapatos, "zapatos";
					FinSegun
					
				FinMientras
				
			4:	 Mientras opcion_actualizar<>4 Hacer
					
					Escribir "Que desea agregar?";
					Escribir "1. Pantalón";
					Escribir "2. Camisa";
					Escribir "3. Zapatos";
					Escribir "4. Salir";
					
					Leer opcion_actualizar;
					
				FinMientras
		FinSegun
FinMientras
	
FinProceso
