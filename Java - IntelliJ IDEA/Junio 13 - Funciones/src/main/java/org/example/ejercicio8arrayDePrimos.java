import java.util.ArrayList;
import java.util.List;

public class ejercicio8arrayDePrimos {
    public static List<Integer> generarPrimosEnRango(int inicio, int fin) {
        List<Integer> primos = new ArrayList<>();

        for (int numero = inicio; numero <= fin; numero++) {
            if (esPrimo(numero)) {
                primos.add(numero);
            }
        }
        return primos;
    }

    public static boolean esPrimo(int numero) {
        if (numero <= 1) {
            return false;
        }
        for (int i = 2; i <= Math.sqrt(numero); i++) {
            if (numero % i == 0) {
                return false;
            }
        }

        return true;
    }


    public static void main(String[] args) {
        int inicio = 1;
        int fin = 100;

        List<Integer> primos = generarPrimosEnRango(inicio, fin);

        System.out.println("Números primos en el rango [" + inicio + ", " + fin + "]:");
        for (int primo : primos) {
            System.out.print(primo + " ");
        }
    }
}

