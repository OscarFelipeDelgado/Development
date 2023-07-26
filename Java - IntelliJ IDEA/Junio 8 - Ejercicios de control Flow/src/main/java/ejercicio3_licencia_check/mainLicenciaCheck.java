package ejercicio3_licencia_check;

import java.util.Scanner;

public class mainLicenciaCheck {
    public static void main(String[] args) {
        //declaramos
        int edad;
        double examen;
        boolean requisitos=false;

        //instanciamos scanner
        Scanner sc = new Scanner(System.in);

        //consultamos al usuario sobre sus requisitos
        System.out.println("\n\nQue edad tienes actualmente: ");
        edad = sc.nextInt();

        System.out.println("Cuanto fue tu puntaje en el examen: ");
        examen = sc.nextDouble();

        if (edad >= 18){
            System.out.println("\nTienes la edad para manejar, ");
            if (examen >= 3){

            }

        } else {
            System.out.println("Fuera de rango, intentalo de nuevo");
        }
    }
}
