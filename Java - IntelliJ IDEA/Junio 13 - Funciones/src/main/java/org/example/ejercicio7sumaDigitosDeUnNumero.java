package org.example;

public class ejercicio7sumaDigitosDeUnNumero {
    public static int sumaDigitos(int numero) {
        int suma = 0;
        numero = Math.abs(numero); // asegurarse de que el número sea positivo

        while (numero > 0) {
            int digito = numero % 10; // obtener el último dígito
            suma += digito; // sumar el dígito a la suma total
            numero /= 10; // eliminar el último dígito del número
        }

        return suma;
    }

    public static void main(String[] args) {
        int numero = 12345;
        int suma = sumaDigitos(numero);
        System.out.println("La suma de los dígitos de " + numero + " es: " + suma);
    }
}
