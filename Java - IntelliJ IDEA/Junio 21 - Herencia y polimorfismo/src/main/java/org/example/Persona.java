package org.example;

public class Persona {
    private  String nombre;
    private String apellidos;
    private int edad;

    public Persona() {
    }

    public Persona(String nombre, String apellidos, int edad) {
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.edad = edad;
    }

    public void mostrarInformacion(){
        System.out.println(nombre+" "+apellidos+" "+edad);
    }

}
