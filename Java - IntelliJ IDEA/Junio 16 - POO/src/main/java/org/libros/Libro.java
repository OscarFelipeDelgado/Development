package org.libros;

public class Libro {
    //Crear una clase "Libro" con los atributos ISBN, título, autor y número de páginas. Implementar los métodos get para cada atributo. También, crear el método toString() para mostrar la información del Libro en el formato: "El Libro con ISBN creado por el autor tiene páginas".
    private int ISBN;
    private String titulo;
    private String autor;
    private int paginas;

    public Libro(int ISBN, String titulo, String autor, int paginas){
        this.ISBN = ISBN;
        this.titulo = titulo;
        this.autor = autor;
        this.paginas = paginas;
    }

    public int getISBN() {
        return ISBN;
    }

    public void setISBN(int ISBN) {
        this.ISBN = ISBN;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public int getPaginas() {
        return paginas;
    }

    public void setPaginas(int paginas) {
        this.paginas = paginas;
    }

    @Override
    public String toString() {
        return "Libro " + ISBN + '\'' + ", titulo='" + titulo + '\'' + ", autor='" + autor + '\'' + ", paginas=" + paginas;
    }
}
