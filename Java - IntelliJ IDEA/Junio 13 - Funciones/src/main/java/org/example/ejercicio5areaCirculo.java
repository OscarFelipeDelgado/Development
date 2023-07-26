package org.example;

import java.util.Scanner;

public class ejercicio5areaCirculo {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("\nDigite el radio del circulo: ");
        double radio = sc.nextDouble();
        double area=calcularArea(radio);

        System.out.println("El area del círculo con radio "+radio+" es :"+area);
    }
    public static double calcularArea(double radio){
        return Math.PI * Math.pow(radio, 2);
    }
}
