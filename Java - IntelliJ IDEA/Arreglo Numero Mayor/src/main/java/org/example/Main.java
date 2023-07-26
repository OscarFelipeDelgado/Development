package org.example;

import java.lang.reflect.Array;
import java.util.Arrays;

public class Main {

    public static int encontrarNumeroMasGrande(int[] arreglo){
        if(arreglo == null || arreglo.length ==0){
            throw new IllegalArgumentException("El arreglo no puede estar vacío");
        }
        int maximo = arreglo[0];
        for (int i=1; i<arreglo.length; i++){
            if (arreglo[i]>maximo){
                maximo=arreglo[i];
            }
        }
        return maximo;
    }

    public static void main(String[] args) {

        int[] numeros = {1,5,7,8,99,289};
        int maximo=encontrarNumeroMasGrande(numeros);
        System.out.println("El número más grande es: " + maximo);

        Arrays.sort(numeros);
        System.out.println("El número más grande es: " + numeros[numeros.length-1]);

    }
}

