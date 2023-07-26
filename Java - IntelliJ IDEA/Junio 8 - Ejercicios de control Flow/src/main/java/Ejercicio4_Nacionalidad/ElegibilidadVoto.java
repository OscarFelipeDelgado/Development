package Ejercicio4_Nacionalidad;

import java.time.LocalDate;
import java.util.Scanner;

public class ElegibilidadVoto {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Ingrese su fecha de nacimiento (en formato AAAA-MM-DD):");
        String fechaNacimientoStr = scanner.nextLine();

        System.out.println("¿Es usted ciudadano colombiano? (Sí/No):");
        String nacionalidadStr = scanner.nextLine();

        LocalDate fechaNacimiento = LocalDate.parse(fechaNacimientoStr);
        boolean esColombiano = nacionalidadStr.equalsIgnoreCase("Sí");

        if (esElegibleParaVotar(fechaNacimiento, esColombiano)) {
            System.out.println("Usted es elegible para votar");
        } else {
            System.out.println("Usted no es elegible para votar");
        }
    }

    public static boolean esElegibleParaVotar(LocalDate fechaNacimiento, boolean esColombiano) {
        LocalDate fechaActual = LocalDate.now();

        int edad = fechaActual.getYear() - fechaNacimiento.getYear();

        // Verificar si tiene al menos 18 y 25 años
        if (edad >= 18 && edad <= 25) {
            // Verificar si tiene nacionalidad colombiana
            if (esColombiano) {
                return true;
            }
        }

        return false;
    }
}
