package org.example;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        CajeroAutomatico cajero = new CajeroAutomatico();

        System.out.println("------------------------------------");
        System.out.println("Cuanto dinero vas a meter al cajero?");
        double montoIngresado = sc.nextDouble();
        cajero.ingresar(montoIngresado);

        System.out.println("------------------------------------");
        System.out.println("Cuanto dinero vas a retirar?");
        double montoRetirado = sc.nextDouble();
        cajero.retirar(montoRetirado);

        System.out.println("------------------------------------");
        cajero.consultarSaldo();

    }
}