function verificarPar(numero) {
    // == compara solo el valor
    // === compara tanto el valor, como el tipo de variable
    if (numero % 2 === 0) {
        return true;
    } else {
        return false;
    }   
    // el condicional else siempre debe estar por fuera de la llave del condicional SI (if)
}
let num = 51;
let ParResultado = verificarPar(num);
//Impresión del resultado en la consola
console.log(`¿El número ${num} es par? ${ParResultado ? 'Sii' : 'No señor'}`);
