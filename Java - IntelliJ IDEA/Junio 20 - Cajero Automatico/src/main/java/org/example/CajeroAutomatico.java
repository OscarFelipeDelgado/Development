package org.example;

public class CajeroAutomatico {
    private double saldo;

    public CajeroAutomatico() {
        this.saldo = 0.0;
    }

    public void ingresar(double cantidadDinero){
        saldo=cantidadDinero;
    }

    public void retirar(double cantidadDinero){
        if (saldo>=cantidadDinero){
            saldo-=cantidadDinero;
        } else {
            System.out.println("El retiro no es posible, saldo insuficiente");
        }
    }

    public void consultarSaldo(){
        System.out.println("Saldo actual: $" + saldo);
    }
}
