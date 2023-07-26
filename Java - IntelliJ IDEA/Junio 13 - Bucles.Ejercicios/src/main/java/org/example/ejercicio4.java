package org.example;

public class ejercicio4 {
    public static void main(String[] args) {

        int filas = 8;
        for (int i = 1; i <= filas; i++) {
            for (int j = filas; j >= i; j--) {
                System.out.print("  ");
            }
            for (int k = 1; k <= i; k++) {
                System.out.print("  * ");
            }
            System.out.println();
        }

    }
}
