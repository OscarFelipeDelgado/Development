package org.example;

public class Persona {
    private String nombre;
    private int edad;
    private String direccion;

    //constructor
    public Persona(String nombre, int edad, String direccion) {
        this.nombre = nombre;
        this.edad = edad;
        this.direccion = direccion;
    }

    //método para imprimir los atributos
    public void imprimirInformacion() {
        System.out.println("\n");
        System.out.println("Nombre: " + nombre);
        System.out.println("Edad: " + edad);
        System.out.println("Dirección: " + direccion);
    }


    // main------------------------------------------------------------------------
    public static void main(String[] args) {
        // Crear una instancia de Persona

        Persona felipe = new Persona("Oscar", 22, "Zipaquirá");

        // Imprimir la información de la persona
        felipe.imprimirInformacion();
    }
}
