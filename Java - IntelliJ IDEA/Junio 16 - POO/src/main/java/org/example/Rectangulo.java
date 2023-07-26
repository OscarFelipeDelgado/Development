package org.example;

public class Rectangulo {

    private double width;
    private  double heigh;

    public Rectangulo(double width, double heigh){
        this.width = width;
        this.heigh = heigh;
    }

    public double getWidth(){
        return width;
    }

    public double getHeigh(){
        return heigh;
    }

    public double getArea(){
        return width * heigh;
    }

    public double getPerimetro(){
        return 2 * (width*heigh);
    }

}

