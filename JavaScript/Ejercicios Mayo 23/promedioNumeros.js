function calcularPromedio(numeros){
    //creamos una variable que  se inicializará en 0
    let suma = 0;

    //creamos un ciclo que va recorrer cada elemento el array números
    for(let i = 0; i < numeros.length; i++){
        //Estamos sumando el número actual al acumulador(indices)
        suma += numeros[i];
    }
    //Estamos calculando el promedio dividiendo la suma entre la cantidad de elementos
    let promedio = suma / numeros.length;
    //Para que nos devuelva el promedio calculado
    return promedio;
}

//Vamos a llamar a la funtion
let listaNumeros = [5, 8, 12, 3, 6];
//Vamos a llamar a la función
let resultadoPromedio = calcularPromedio(listaNumeros);

//impresión del resultado
console.log(resultadoPromedio);