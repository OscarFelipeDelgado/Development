package org.example;

import java.time.LocalDate;

// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
public class Main {
    public static void main(String[] args) {
        //Ejercicio de variables numéricas:
        int entero = 10;
        double decim = 3.14;
        float flotan = 20.22F;


        //sout nos ayuda a imprimir los datos en la consola (System.out.printIn()
        System.out.println("El valor del entero es: " + entero);
        System.out.println("El valor del double es: " + decim);
        System.out.println("El valor del flotante es: " + flotan  + "\n");


        //Ejercicio de variables booleanas
        boolean verdadero = true;
        boolean falso = false;

        System.out.println("El dato verdadero es: " + verdadero);
        System.out.println("El dato falso es: " + falso + "\n");


        //Ejercicio de variables de texto(cadena de caracteres)

        String nombre = "Alejandro";
        String apellido = "López";

        System.out.println("El nombre del usuario es: " + nombre);
        System.out.println("El apellido del usuario es: " + apellido + "\n");


        //Ejercicio de variables de caracteres
        char letra = 'A';
        char simbolo = '$';
        char numero = '5';

        System.out.println("La letra y el número que se obtuvo fue: " + letra + " y " + numero);
        System.out.println("El símbolo que se obtuvo es: " + simbolo + "\n");


        //Ejercicio de variables de fecha
        //El LocalDate nos ayuda a mostrar la fecha actual en la que estamos

        LocalDate fechaActual = LocalDate.now();

        System.out.println("La fecha actual es: " + fechaActual);

    }
}