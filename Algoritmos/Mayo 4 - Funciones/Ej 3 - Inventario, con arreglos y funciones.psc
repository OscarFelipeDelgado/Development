Proceso Inventario
	Definir i, posicion, respuesta Como Entero;
	Definir cantidad, cantidades, precio, precios Como Real;
	Definir producto, productos Como Caracter;
	
	Dimension productos(100);
	Dimension cantidades(100);
	Dimension precios(100);
	
	posicion<-0;
	
	Repetir
		
		Escribir "";
		Escribir "Menú principal";
		Escribir "1. Agregar producto";
		Escribir "2. Buscar";
		Escribir "3. Eliminar";
		Escribir "4. Actualizar";
		Escribir "5. Salir";
		Leer respuesta;
		
		Segun respuesta Hacer
			1:
				Borrar Pantalla;
				Escribir "Nombre del producto";
				Leer producto;
				Escribir "Cantidad del producto";
				Leer cantidad;
				Escribir "Precio del producto";
				Leer precio;
				
				productos(posicion) <- producto;
				cantidades(posicion) <- cantidad;
				precios(posicion) <- precio;
				Escribir "El producto ha sido agregado exitosamente";
				
				posicion<-posicion+1;
				
				Escribir "Guardado en la posicion ",posicion;
			2: 
				Borrar Pantalla;
				Escribir "Ingrese el nombre del producto a buscar";
				Leer producto;
				Para i<-0 Hasta posicion-1 Con Paso 1 Hacer
					si	productos(i)=producto Entonces
						Escribir "El producto ha sido encontrado";
						Escribir productos(i);
						Escribir "Hay ",cantidades(i);
						Escribir "Vale ",precios(i);
					SiNo
						Escribir "El producto no ha sido encontrado";
					FinSi
				FinPara
			3:
				Escribir "Ingrese el nombre del producto a eliminar";
				Leer producto;
				Para i<-0 Hasta posicion-1 Con Paso 1 Hacer
					si	productos(i)=producto Entonces
						Escribir "El producto ha sido encontrado";
						Escribir "El producto ha sido ", producto," eliminado exitosamente";
						productos(i) <-"";
						cantidades(i) <-0;
						precios(i) <-0;
					SiNo
						Escribir "El producto no ha sido encontrado";
					FinSi
				FinPara
			4:
				Escribir "Ingrese el  nombre del producto a actualizar";
				Leer producto;
				Para i<-0 Hasta posicion-1 Con Paso 1 Hacer
					si	productos(i)=producto Entonces
						Escribir "El producto ha sido encontrado";
						Escribir productos(i);
						Escribir "Ingrese la nueva antidad del producto";
						Leer cantidad;
						Escribir "Ingrese el nuevo precio del producto";
						Leer precio;
						
						productos(i) <- producto;
						cantidades(i) <- cantidad;
						precios(i) <- precio;
						Escribir "El producto ha sido actualizado exitosamente";
						Escribir "Guardado en la posicion ",posicion;
					SiNo
						Escribir "El producto no ha sido encontrado";
					FinSi
				FinPara
			5:
				Escribir "";
				Escribir "***   Hora de almorzar    ***";
			De Otro Modo:
				Escribir "  Ingresa una opción válida";
		FinSegun
		
	Hasta Que respuesta=5;
	
FinProceso
