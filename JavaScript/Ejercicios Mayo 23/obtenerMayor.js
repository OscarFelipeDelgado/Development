function obtenerMayor(num1, num2){
    if (num1>num2){
        return true;
    } else{
        return false;
    }
}
let num1=17;
let num2=51;
mayor=obtenerMayor(num1, num2);

console.log(`El número mayor es: ${mayor? num1:num2}`);
