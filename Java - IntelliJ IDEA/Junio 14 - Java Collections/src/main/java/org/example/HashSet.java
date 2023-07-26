package org.example;

import java.util.*;

public class HashSet {
    public static void main(String[] args)
    {
        /*Crearemos un conjunto de nombres y se verificará de que si un nombre esta almacenado en el conjunto*/
        /*Se declara un conjunto llamado nombres que guardará la cadena de texto
         * Se crea una instancia de clase HashSet y se asigna a la variable nombres
         * Se inicializa el conjunto vacío*/
        Set<String> nombres = new java.util.HashSet<>();
        //Agregaremos datos al conjunto con el elemento add
        nombres.add("Alejandro");
        nombres.add("Erika");
        nombres.add("Hector");
        nombres.add("Alexa");

        //Ingresamos el nombre que queremos buscar
        Scanner sc = new Scanner(System.in);
        System.out.println("Ingrese el nombre a buscar:");
        String nombreBuscado = sc.nextLine();

        // Verificaremos si el conjunto contiene el nombre buscado
        //.constains especifica si el dato ingresado esta en el cojunto
        if (nombres.contains(nombreBuscado)){
            System.out.println(nombreBuscado + " esta insertado en el conjunto");
            //Si el nombre buscado no se encuentra en el conjunto, entonces que nos envíe un msj
        } else{
            System.out.println(nombreBuscado + " no se encuentra almacenado dentro del conjunto");
        }
    }
}