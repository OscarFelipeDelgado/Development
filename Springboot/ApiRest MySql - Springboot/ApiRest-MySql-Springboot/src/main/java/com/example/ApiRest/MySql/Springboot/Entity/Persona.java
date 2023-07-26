package com.example.ApiRest.MySql.Springboot.Entity;

import jakarta.persistence.*;

import javax.naming.Name;

@Entity
@Table(name = "Humano")
public class Persona {

    //@Id, es una anotación que hace referencia a que el dato que se ingresará es para el campo ID
    //@GeneratedValue, genera el tipo de dato del cual estamos inicializando
    //@Column, selecciona la columna
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    //Vamos a seleccionar cada una de las columnas de nuestra base de datos
    @Column(name = "nombre")
    private String nombre;

    @Column(name = "apellido")
    private String email;

    @Column(name = "edad")
    private int edad;

    @Column(name = "sexo")
    private String sexo;

    @Column(name = "clave")
    private int clave;

    //Insertaremos los getters y los setters para obtener y enviar los datos de las personas
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public int getClave() {
        return clave;
    }

    public void setClave(int clave) {
        this.clave = clave;
    }
}
