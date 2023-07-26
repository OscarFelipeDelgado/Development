package org.relojes;

public class Main {
    public static void main(String[] args) {
        Reloj reloj1= new Reloj("Casio","G-Shock",69.900);
        Reloj reloj2= new Reloj("Rolex","Submarine",200000);
        Reloj reloj3= new Reloj("Seiko","Presage",150000);

        //Los métodos getters siempre deben estar inicializados en la clase, porque si no, en la invocación en la clase main, me lanzará error
        System.out.println("\n---------------------------------------");
        System.out.println("---------------------------------------");
        System.out.println("Reloj 1: ");
        System.out.println("Marca : "+reloj1.getMarca());
        System.out.println("Modelo : "+reloj1.getModelo());
        System.out.println("Precio: $"+reloj1.getPrecio());
        System.out.println("---------------------------------------");

        System.out.println("---------------------------------------");
        System.out.println("Reloj 2: ");
        System.out.println("Marca : "+reloj2.getMarca());
        System.out.println("Modelo : "+reloj2.getModelo());
        System.out.println("Precio: $"+reloj2.getPrecio());
        System.out.println("---------------------------------------");

        System.out.println("---------------------------------------");
        System.out.println("Reloj 3: ");
        System.out.println("Marca : "+reloj3.getMarca());
        System.out.println("Modelo : "+reloj3.getModelo());
        System.out.println("Precio: $"+reloj3.getPrecio());
        System.out.println("---------------------------------------");
    }
}
