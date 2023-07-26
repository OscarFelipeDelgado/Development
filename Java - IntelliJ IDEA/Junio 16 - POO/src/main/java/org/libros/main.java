package org.libros;

public class main {
    public static void main(String[] args) {
        //En el programa principal (main), crear dos objetos Libro con valores personalizados y mostrarlos en pantalla. Finalmente, indicar cuál de los dos libros tiene más páginas.
        Libro libro1 = new Libro(01,"El principito", "Alejo",218);
        Libro libro2 = new Libro(02,"Maquiavelo", "Luis",462);

        System.out.println("-------------------------------------------------");
        System.out.println(libro1.toString());
        System.out.println(libro2.toString());
        System.out.println("-------------------------------------------------");

        //Modificamos el atributo paginas del libro 1
        libro1.setPaginas(70);

        //comparamos quien tiene más páginas
        if (libro1.getPaginas()>libro2.getPaginas()){
            System.out.println(libro1.getTitulo()+" tiene más páginas");
        } else {
            System.out.println(libro2.getTitulo()+" tiene más páginas");
        }
    }
}
