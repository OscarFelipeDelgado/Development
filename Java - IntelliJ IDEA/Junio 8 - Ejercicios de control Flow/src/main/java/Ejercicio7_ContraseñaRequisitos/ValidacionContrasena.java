package Ejercicio7_ContraseñaRequisitos;

import java.util.Scanner;

// programa que solicite al usuario ingresar una contraseña  y valide si cumple ciertos requisitos como al menos tener 8 caracteres, contener al menos  una letra mayuscula y un numero

public class ValidacionContrasena {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Ingrese una contraseña:");
        String contrasena = scanner.nextLine();

        if (validarContrasena(contrasena)) {
            System.out.println("Contraseña válida");
        } else {
            System.out.println("Contraseña inválida");
        }
    }

    public static boolean validarContrasena(String contrasena) {
        // Verificar longitud mínima de 8 caracteres
        if (contrasena.length() < 8) {
            return false;
        }

        boolean tieneLetraMayuscula = false;
        boolean tieneNumero = false;

        // Recorrer cada carácter de la contraseña
        for (char c : contrasena.toCharArray()) {
            if (Character.isUpperCase(c)) {
                tieneLetraMayuscula = true;
            } else if (Character.isDigit(c)) {
                tieneNumero = true;
            }

            // Si ya se encontró al menos una letra mayúscula y un número, no es necesario seguir recorriendo
            if (tieneLetraMayuscula && tieneNumero) {
                break;
            }
        }

        // Verificar que cumple con los requisitos
        if (tieneLetraMayuscula && tieneNumero) {
            return true;
        } else {
            return false;
        }
    }
}
