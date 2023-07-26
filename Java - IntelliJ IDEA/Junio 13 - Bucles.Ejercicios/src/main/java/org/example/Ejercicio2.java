package org.example;

public class Ejercicio2 {
    public static void main(String[] args) {

        //Imprimir los dígitos de un número en orden inverso
        int numero=12345;
        while (numero!=0){
            int digito = numero % 10;
            System.out.print(digito);
            numero /= 10;
        }
    }
}
