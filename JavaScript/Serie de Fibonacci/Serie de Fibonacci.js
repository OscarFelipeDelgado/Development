function fibonacci(num){
    let fibo=2;
    alert(0); alert(1);
    for(let i=1; i<num; i++){
        fibo = fibo + fibo-fibo;
        alert(fibo);
    }
}; 

var numeroString = prompt("Ingresa un número:"); // Captura el número como una cadena de texto
var num = parseInt(numeroString); // Convierte la cadena a un número entero

// Verifica si el número es válido
if (!isNaN(num)) {
  console.log("El número capturado es: " + num);
} else {
  console.log("No se ha ingresado un número válido.");
}

fibonacci(num);
