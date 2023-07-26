function calcularDescuento(){
    //Obtener el valor ingreado por el usuario
    //Los Double y los Float se usan para tomar números en decimales
    //.value se usa para capturar el valor que se asignó al campo
    const precio = parseFloat(document.getElementById("precio").value);

    let descuento;

    //Calcular el descuento de los productos basado en el precio

    if (precio>=100 && precio<500){
        descuento=10;
    } else if(precio>=500 && precio<1000){
        descuento=20;
    } else {
        descuento=0;
    }

    //cacular el precio final despues de que se aplique el descuento

    const precioFinal = precio-(precio*(descuento/100));
    //Vamos a mostrar el resultado del precio del producto en el elemento p

    const resultadoElemento = document.getElementById("resultado");
    //textContent nos ayuda a ingresar un texto en un lugar específico
    //ToFixed se encarga de redondear el valor en decimales y lo que esta dentro del parentesis de cuanta cifras tendra el valor después del punto
    resultadoElemento.textContent = "El precio con descuento del producto es: $" + precioFinal.toFixed(2);
}