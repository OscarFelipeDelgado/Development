function generarTabla() {
    
    const numero = parseInt(document.getElementById("numero").value);
    const tablaBody = document.querySelector("#tabla tbody");

    //Iniciamos un ciclo que solamente realizará 10 veces y arrancará desde la posición o el índice 1
    for(let i=1; i<=10; i++){
        const resultado = numero*i;
        const row = document.createElement("tr");
        const numeroCell = document.createElement("td");
        const resultadoCell = document.createElement("td");
    
        //Esta línea nos ayuda a mostrar el número que se insertó
        numeroCell.textContent = numero;

        //Esta línea nos ayuda a mostrar los resultados en la tabla
        resultadoCell.textContent = resultado;

        //El appendChild nos ayuda a ingresar los elementos de forma continua, osea un elemento por debajo de la otra
        row.appendChild(numeroCell);
        row.appendChild(resultadoCell);
        //tablabody está capturando los datos de row y nos los muestra en uan posición en específico del HTML para que se visualicen
        tablaBody.appendChild(row);
    }
}