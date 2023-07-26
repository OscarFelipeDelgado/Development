package rectangulo;

public class Rectangulo {
    private double ancho;
    private double altura;

    public Rectangulo(double ancho, double altura) {
        this.ancho = ancho;
        this.altura = altura;
    }

    public double calcularArea() {
        return ancho * altura;
    }

    public static void main(String[] args) {
        Rectangulo rectangulo = new Rectangulo(5.0, 3.0);
        double area = rectangulo.calcularArea();
        System.out.println("El área del rectángulo es: " + area);
    }
}
