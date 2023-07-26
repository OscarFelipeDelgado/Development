package com.example.ApiRest.MySql.Springboot.Service;

import com.example.ApiRest.MySql.Springboot.Entity.Persona;

import java.util.List;

public interface PersonaService {
    //Este código nos ayuda a traer todos los datos que estén insertados en la BD/
    List<Persona> ConsultarPersonas();

    //Vamos a crear los métodos para realizar las peticiones en mi CRUD
    //la colección List nos ayuda a crear una lista (petición GET)
    public List<Persona> ConsultarPersona();

    //Vamos a realizar el método para realizar la petición POST
    public Persona CrearPersona(Persona persona);

    //Método para realizar la petición PUT
    public Persona ModificarPersona(Persona persona);

    //Método para buscar las personas
    public Persona BuscarPersona(int id);

    //Método para realizar la petición DELETE
    //void, ya que no nos devuelve ningún valor
    public void EliminarPersona(int id);
}
