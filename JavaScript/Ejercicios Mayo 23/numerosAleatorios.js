//nota: en java se le nombra métodos y en javascript funciones
function generarNumeroAleatorio(min, max){
    //Math.floor nos ayuda a redondear el número
    //Math.random nos ayuda a generar los números aleatorios
    //max nos ayuda a especificar el rango del máximo número
    //min nos ayuda a especificar el rango del mínimo que se va iniciar en los números aleatorios
    //+1 nos ayuda a capturar los rangos que especificamos anteriormente
    let numeroAleatorio = Math.floor(Math.random()*(max - min + 1)) + min;
    //Devuelve el número aleatorio generado
    return numeroAleatorio;
}
//rango minimo y máximo de los números aleatorios
let min = 1;
let max = 10;

let numeroAleatorio = generarNumeroAleatorio(min,max);
//impresión de los datos obtenidos
console.log(`El número aleatorio entre ${min} y ${max} es: ${numeroAleatorio}`);