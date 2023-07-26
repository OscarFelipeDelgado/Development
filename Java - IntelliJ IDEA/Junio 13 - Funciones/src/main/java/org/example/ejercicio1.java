package org.example;

import java.util.Scanner;

// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
public class ejercicio1 {
    public static void main(String[] args)
    {
        //Crear un método que me permita recibir dos números y hacer varías operaciones (sumar, restar, multiplicar y divir)
        //Inicializamos las peticiones de la consola
        Scanner sc = new Scanner(System.in);
        System.out.println("Calculadora de Datos");
        double num1 = 10.5;
        double num2 = 5.2;
        String operacion = "multiplicacion";
        double resultado = calcular(num1, num2, operacion);
        System.out.println("El resultado de la operación " + operacion + " es: " + resultado);
        // El sc.close nos especifica que nos debe cerrar las peticiones por consola
        sc.close();
    }
    // Este método nos ayuda a usarlo una vez que se halla inicializado y cómo es publico, se puede usar los datos en otras subclases
    public static double calcular(double num1, double num2, String operacion)
    {
        //Inicializamos una variable que recibirá los resultados de las operaciones
        double resultado = 0.0;
        // El switch nos ayuda a crear casos, ejemplo: "sumar, restar, multiplicar, dividir"
        switch(operacion) {
            case "suma":
                resultado = num1+num2;
                //Se encarga de romper el caso, siempre y cuándo se cumpla
                break;
            case "resta":
                resultado= num1-num2;
                break;
            case "multiplicacion":
                resultado=num1*num2;
                break;
            case "division":
                resultado=num1/num2;
                break;
            default:
                System.out.println("Operación invalida");
                break;
        }
        return resultado;
    }
}