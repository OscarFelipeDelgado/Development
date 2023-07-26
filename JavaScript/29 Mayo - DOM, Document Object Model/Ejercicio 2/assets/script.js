//Inicializar la funcion
function agregarElemento(){
    // Crea un nuevo elemento
    let nuevoElemento=document.createElement("li");

    // Crearemos un elemento para el contenido del elemento li
    // document.createTextNode nos ayuda a ingresar un texto en específico
    let textoElemento=document.createTextNode("Nuevo ELemento");
    
    //Vamos añadir el dato creado al elemento li
    //Nos ayuda agregar elementos una por debajo de la otra
    nuevoElemento.appendChild(textoElemento);

    //Obtiene la lista mediante su id
    let lista=document.getElementById("lista");

    //Agrega el nuevo dato a la lista
    lista.appendChild(nuevoElemento);

    title.textContent ='Titulo nuevo'
    title.innerText ='hola'
    title.innerHTML= '<p>Hola soy un parrafo</p>'

}