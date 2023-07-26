package org.example;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Diccionario {
    public static void main(String[] args) {

        //Realizaremos un diccionario de sinonimos

        /*Se declara una variable sinonimos que es un mapa que asocia cadenas de texto

         * Se crea una instancia de HashMap y se le asigna a la variable sinonimos

         * Resumén: Este código significa que sinonimos se utilizará para almacenar pares de palabras y sus sinonimos
         * correspondientes */
        Map<String , String> sinonimos = new HashMap<>();

        //Se le agregara una entrada al mapa de sinonimos
        sinonimos.put("feliz", "contento");
        sinonimos.put("triste", "acongojado");
        sinonimos.put("rápido", "veloz");

        //Inicializaremos las peticiones por consola
        Scanner sc = new Scanner(System.in);
        System.out.println("Ingrese una palabra para buscar: ");
        // Se almacena del dato ingresado en la variable palabra
        String palabra = sc.nextLine();
        // El valor ingresado se le asigna a la variable sinonimo, se llama sinonimos para buscar si hay un sinonimo
        // con esa palabra
        String sinonimo = sinonimos.get(palabra);

        if(sinonimo!= null) {
            System.out.println("El sinonimo de " + palabra + " es " + sinonimo);
        } else {
            System.out.println("No se encontró en el diccionario un sinonino para " + palabra);
        }
    }
}