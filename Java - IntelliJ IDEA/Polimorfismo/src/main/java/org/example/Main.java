package org.example;

class Usuario {
    private String nombre;
    private int edad;

    public Usuario(String nombre, int edad) {
        this.nombre = nombre;
        this.edad = edad;
    }

    public void imprimirDatos(){
        System.out.println("Nombre: " + nombre + ". Edad: " + edad);
    }
}

class Usuario1 extends Usuario {
    private String nivel;

    public Usuario1(String nombre, int edad, String nivel){
        super(nombre, edad);
        this.nivel = nivel;
    }

    @Override
    public void imprimirDatos(){
        super.imprimirDatos();
        System.out.println("Nivel: " + nivel);
    }
}

public class Main {
    public static void main(String[] args) {
        Usuario user1 = new Usuario("Alex", 28);
        Usuario1 user2 = new Usuario1("Galena", 4, "Superior");

        user1.imprimirDatos();
        user2.imprimirDatos();
    }
}