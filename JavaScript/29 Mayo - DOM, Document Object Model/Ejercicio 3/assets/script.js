// Obtenermos referencias a los elementos del DOM
const input = document.getElementById('myInput');
const list = document.getElementById('myList');

// Vamos agregar un event listener al campo de entrada para detectar la tecla "enter"
input.addEventListener('keyup', function(event){
    //Aquí estamos definiendo el evento que va a recibir, que es la tecla enter
    //el input.value !=='' verifica si el valor del elementono está vacío, si está diligenciado, se toma, si no, no capturará nada
    if(event.key ==='Enter' && input.value !==''){
        //crearemos un nuevo elemento de lista y lo agregaremos a la lista desordenada
        const newItem = document.createElement('li');

        //Insertaremos el contenido al html
        newItem.textContent = input.value;

        //Agregaremos el contenido a la etiqueta ul
        list.appendChild(newItem);

        //Limpiaremos el campo de entrada
        input.value = '';
    }
});