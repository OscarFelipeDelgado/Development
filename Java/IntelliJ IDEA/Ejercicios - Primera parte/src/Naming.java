public class Naming {
    public static void main(String[] args) {
        int cellphone=333213131;
        int ceLLPHone=12313213;
        System.out.println(cellphone);
        System.out.println(ceLLPHone);

        String $countryName="Spain";
        String _backgroundColor="Green";

        // String background-color; *error

        String currency$="MXM";
        String background_color="BLUE";

        final int POSITION = -5; //constantes en mayúscula
        final int MAX_WIDTH = 999; //se separan sus palabras con guion bajo

        //POSITION=6; *sería un error tratar de volver a asignarle un valor
    }
}
