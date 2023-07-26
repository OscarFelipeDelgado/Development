function invertirCadena(cadena){
    let cadenaInvetida="";
    for (let i = cadena.length - 1; i >=0; i--){
        cadenaInvetida += cadena[i];
    }
    return cadenaInvetida
}
cadena="ANIMAL"
invertida = invertirCadena(cadena);
console.log(`El texto "${cadena}" invertido es igual a: "${invertida}"`);