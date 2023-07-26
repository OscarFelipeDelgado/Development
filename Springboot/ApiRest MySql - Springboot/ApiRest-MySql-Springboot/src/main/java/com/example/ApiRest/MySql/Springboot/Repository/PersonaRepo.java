package com.example.ApiRest.MySql.Springboot.Repository;

import com.example.ApiRest.MySql.Springboot.Entity.Persona;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

//Aquí estamos creando un método interface, que nos permitirá crea el CRUD de los usuarios
@Repository
public interface PersonaRepo extends CrudRepository<Persona, Integer> {

}
