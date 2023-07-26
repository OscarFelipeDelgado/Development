function checkGuess()
//Cuerpo de la función
{
    //Generar un número aleatorio entre 1 y 10
    //(Math.random()*10) + 1; nos ayuda a generar un número aleatorio entre 1 y 10;
    const numeroAleatorio = Math.floor(Math.random()*10 + 1);
    const numeroAdivinado = parseInt(document.getElementById("guess").value);

    //Comprobar si el número adivinado es igual al número que se generó aleatoriamente
    if(numeroAdivinado === numeroAleatorio){
        //Alert nos ayuda a generar una ventana emergente
        alert("Felicidades!! Adivinaste el número");
    } else {
        let mensaje = "No adivinaste el número ";

        //comprobar  si el número adivinado es mayor o menor al número que se genera aleatoriamente

        if(numeroAdivinado > numeroAleatorio){
            mensaje += ", el número que ingresaste es mayor";
        } else {
            mensaje += ", el número que ingresaste es menor";
        }

        //Nos captura todos los mensajes que están dentro de la variable mensaje
        alert(mensaje);
    }
}