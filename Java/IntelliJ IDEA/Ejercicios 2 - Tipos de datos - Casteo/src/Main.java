public class Main {
    public static void main(String[] args) {
        System.out.println("Hello world!");

        // Cast explícito
        double d = 298.638;
        long dL = (long) d/25;

        System.out.println(d/25);
        System.out.println(dL);

        /**
         * Descripción: Cast de una variable de tipo int a una de tipo byte
         * @param iB Variable i casteada
         * */
        int i = 737;
        byte iB = (byte) (i*100);
        System.out.println(iB);

    }
}