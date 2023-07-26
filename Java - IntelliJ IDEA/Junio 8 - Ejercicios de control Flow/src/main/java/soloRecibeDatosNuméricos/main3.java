import java.util.Scanner;

public class main3 {
    //Se les nombra MÉTODOS
    public static void main(String[] args)
    {
        //Haremos un programa que me reciba solamente datos númericos  y si ingresamos un dato no válido, nos diga que no es permitido

        //Inicializaremos los datos que se pediran por consola
        Scanner sc = new Scanner(System.in);
        //Inicializaremos las variables
        int edad = 0;
        boolean esNumero = false;

        //Inicializaremos un ciclo
        while (!esNumero) {
            System.out.println("Ingrese su edad");
            String input = sc.nextLine();

            try {
                edad = Integer.parseInt(input);
                esNumero = true;
            } catch (NumberFormatException e) {
                System.out.println("La entrada no es un dato válido. Intentalo nuevamente");
            }
        }
        if (edad>= 18) {
            System.out.println("Envejeciste, ya eres todo un adulto");
        } else {
            System.out.println("Eres un niño, no puedes programar");
        }
    }
}