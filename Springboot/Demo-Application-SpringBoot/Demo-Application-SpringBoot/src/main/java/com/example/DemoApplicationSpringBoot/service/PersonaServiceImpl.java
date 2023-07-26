package com.example.DemoApplicationSpringBoot.service;

import com.example.DemoApplicationSpringBoot.repository.IPersonaRepo;
import com.example.DemoApplicationSpringBoot.repository.PersonaRepoImpl1;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;



// Indica que esta clase es un componente de servicio de Spring
// y debe ser detectada automáticamente por el framework.
@Service
public class PersonaServiceImpl implements IPersonaService {

    // La anotación "@Autowired" indica que Spring debe inyectar automáticamente
    // una instancia de "IPersonaRepo" en este campo.
    @Autowired
    // a anotación "@Qualifier" se utiliza para especificar el nombre del bean
    // de Spring que se debe inyectar en el campo "repo".
    @Qualifier("persona2")
    //La clase tiene un campo "repo" que es una instancia de una clase
    // que implementa la interfaz "IPersonaRepo".
    private IPersonaRepo repo;

    @Override
    // El método "registrar" toma un parámetro de tipo String llamado "nombre" y se utiliza
    // para registrar una persona en el sistema. Dentro del método, se crea una instancia
    // de la implementación "PersonaRepoImpl1" de la interfaz "IPersonaRepo" y se llama al
    // método "registrar" de esta instancia, pasando el nombre como parámetro.
    public void registrar(String nombre) {
        repo = new PersonaRepoImpl1();
        repo.registrar(nombre);
    }

    // En resumen, esta clase implementa la interfaz "IPersonaService" y utiliza la instancia de "IPersonaRepo"
    // inyectada por Spring para registrar una persona en el sistema.

}
