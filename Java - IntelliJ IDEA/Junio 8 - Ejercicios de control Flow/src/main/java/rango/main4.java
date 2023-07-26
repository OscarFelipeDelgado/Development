package rango;

import java.util.Scanner;

public class main4 {
    public static void main(String[] args) {
        //definimos variables
        double numero;
        boolean rango=false;

        //Instanciamos la clase Scanner
        Scanner sc = new Scanner(System.in);

        while (!rango){
            //Solicitamos el número al usuario
            System.out.println("\nIngresa un número entre 0 y 100");
            //leemos por consola el número dado por el usuario
            numero = sc.nextDouble();

            if (numero >= 0 && numero <= 100){
                System.out.println("Muy bien, número dentro del rango!");
                rango=true;
            } else {
                System.out.println("Fuera de rango, intentalo de nuevo");
            }
        }


    }
}
