package org.example;

import java.util.Scanner;

public class ejercicio3 {
    public static void main(String[] args) {
        //Imprimir los números del 1 al limite puesto por el usuario
        Scanner sc = new Scanner(System.in);

        System.out.println("Ingrese el limite");
        /*El nextInt nos ayuda a tomar valores enteras*/
        int limite = sc.nextInt();

        /*Inicializamos el loop for*/
        for(int i = 1; i <= limite; i++){
            System.out.print(i + " ");
        }
    }
}
