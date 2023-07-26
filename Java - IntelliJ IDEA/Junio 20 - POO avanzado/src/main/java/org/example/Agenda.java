package org.example;

public class Agenda
{
    //Inicializamos un objeto con un array de datos
    private Contacto[] contactos;

    //Inicializamos los constructores
    public Agenda(){
        //El dato del arreglo hace referencia a la cantidad de digitos que se ingresarán con el # telefónico
        this.contactos = new Contacto[2];
    }

    // Inicializamos el tamaño que tendra de almacenamiento nuestra agenda telefónica
    public Agenda(int tamanio) {
        this.contactos = new Contacto[tamanio];
    }

    //Inicialización de los métodos de nuestra clase Agenda
    //Cuando trabajamos métodos void, no se retorna los datos
    public void aniadirContacto(Contacto c){
        if(existeContacto(c)) { // Indicamos si existe el contacto que vamos ingresar
            System.out.println("El contacto con ese nombre ya existe");
        } else if(agendaLlena()){ //Indicamos si nuestra agenda esta completa o no
            System.out.println("La agenda esta llena, no se pueden meter mas contactos");
        }
        else {
            boolean encontrado = false;
            // Inicializamos un bucle que va a recorrer el arreglo, si el datos que vamos a ingresar existe, no nos permitirá ingresarlo,
            // pero si no, el usuario pasara a verdadero y nos dirá que se ingreso correctamente a nuestro sistema
            for(int i=0; i < contactos.length && !encontrado; i++){
                if(contactos[i] == null) {
                    contactos[i] = c;
                    encontrado = true;
                }
            }
            if(encontrado){
                System.out.println("Se ha añadido");
            } else {
                System.out.println("No se ha podido añadir el usuario");
            }
        }
    }

    //Indicaremos un método para saber si un usuario ya existe o no
    public boolean existeContacto(Contacto c) {
        for (int i=0; i < contactos.length; i++){
            //null = vacio,
            // && = y
            if (contactos[i] != null && c.equals(contactos[i])){
                return true;
            }
        }
        return false;
    }

    //Inicializaremos un método para listar los contactos guardados en la agenda

    public void listarContactos() {
        if(huecosLibre() == contactos.length){
            System.out.println("No hay contactos para mostrar");
        } else {
            for (int i=0; i < contactos.length; i++){
                if(contactos[i] != null){
                    System.out.println(contactos[i]);
                }
            }
        }
    }

    //Inicializar un método para buscar un contacto mediante su nombre
    public void buscarporNombre(String nombre) {
        boolean encontrado = false;
        for (int i = 0; i < contactos.length && !encontrado; i++) {
            //Este caso se activa cuando el dato del usuario se encontro dentro del arreglo
            if (contactos[i] != null && contactos[i].getNombre().trim().equalsIgnoreCase(nombre.trim())) {
                System.out.println("Su telefono es: " + contactos[i].getNumero()); // Mostraremos el telefono del usuario que se busco
            }
        }
        //Este caso se activa cuando el dato del usuario no existe
        if(!encontrado) {
            System.out.println("No se ha encontrado el contacto que ingresaste");
        }
    }

    //Inicializaremos un método para especificar si dentro de la agenda hay campos vacíos para ingresar
    public int huecosLibre()
    {
        int contadorLibres = 0;
        for(int i=0; i < contactos.length; i++){
            if(contactos[i] == null){
                contadorLibres++;
            }
        }
        return contadorLibres;
    }

    //Inicializar el método para indicar si la agenda esta llena o no
    public boolean agendaLlena(){
        for (int i=0; i < contactos.length; i++){
            if(contactos[i] == null ) {
                return false; // indicamos que la agenda no esta llena
            }
        }
        return true; // Indicamos que la agenda esta llena
    }

    //Inicializaremos el método para eliminar un contacto
    public void eliminarContacto(Contacto c) {
        boolean encontrado = false;
        for (int i = 0; i < contactos.length && !encontrado; i++) {
            if (contactos[i] != null && contactos[i].equals(c)) {
                contactos[i] = null;
                encontrado = true; // Indicamos que ya se elimino
            }
        }
        if (encontrado) {
            System.out.println("Se ha eliminado el contacto");
        } else {
            System.out.println("No se elimino el contacto");
        }
    }
}