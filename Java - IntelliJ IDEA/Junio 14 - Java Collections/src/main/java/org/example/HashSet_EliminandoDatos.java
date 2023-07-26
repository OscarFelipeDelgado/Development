/*Ejercicio de Eliminación de Datos Duplicados:*/

package org.example;

import java.util.*;
import java.util.HashSet;
import java.util.Set;

public class HashSet_EliminandoDatos {
    public static void main(String[] args)
    {

        /*Se declara una variable números de tipo List
         * Se crea una lista de enteros utilizando el List.of() y se asigna la variable números
         * Lis.of nos ayuda a devolver una lista
         * */
        List<Integer> numeros = List.of(1, 2, 3, 4, 5, 1 ,2, 3);
        /*Set nos ayuda capturar los datos
         * Crearemos una nueva instancia que es HashSet
         * Se pasa la lista de números cómo argumento al constructor, HashSet nos ayuda a eliminar los elementos duplicado
         * y se conservarán números únicos que no se repitieron*/
        Set<Integer> numerosUnicos = new HashSet<>(numeros);
        /*Se muestran los númerois que quedaron en la consola*/
        System.out.println("Numeros únicos: ");
        /*Se inicia un bucle for que recorrera cada elemento del array (conjunto o colección)
         *
         * En cada interación se asigna el valor del elemento actual a la variable num de tipo Integer*/
        for (Integer num: numerosUnicos){
            System.out.println(num);
        }

    }
}