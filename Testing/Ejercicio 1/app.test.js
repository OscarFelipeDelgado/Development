//Importaremos el módulo de 'supertest para usarlo en las pruebas
const request = require('supertest');

//Importaremos el archivo '/app.js' y asignaremos su contenido a una variable
const app = require('./app');

/**Iniciamos un bloque de descripción para agrupar todas las pruebas relacionadas */
describe('Pruebas de la aplicación', () =>{
    
    //El it nos ayuda a inicializar una prueba individual con la descripción de lo que va a realizar
//El asyn se realiza para que la prueba no s ejecute siempre y cuándo tenga los requerimientos que desea realizar el testing

    it('Debería devolver una lista de usuarios', async () => {

    // Realizaremos una solicitud GET teniendo la  ruta, utilizando la aplicación app a traves de la variable request. Y la respuesta de la solicitud lo recibirá la variable responde
    //El await nos ayuda a decirnos que él espera a mostrarnos los datos siempre y cuándo tenga la ruta
    const response = await request(app).get('/api/usuarios');
    //Se utiliza la función expect para comprobar que el estado de la respuesta (response.status) sea igual a 200(todo salió exitosamente).
    expect(response.status).toBe(200);
    //Se utiliza la función expect para comprobar que el cuerpo de la respuesta (response.body) sea igual a la lista de los usuarios que creamos anteriormente.
    expect(response.body).toEqual([
        {id: 1, nombre: 'Juan'},
        {id: 4, nombre: 'Alejandro'},
        {id: 3, nombre: 'Rafael'}
    ]);
});

//El it nos ayuda a inicializar una prueba individual con la descripción de lo que va a realizar
//El asyn se realiza para que la prueba no s ejecute siempre y cuándo tenga los requerimientos que desea realizar el testing
it('Debería agregar un nuevo usuario', async() =>{

    //Crearemos un objeto llamado nuevoUsuario con las propiedades id  y nombre, a parte con ello va a representar el usuario que se va a agregar
    const nuevoUsuario = { id: 4, nombre: 'Alexandra'};
    // Realiza una solicitud POST teniendo la ruta, utilizando la aplicación app y enviando el contenido los datos del nuevoUsuario. 
    const response = await request(app)
    .post('/api/usuarios')
    .send(nuevoUsuario);
    /**Se utiliza la función expect para comprobar que el estado de la respuesta sea igual a 201(creado un nuevo usuario exitosamente)*/
    expect(response.status).toBe(201);
    /**Estamos comprobando que el cuerpo de la respuesta este el dato del nuevo usuario que se envío*/
    expect(response.body).toEqual(nuevoUsuario);
    /**Verifica que el usuario fue agregado correctamente al arreglo */
    const usuarioActualizados = await request(app).get('/api/usuarios');
    /**Se comprueba que el cuerpo de la repsuesta contenga el objeto nuevoUsuario que se agrego correctamente*/
    expect(usuarioActualizados.body).toContainEqual(nuevoUsuario);
   });
});