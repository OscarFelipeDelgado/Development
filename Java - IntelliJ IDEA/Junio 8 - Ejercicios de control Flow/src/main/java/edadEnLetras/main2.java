package edadEnLetras;

import java.util.Scanner;

public class main2 {
    public static void main(String[] args) {

            //Programa que me solicite la edad, pero que solamente reciba letras

            //Solicitaremos los datos de entrada por teclado (por consola)
            Scanner sc = new Scanner(System.in);
            System.out.println("Ingrese su edad");
            String input = sc.nextLine();

            //Inicializaremos el proceso de datos
            if(isNumeric(input)){
                System.out.println("la entrada debe ser una letra");
            } else{
                System.out.println("El dato que ingresaste es correcto");
            }
        }


        //Método para verificar si el dato ingresado es válido o no
        public static boolean isNumeric(String str){
            //Verifica si el dato es valido, que me retorne verdadero
            try {
                Integer.parseInt(str);
                return true;
                //Si no es válido, que me devuelva que el dato no es permitido
            } catch(NumberFormatException e){
                return false;
            }
        }
}
