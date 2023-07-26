package ejercicio2;

import java.util.Scanner;

public class bienvenida {
    public static void main(String[] args) {
        //Le solicitaremos el dato al usuario
        System.out.println("\nIngresa tu nombre");

        //Crearemos unas peticiones en la consola medainte la librería de 'Scanner'
        Scanner sc = new Scanner(System.in);

        //declaro una cadena de texto llamada 'nombre'
        String nombre = sc.nextLine();

        System.out.println("\nBienvenido de nuevo, " + nombre);


    }
}
