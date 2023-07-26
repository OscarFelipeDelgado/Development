package Ejercicio6_OrdenarAlfabeticamente;
import java.util.Arrays;
import java.util.Scanner;

public class main6 {

    public static void main(String[] args) {
        // Solicitar al usuario ingresar una lista de palabras separadas por espacios
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingresa una lista de palabras separadas por espacios: ");
        String palabras = scanner.nextLine();

        // Dividir las palabras en un arreglo
        String[] arregloPalabras = palabras.split(" ");

        // Ordenar alfabéticamente el arreglo
        Arrays.sort(arregloPalabras);

        // Imprimir el arreglo ordenado
        System.out.println("Lista ordenada alfabéticamente:");
        for (String palabra : arregloPalabras) {
            System.out.println(palabra);
        }
    }
}
