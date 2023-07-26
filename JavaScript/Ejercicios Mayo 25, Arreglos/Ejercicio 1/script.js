//Declarar una variable que inicializará un arreglo vacío
let tareas = []

function agregarTarea(){

    //se declara una variable constante
    const tareaInput = document.getElementById("tarea");

    //creamos una variable que almacenará el valor del elemento input
    const tareaTexto = tareaInput.value;

    //verificacion de que si el valor de tareaTexto no es un dato vacío
    if(tareaTexto !==""){
        //el método nos ayuda agregar elementos
        tareas.push(tareaTexto);
        //establecer el valor del elemento input para borrar el contenido del campo de entrada
        tareaInput.value="";

        //llamaremos una función para que vaya actualizando la lista de tareas
        mostrarListaTareas();
    }

}

//declararemos una funcion
function mostrarListaTareas(){
    //declararemos una variable que haga referencia al elemento que tenga la lista
    const listaTareas = document.getElementById("lista-tareas");

    //se borrará el el contenido html del elemento listaTreas, dejandolo vacío

    listaTareas.innerHTML="";

    //Inicializaremos un bucle que recorra cada elemento del arreglo
    for(let i=0; i<tareas.length; i++){
        //Vamos a declarar una variable que almacene el valor del elemento
        const tarea = tareas[i];

        //Vamos a crear un nuevo elemento HTML que almacenará los datos
        const li = document.createElement("li");

        //Vamos a establecer el texto del elemento li para que me guarde el contenido en la lista
        li.textContent = tarea;

        listaTareas.appendChild(li);
    }
}