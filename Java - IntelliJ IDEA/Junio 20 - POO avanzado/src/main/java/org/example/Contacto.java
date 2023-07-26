package org.example;

public class Contacto
{
    //Inicialización de nuestras variables
    private String nombre;
    private int numero;

    //Inicializamos un método que nos recibirá los parametros y nos enviará la información a la clase Main
    public Contacto(String nombre, int numero){
        this.nombre= nombre;
        this.numero= numero;
    }

    //Inicializando los datos que se ingresarán, tanto el nombre y el número del usuario
    public Contacto(String nombre){
        this.nombre= nombre;
        this.numero = 0;
    }

    //Inicialización de los getters y setters de nuestros atributos
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    //Inicializamos las comparaciones de los datos del nombre
    //trim nos ayuda a quitar los espacios en blanco
    //Esta comparación nos ayuda a que nuestro programa nos permita recibir los datos ya sea en minusculas o mayusculas (ignorando
    // el caso)
    public boolean equals(Contacto c) {
        if (this.nombre.trim().equalsIgnoreCase(c.getNombre().trim())){
            return true;
        }
        return false;
    }
    //Estamos devolviendo los datos del usuario en una lista (nombre y número del contacto)
    @Override
    public String toString() {
        return "nombre=" + nombre + ",teléfono=" + numero;
    }
}