package org.example;

import java.util.Scanner;

public class ejercicio3NumeroPrimo {
    public static void main(String[] args) {

        /*Números primos: Crea una función que determine si un número entero dado es primo.*/
        Scanner sc = new Scanner(System.in);

        // Ejemplo de uso del método esPrimo()
        System.out.println("Ejemplo de uso del método esPrimo()");
        int num = 17;
        boolean esPrimo = esPrimo(num);
        if (esPrimo) {
            System.out.println(num + " es un número primo");
        } else {
            System.out.println(num + " no es un número primo");
        }

        sc.close();
    }
    public static boolean esPrimo(int num) {
        if (num <= 1) {
            return false;
        }

        for (int i = 2; i <= Math.sqrt(num); i++) {
            if (num % i == 0) {
                return false;
            }
        }

        return true;
    }
}