//Inicializaremos una variable que nos inicialice el servidor
const express = require("express");

//Le estoy proporcionando la ruta de los archivos y elementos que utilizaremos en el proyecto
const path = require("path");

//Crearemos una aplicación con el servidor de express
const app = express();

//El "/" nos ayuda a ubicar todos los archivos que están dentro de mi proyecto
app.get("/", (req, res)=>{
    //el join nos ayuda a unir todos los argumentos que expecifiquemos
    //El path nos ayuda a ubicar los archivos que queremos insertar
    //El sendFile nos ayuda a transferir el archivo a la ruta dada
    res.sendFile(path.join(__dirname + "/index.html"));

});

//Activaremos las conexiones

//El lsiten nos ayuda a activar la conexión
app.listen(3000, () =>{
    console.log("el servidor corriendo en el puerto", 3000);
});
