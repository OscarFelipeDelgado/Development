package org.example;

public class Main {
    public static void main(String[] args) {
        //Ejercicio para comprobar si un número es mayor que el otro

        //Declaramos las variables
        int num1=30;
        int num2=15;

        //Inicializaremos una comprobación
        if (num1>=num2){
            //if anidado
            if (num1==num2){
                System.out.println("Los números " + num1 + " y " + num2 + " son iguales");
            } else {
                System.out.println("El número " + num1 + " es mayor que el número " + num2);
            }
        } else {
            System.out.println("El número " + num2 + " es mayor que el número " + num1);
        }
    }
}