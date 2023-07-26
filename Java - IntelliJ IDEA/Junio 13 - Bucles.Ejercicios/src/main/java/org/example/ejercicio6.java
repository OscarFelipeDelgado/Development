package org.example;

import java.util.Scanner;

public class ejercicio6 {
    public static void main(String[] args) {
        //Escribe un programa que solicite al usuario ingresar una lista de números enteros y luego pida al usuario que ingrese un número para buscar en la lista. El programa debe determinar si el número ingresado por el usuario está presente en la lista e imprimir un mensaje apropiado.

        Scanner sc = new Scanner(System.in);
        System.out.println("\nVamos a armar una lista de números...");
        System.out.println("Ingresa la cantidad de números que quieres que tenga la lista:");
        int tamaño = sc.nextInt();

        // declaramos...
        // e inicializamos array, new int[tamaño] se utiliza para crear un nuevo vector de enteros en Java con un tamaño determinado, y vector = new int[tamaño] se utiliza para asignar ese vector recién creado a la variable vector.

        int[] lista = new int[tamaño];


        for (int i=0; i<tamaño; i++){
            System.out.println("Ingresa un número:");
            lista[i] = sc.nextInt();
        }

        System.out.println("Esta es la lista de números que ingresaste:");
        for (int i=0; i<tamaño; i++){
            System.out.print(lista[i] + " ");
        }

        System.out.println("\n\nIngresa un número que quieras buscar en el arreglo:");
        int numero = sc.nextInt();

        for (int i=0; i<tamaño; i++){
            if (lista[i]==numero){
                System.out.println("\nEl número " + numero + " si está en el arreglo"); break;
            } else if (i == tamaño){
                System.out.println("\nEl número no está en el arreglo");
            }
        }

    }
}
