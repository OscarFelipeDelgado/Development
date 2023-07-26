public class UpdatingVariables {
    public static void main(String[] args) {
        int salary=1000;

        //bono $200;

        salary = salary + 200;
        System.out.println(salary);

        //2 horas extra $30 c/u
        //Comida: $45

        salary = salary + (30*2) - 45;
        System.out.println(salary);

        //Actualizando cadenas
        String employeeName="Oscar Delgado";
        employeeName=employeeName+" Alfonso";
        System.out.println(employeeName);

        employeeName="Felipe "+employeeName;
        System.out.println(employeeName);
        System.out.println("Tu nombre es: "+employeeName);
    }
}
