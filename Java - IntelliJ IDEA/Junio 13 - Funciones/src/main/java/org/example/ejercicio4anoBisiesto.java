package org.example;

import java.util.Scanner;

public class ejercicio4anoBisiesto {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("""
                
                Escriba el año:""");

        int ano = sc.nextInt();
        String bis=bisiesto(ano);

        System.out.println("El año "+ano+bis+" es bisiesto");
    }

    public static String bisiesto(int ano){
        String bis;
        if ( (ano%4 == 0) && ((ano%100 != 0)||(ano%400==0)) ){
            bis=" si";
        } else {
            bis=" no";
        }
        return bis;
    }
}
