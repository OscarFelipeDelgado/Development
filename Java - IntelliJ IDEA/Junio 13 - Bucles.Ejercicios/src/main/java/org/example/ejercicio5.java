package org.example;

public class ejercicio5 {
    public static void main(String[] args) {
        //Escribe un programa que genere el siguiente patrón de números:
        //1
        //22
        //333
        //4444
        //55555

        for (int i=1; i<=5; i++){
            for (int j=1; j<=i; j++){
                System.out.print(i);
            }
            System.out.println();
        }
    }
}
