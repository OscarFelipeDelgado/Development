import static java.util.Collections.reverse;
import static java.util.Collections.reverseOrder;

public class Main {
    public static void main(String[] args) {

        int cities [][] = new int[3][4];
        for (int i = 0; i < cities.length; i++) {
            for (int j = 0; j < cities[i].length; j++) {
                cities[i][j]= j;
            }
        }

        for (int i = 0; i < cities.length; i++) {
            for (int j = 0; j < cities[i].length; j++) {
                System.out.print(cities[i][j]);
            }
            System.out.println(" ");
        }

        // enhanced for ó for each
        for (int[] city : cities) {
            for (int i : city) {
                System.out.print(i);
            }
            System.out.println(" ");
        }

        System.out.println("\n");

        String [][][][] animals = new String[2][2][2][2];
        animals [1][0][0][1] = "Donkey";

        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 1; j++) {
                for (int k = 0; k < 1; k++) {
                    for (int l = 0; l < 2; l++) {
                        if (animals[i][j][k][l]==null) {
                            continue; //  para que no imprima cuando el valor sea null o el espacio esté vacío
                        } else {
                            System.out.println(animals[i][j][k][l]);
                        }
                    }
                }
            }
        }
      
    }
}
