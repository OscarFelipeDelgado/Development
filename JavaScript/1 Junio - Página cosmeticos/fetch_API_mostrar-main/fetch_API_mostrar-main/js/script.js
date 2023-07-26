//Inicializar la variable que recibirá la API
let url = 'https://jsonplaceholder.typicode.com/users/'

// Inicializar el fetch que recibirá los datos
fetch(url)

//Crear un método json() qu va  traer los datos de la API
.then(response => response.json())

//Inicilizar para que nos muestre los datos
.then(data => mostrarData(data))

//Si al momento de que nos muestre los datos, hay un erro ,entonces que nos muestre un mensaje de que hay algo erroneo
.catch(error => console.log(error))

//Pra inicializar la función de mostraData
const mostrarData = (data) => 
{
    // Que nos muestre los datos que tiene data en la consola
    console.log(data)

    //Inicializaremos una variabl
    let body = ""

    //Inicializaremos un bucle
    for(let i =0; i < data.length; i++){
        //Aquí estamos especificando que datos queremos que se visualice en el navegador usando la API y el bucle 
        body+=`<tr><td>${data[i].id}</td><td>${data[i].name}</td><td>${data[i].email}</td></tr>`
    }

    //Referenciamos un dato del html para que nos muestre la info en el navegador
    document.getElementById('data').innerHTML = body
}
