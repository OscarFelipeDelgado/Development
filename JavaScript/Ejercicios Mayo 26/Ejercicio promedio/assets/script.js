/**Los arreglos siempre se inicializan con el let , ya que vamos a llenarlo con el flujo del código y si lo dejamos como constante , en definitiva lo dejaremos vacía */

//Incialiación del arreglo
let numeros = [];

//Inicialización de la función
function obtenerNumeros() {
    //Inicializar una variable que recibira datos de un elemento HTML
    const cantidadInput = document.getElementById("cantidad");

    //Inicializar una variable que recibirá el valor del campo input
    //parseInt se usa para que reciba datos enteros ej: 1, 15 , 17
    //parseDouble o parseFloat se usa para que reciba datos decimales
    //Este código almacenará la cantidad de números que se ingresen
    const cantidad = parseInt(cantidadInput.value);

    //Crearemos un condicional que verificará si la variable es mayor que cero
    if (cantidad > 0){
        //Si el condicional se cumple, entonces crearemos una variable que recibirá datos del documento HTML
        const listaNumeros = document.getElementById("lista-numeros");
        //Inicializar el dato que me insertará la info en el HTML
        //Las comillas se dejan vacías, por que allí estaremos ingresando la info
        listaNumeros.innerHTML = "";
      
        //Inicializaremos un bucle que se ejecutará dependiendo de la cantidad de números que ingresemos

        for(let i=0; i<cantidad; i++){
            //prompt nos ayuda a crear ventanas emergentes (popup) cómo el alert o cómo la librería swipper alert

            //Nos esta solicitando los números a ingresar para insertarlos en la lista
            // el i+1 va hacer que aumente el indice dependiendo de la cantidad de número a ingresar
            const numero = prompt("Ingrese el número " + (i+1) + ":");

            //El numero ingresado por el usuario, se almacenara dentro del arreglo
            //el método push nos ayuda a ingresar elementos al arreglo
            numeros.push(parseFloat(numero));

            //Creamos el elemento li para organizar la lista de números
            const li = document.createElement("li");
            //Aquí creamos un contenido que hará mostrar el número dentro de la lista
            li.textContent= numero;
            //Aquí creamos para que los números se ingresen una por debajo de la otra
            listaNumeros.appendChild(li);
        }
    }
}

//Cada función se debe definir de manera independiente y no por dentro de una que ya se inicializo

//Incializaremos la función de calcular el promedio

function calcularPromedio(){
    //Inicializaremos una variable que capture un elemento del HTML
    const resultadoElemento = document.getElementById("resultado")

    //Creamos un condicional
    if(numeros.length > 0) {
        // const suma: Esto declara una constante llamada "suma" donde se almacenará el resultado de la operación de reducción.
        // numeros: Es el array en el que se realizará la operación de reducción. Presumiblemente, numeros contiene una lista de valores numéricos.

        // Aquí es donde ocurre la operación de reducción en sí. El método reduce() toma dos argumentos: una función reductora y un valor inicial opcional.


        // La función reductora se define utilizando una función de flecha (total, numero) => total + numero. Esta función recibe dos parámetros: total y numero. El parámetro total representa el acumulador parcial que se actualiza en cada iteración, y el parámetro numero representa cada elemento del array numeros en cada iteración.

        // En cada iteración, la función suma el valor actual (numero) al acumulador parcial (total).

        // El segundo argumento de reduce() es el valor inicial opcional, que en este caso es 0. El valor inicial se asigna a la variable total en la primera iteración antes de que se aplique la función reductora. Si se omite el valor inicial, el primer elemento del array se utilizará como valor inicial y la reducción comenzará desde el segundo elemento.
        const suma = numeros.reduce((total, numero) => total + numero, 0);
        const promedio = suma/numeros.length;

        // Creamos un texto de contenido
        //El método toFixed nos ayuda a especificar la cantidad de decimales que queremos insertar
        resultadoElemento.textContent="El promedio es: " + promedio.toFixed(2);
        // Sino se insertan datos, que nos imprime el msj
    } else {
        resultadoElemento.textContent="No se ingresaron datos, por favor ingresalos";
    }
}