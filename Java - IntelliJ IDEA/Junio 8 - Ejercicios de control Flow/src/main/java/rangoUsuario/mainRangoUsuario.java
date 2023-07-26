package rangoUsuario;

import java.util.Scanner;

public class mainRangoUsuario {
    public static void main(String[] args) {
        //definimos variables
        boolean rango=false;
        double rangoInferior;
        double rangoSuperior;
        double numero;

        //Instanciamos la clase Scanner
        Scanner sc = new Scanner(System.in);

        while (!rango){
            //solicitamos el rango
            System.out.println("\n\nIngresa el rango inferior:");
            rangoInferior=sc.nextDouble();
            System.out.println("Ingresa el rango superior:");
            rangoSuperior=sc.nextDouble();

            //Solicitamos el número al usuario
            System.out.println("\nIngresa un número entre " + rangoInferior +" y " + rangoSuperior);
            numero = sc.nextDouble();

            if (numero >= rangoInferior && numero <= rangoSuperior){
                System.out.println("\nMuy bien, número dentro del rango!");
                rango=true;
            } else {
                System.out.println("Fuera de rango, intentalo de nuevo");
            }
        }
    }
}
