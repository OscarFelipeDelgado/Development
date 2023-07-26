Proceso tienda
	//equipo DINAMITA
	Definir precio, cantidad, descuento, totalCompra Como Real;
	
	Escribir "  Ingresa el precio del producto";
	Leer precio;
	
	Escribir "  Escribe la cantidad del producto";
	Leer cantidad;
	
	totalCompra<-precio*cantidad;
	
	si totalCompra>100 Entonces
		descuento<-totalCompra*0.10;
		totalCompra<-totalCompra-descuento;
		Escribir "  El total con descuento es ",totalCompra;
	SiNo
		Escribir "  El total es ",totalCompra;
	FinSi
	
	
FinProceso
