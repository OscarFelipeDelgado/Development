package org.example;

public class ejercicio2factorial {
    public static void main(String[] args) {
    //Crea una función que calcule el factorial de un numero positivo
        //Inicializamos la variable que recibirá el dato
        int num=5;
        //Inicializamos la variable que tendrá los datos de la función con sus parametros
        int resultado = factorial(num);
        System.out.println("El factorial de " + num + " es: " + resultado);
    }

    public static int factorial( int num){
        //Inicializamos la variable en 1 , por que si le colocamos 0, el resultado dará en 0
        int resultado = 1;

        //Inicializar un loop for
        //Inicializamos el indice en la segunda posición, para que no nos de el resultado 0
        for(int i=1; i<= num; i++){
            resultado *= i;
        }
        return resultado;
    }

}