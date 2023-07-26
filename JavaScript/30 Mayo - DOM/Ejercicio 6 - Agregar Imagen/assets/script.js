//Crearemos una galería de imágenes donde el usuario podrá agregar y eliminar imágenes con HTML, CSS y  Javascript.
function agregarFoto(){
    //Obtenemos las referencias de los datos del HTML
    let urlFoto = document.getElementById("urlFoto").value;
    let lista = document.getElementById("lista");

    //Inicializamos la lista no ordenada
    let nuevaFoto = document.createElement("img");

    //ASe establece ruta de la imagen, usando la propiedad 'src'
    nuevaFoto.src = urlFoto;

    //Insertamos nuestra variable de li, a nuestra lista de ul
    lista.appendChild(nuevaFoto);

}
