package org.example;

import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;

public class HashSet_LlenandoPorConsola {
    public static void main(String[] args)
    {
        //Creamos un conjunto llamado nombres que guardará el dato
        Set<String> nombres = new HashSet<>();

        // Agregaremos datos al cojunto a través de la consola
        Scanner sc = new Scanner(System.in);
        //Agregaremos los datos y si lo queremos finalizar, colocamos el dato (fin)
        System.out.println("\nIngrese nombres (escriba 'revisar' para finalizar la inserción)");

        String nombre = sc.nextLine();
        while(!nombre.equals("revisar")){
            nombres.add(nombre);
            nombre = sc.nextLine();
        }

        System.out.println("\nIngrese el nombre a buscar (escriba 'finalizar' para finalizar la búsqueda y el programa)");
        String nombreBuscado= sc.nextLine();

        while(!nombreBuscado.equals("finalizar")) {

            //Verificaremos si el conjunto contiene el nombre buscado
            if (nombres.contains(nombreBuscado)) {
                System.out.println("\n"+nombreBuscado + " esta insertado en el conjunto");
            } else {
                System.out.println("\n"+nombreBuscado + " no esta almacenado, pero lo podemos agregar...");
                nombres.add(nombreBuscado);
                System.out.println("¡El nuevo usuario: " + nombreBuscado + ", se ingresó correctamente!");
            }

            //Solicitamos de nuevo el nombre que queremos buscar
            System.out.println("\nIngrese el nombre a buscar (escriba 'finalizar' para finalizar la búsqueda y el programa)");
            nombreBuscado = sc.nextLine();

        }
    }
}