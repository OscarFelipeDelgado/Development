package org.example;

import java.util.Scanner;

public class ejercicio6binario {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("""
                CONVERTIDOR A BINARIOS:
                                
                Digita un número decimal entero a convertir:""");
        int nDecimal = sc.nextInt();

        int nBinario = binario(nDecimal);
        System.out.println("\nEl número " + nDecimal + " en binarios es igual a:" + nBinario);
    }

    public static int binario(int nDecimal) {
        int nBinario = 0;
        int base = 1;

        while (nDecimal > 0) {
            int residuo = nDecimal % 2;
            nBinario += residuo * base;
            nDecimal /= 2;

            //para ir ubicando cada dígito binario en su lugar
            base *= 10;

            System.out.println(nDecimal +" "+ base + " "+nBinario);
        }

        return nBinario;
    }
}
