const express = require("express");//nos ayuda a llamar el paquete
const path = require("path");
const app = express(); // estamos inicializando el servidor

//app es el servidor de express
//.use() es para especificar que usaremos una carpeta
//Especificamos cuál carpeta queremos ingresar
//static nos hace referencia que solamente debe ingresar a la carpeta que nosotros le asignemos
app.use(express.static('public'));

app.get("/", (req, res) => {
    res.sendFile(path.join(__dirname + "/index.html"));
});

app.listen(3500, () => {
    console.log("el servidor corriendo en el puerto", 3500);
})