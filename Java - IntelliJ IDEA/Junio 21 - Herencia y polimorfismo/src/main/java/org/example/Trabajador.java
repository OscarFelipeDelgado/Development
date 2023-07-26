package org.example;

public class Trabajador extends Persona{
    private double salario;

    public Trabajador(String nombre, String apellidos, int edad, double salario) {
        super(nombre, apellidos, edad);
        this.salario = salario;
    }

    @Override
    public void mostrarInformacion() {
        super.mostrarInformacion();
        System.out.println("Salario: " + salario);
    }
}
