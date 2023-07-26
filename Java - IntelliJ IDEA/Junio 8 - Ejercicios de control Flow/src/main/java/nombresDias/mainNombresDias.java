package nombresDias;

import java.util.Scanner;

public class mainNombresDias {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int numero;

        String diaSemana;

        do {
            System.out.println("\n\nIngrese un número del 1 al 7, relacionado a los días de la semana");
            numero = sc.nextInt();

            diaSemana = switch (numero) {
                case 1 -> "Lunes";
                case 2 -> "Martes";
                case 3 -> "Miércoles";
                case 4 -> "Jueves";
                case 5 -> "Viernes";
                case 6 -> "Sábado";
                case 7 -> "Domingo";
                default -> "Dato inválido, solamente se reciben números del 1 al 7";
            };

            System.out.println("\nEl número " + numero + " corresponde a " + diaSemana);

        } while (numero < 1 || numero > 7);
    }
}
