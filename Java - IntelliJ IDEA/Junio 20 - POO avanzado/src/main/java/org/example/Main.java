package org.example;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        //Nos ayuda a hacer saltos de línea
        sc.useDelimiter("\n");
        boolean salir = false;
        int opcion; //Va estar guardando la opción que elija el usuario

        Agenda agendaTelefonica = new Agenda(3);
        String nombre;
        int telefono;
        Contacto c;


        while (!salir){
            System.out.println("""
                    1. Añadir Contacto
                    2. Listar Contacto
                    3. Buscar Contacto
                    4. Eliminar Contacto
                    5. Contactos Disponibles
                    6. Agenda Llenar
                    7. Salir""");

            try {
                System.out.println("Selecciona una de las opciones");
                opcion = sc.nextInt();
                switch (opcion){
                    case 1 :
                        System.out.println("Escriba un nombre");
                        nombre = sc.next();
                        System.out.println("Escribe un teléfono");
                        telefono = sc.nextInt();

                        //creamos el contacto
                        c = new Contacto(nombre, telefono);
                        agendaTelefonica.aniadirContacto(c);
                        break;

                    case 2:
                        agendaTelefonica.listarContactos();
                        break;

                    case 3:
                        System.out.println("Ingrese el nombre a buscar");
                        nombre=sc.next();
                        agendaTelefonica.buscarporNombre(nombre);
                        break;

                    case 4:
                        //Eliminaremos los datos del contacto
                        System.out.println("Ingrese el nombre a eliminar");
                        nombre=sc.next();

                        c=new Contacto(nombre,0);
                        agendaTelefonica.eliminarContacto(c);
                        break;

                    case 5:
                        //Verificamos si hay espacios disponibles dentro de la agenda
                        System.out.println("Hay " + agendaTelefonica.huecosLibre() + "contactos libre(s)");

                    case 6:
                        if (agendaTelefonica.agendaLlena()){
                            System.out.println("La agenda está llena");
                        }   else {
                            System.out.println("Aún puedes ingresar datos a tu agenda");
                        }
                        break;

                    case 7:
                        salir=true;
                        break;

                    default:
                        System.out.println("Debes ingresar un dato del 1 al 7");
                }
            }
            catch (InputMismatchException exception){
                System.out.println("Debes ingresar números, no se permiten otro tipo de datos");
                sc.next();
            }
        }
    }
}