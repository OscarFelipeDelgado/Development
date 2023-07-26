package org.example;

// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
public class Main {
    public static void main(String[] args) {
        //Calcular la suma de los números pares del 1 a 50
        int suma = 0;
        /* int i = 2 , especifica en que posición arrancará
         * i <= 50, especifica hatsa que tope llegará el recorrido
         * i +=2 , espefica que valla de dos en dos*/
        for (int i = 2; i<= 50; i += 2) {
            //Esta variable nos ayudará a sumar los siguientes valores del índice
            suma += i;
        }

        System.out.println("La suma de los números pares es: " + suma);

    }
}