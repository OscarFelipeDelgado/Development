//Aquí estamos inicializando la variable que tendrá el servidor
const express = require('express');
// Aquí estamos instanciando la aplicación con el servidor de Express
const app = express();

//Estamos estableciendo que express maneje formatyo JSON en las solicitudes que innsertaremos
app.use(express.json());

/**Estamos creando un objeto JSON
 * 
 * Le estamos asignando las propiedades que tendra el objeto (id, nombre)
 * 
 * Estamos ingresando el contenido dentro de un arreglo o matriz de datos
 * 
 */
let usuarios = [
    {id: 1, nombre: 'Juan'},
    {id: 4, nombre: 'Alejandro'},
    {id: 3, nombre: 'Rafael'}
];


/**Aquí estamos creando una ruta para la solicitud GET a '/api/usuarios'. 
 * 
 * Cuando se realiza la solicitud GET, se ejecuta una función del controlador del requerimiento que recibira los objetos 'req' y 'res' para darnos la respuesta de la petición
 */
app.get('/api/usuarios', (req, res) =>{
    res.json(usuarios);
});

/**Se define una rutas para la solicitud POST a '/api/usuarios.'
 * 
 * Cuando se realiza la solicitud, se ejecutará una función para controlar la petición
 * 
 * La función obtiene el nuevo usuario y lo agrega al cuerpo del contenido utilizando 'req.body' y lo agrega al arreglo 'usuarios'
 * 
 * 
 * Luego de agregar el nuevo usuario al cuerpo, se establece un código de respuesta 201 (agregado y creado exitosamente) utilizando el metodo 'res.status(201)'.
 */

app.post('/api/usuarios', (req, res) => {
    const nuevoUsuario = req.body;
    usuarios.push(nuevoUsuario);
    res.status(201).json(nuevoUsuario);
});

/**Exportaremos el archivo 'app' para que pueda ser utilizado en otros archivos de la aplicación */

module.exports= app;