package org.example;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        //Ejercicio para comprobar si un número es par o impar

        //Le solicitaremos el dato al usuario
        System.out.println("Ingrese el número");

        //Crearemos unas peticiones en la consola medainte la librería de 'Scanner'
        Scanner sc = new Scanner(System.in);

        //La variable estará almacenando el dato que ingresemos dentro de la consola
        int numero = sc.nextInt();


        if((numero % 2) == 0){
             System.out.println("\n"+numero + " es par");
        } else {
            System.out.println("\n"+numero + " es impar");
        }

    }
}

