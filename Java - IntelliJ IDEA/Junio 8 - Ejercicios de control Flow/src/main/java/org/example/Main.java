package org.example;

import java.util.Scanner;


public class Main {
    public static void main(String[] args) {
        //Crear un programa que le pida al usuario una edad, si el usuario es mayor de 18, entonces que me imprima que es un adulto, si no es que es menor de edad/

        // Instanciamos la clase Scanner, para poder llamar sus métodos después, a travéz de la variable 'sc' o el nombre que le querramos poner, (Solicitarle los datos al usuario por el teclado (por consola))
        Scanner sc = new Scanner(System.in);
        // Solicitaremos el dato al usuario

        System.out.println("Ingrese su edad: ");
        //Aquí esta recibiendo el numero entero que se ingreso
        int edad = sc.nextInt();

        int altura = sc.nextInt();

        int peso = sc.nextInt();

        //Inicializamos el proceso de datos para realizar la comprobación
        if (edad >= 18) {
            System.out.println("Eres un adulto, envejeciste");
        } else {
            System.out.println("Eres menor de edad");
        }
    }
}