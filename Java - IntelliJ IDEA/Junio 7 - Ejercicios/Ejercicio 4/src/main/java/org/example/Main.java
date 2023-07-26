package org.example;

// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
public class Main {
    public static void main(String[] args) {
        //Ejercicio que contenga múltiples  operaciones

        //Declaración de las variables
        int num1=65;
        int num2=60;


        //Esta es la mejor forma de referenciar y hacer operaciones
        int suma=num1+num2;
        int resta=num1-num2;
        int multi = num1*num2;
        float div= (float)num1/num2;


        //Realizaremos las respectivas operaciones
        System.out.println("El resultado de la suma es: "+(num1+num2));
        System.out.println("El resultado de la resta es: "+(num1-num2));
        System.out.println("El resultado de la multiplicación es: "+(num1*num2));
        System.out.println("El resultado de la división es: "+div);
    }
}