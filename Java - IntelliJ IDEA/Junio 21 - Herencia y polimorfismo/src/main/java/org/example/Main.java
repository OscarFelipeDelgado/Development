package org.example;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        //Asignamos los valores que tendra la Persona1
        Persona p1 = new Persona("Ana", "Navarro", 24);

        Trabajador worker1 = new Trabajador("Oscar", "Delgado", 22, 250000);
        Trabajador worker2 = new Trabajador("Felipe", "Alfonso", 22, 350000);
        Trabajador worker3 = new Trabajador("Gustavo", "Lopez", 22, 450000);

        //Inicializando una lista que tendrá almacenado los datos de los trabajadores y personas
        ArrayList<Persona> personasLista = new ArrayList<Persona>();
        personasLista.add(p1);
        personasLista.add(worker1);
        personasLista.add(worker2);
        personasLista.add(worker3);

        for (int i=0; i < personasLista.size(); i++){
            System.out.println("------------------------------");
            personasLista.get(i).mostrarInformacion();
            //en las listas usamos el get(i), para acceder a la posición de la lista o del "arreglo"
        }

    }
}