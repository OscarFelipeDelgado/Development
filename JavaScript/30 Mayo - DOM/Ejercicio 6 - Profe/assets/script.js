//Esperamos a que el DOM este completamente cargado
document.addEventListener("DOMContentLoaded", function(event) {
    //Obtenemos referencias a los elementos del DOM
    let imageUrlInput = document.getElementById("imageUrl");
    let addButton = document.getElementById("addButton");
    let imageGallery = document.getElementById("imageGallery");

    // Inicializaremos la función para agregar una imagen a la galeria
    function addImage() {
        //Inicializar una variable que reciba el valor del campo de entrada
        let imageUrl = imageUrlInput.value;

        //Inicializar un condicional
        if ( imageUrl !== "") {
            //Si el campo de entrada no esta vacío, si no que esta diligenciado, que crea y me guarde el elemento
            let imageContainer = document.createElement("div");

            //Le asignaremos a la variable los datos a la clase 
            //className nos ayuda a crear una clase
            imageContainer.className = "image-container";

            //Creamos una variable que almacene la imagen
            let image = document.createElement("img");

            //Aquí le especificamos que nos busque y nos guarde la imagen que se inserto en el campo de entrada
            image.src = imageUrl;

            //Inicializaremos el botón de eliminar
            let deleteButton = document.createElement("button");

            //Vamos a crear una clase que reciba los datos de  la variable
            deleteButton.className="delete-button";

            //Le vamos añadir el texto que aparecerá en el botón
            deleteButton.textContent = "Eliminar";

            //Agregaremos un listener al botón de eliminar
            deleteButton.addEventListener("click", function(){
                // Le diremos que nos elimine el elemento que se selecciono
                imageGallery.removeChild(imageContainer);
            });
            // Para agregar las imagenes 
            imageContainer.appendChild(image);

            // Para agregar el botón de eliminar, después de ingresar la imagén
            imageContainer.appendChild(deleteButton);

            // Para agregar la imagen al contenedor
            imageGallery.appendChild(imageContainer);

            //Nos resetea el campo de entrada, después de insertar la img
            imageUrlInput.value = ""; 
        }
    }
    //Inicializaremos un evento para el botón de agregar
    addButton.addEventListener("click", addImage);
});