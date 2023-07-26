package org.example;

import org.relojes.Reloj;

public class Main {
    public static void main(String[] args) {

        //Instanciamos la clase, inicializamos un nuevo objeto
        Rectangulo primerRectangulo = new Rectangulo(5.0,3.0);

        System.out.println("---------------------------------------");
        System.out.println("El ancho equivale a: " +primerRectangulo.getWidth());
        System.out.println("El alto equivale a: " +primerRectangulo.getHeigh());
        System.out.println("El area equivale a: "+primerRectangulo.getArea());
        System.out.println("El perímetro equivale a: "+primerRectangulo.getPerimetro());
        System.out.println("---------------------------------------");

    }
}