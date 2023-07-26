function calcularFactorial(num1){
    let fact=0;
    for (i = 1; i <= num1; i++){
        fact = fact+i;
    }
    return fact;
}
let num1 = 4;
let factorial=calcularFactorial(num1);
console.log(`El factorial de ${num1} es igual a: ${factorial}`);

