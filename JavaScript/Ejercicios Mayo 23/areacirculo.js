function calcularAreaCirculo(radio){
    let area = Math.PI * Math.pow(radio,2)
    return area;
}
    // Asignación de la variable radio que equivale a 5
    let radio = 5;
    let areaCirculo = calcularAreaCirculo(radio);
    //Imprimir el resultado en la consola
    console.log("El área del circulo de radio " + radio + " es: " + areaCirculo);