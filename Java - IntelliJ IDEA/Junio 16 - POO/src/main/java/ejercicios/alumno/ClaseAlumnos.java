package ejercicios.alumno;

import java.util.List;

public class ClaseAlumnos {
    //Luego, crea una clase llamada "ClaseAlumnos" que tenga una lista de objetos de tipo "Alumno". La clase "ClaseAlumnos" debe tener métodos para agregar alumnos a la lista, mostrar la lista de alumnos y calcular el promedio de los promedios de los alumnos. En el método "main", crea una instancia de la clase "ClaseAlumnos", agrega algunos alumnos a la lista y muestra la lista de alumnos junto con el promedio de los promedios.

    private List<Alumno>alumnos;

    public ClaseAlumnos(List<Alumno> alumnos) {
        this.alumnos = alumnos;
    }
}
