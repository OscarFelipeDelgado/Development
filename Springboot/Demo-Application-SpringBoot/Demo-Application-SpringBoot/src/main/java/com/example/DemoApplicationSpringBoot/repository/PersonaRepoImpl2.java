package com.example.DemoApplicationSpringBoot.repository;
import com.example.DemoApplicationSpringBoot.DemoApplicationSpringBootApplication;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

//implementa la interfaz "IPersonaRepo" que define el método "registrar" para interactuar
// con algún tipo de repositorio de datos que almacena información de personas.

//La clase tiene la anotación "@Repository" que indica a Spring que esta clase es un
// componente que debe ser administrado por el contenedor de Spring.
@Repository

// le da un nombre específico a esta implementación del repositorio, lo que
// significa que si existen varias implementaciones de la misma interfaz,
// se puede usar el nombre calificado para distinguirlas.
@Qualifier("persona2")
public class PersonaRepoImpl2 implements IPersonaRepo{

    private static Logger LOG = LoggerFactory.getLogger(DemoApplicationSpringBootApplication.class);

    //el método "registrar" registra un mensaje en el archivo de registro que indica
    // que no se ha registrado a una persona con el nombre proporcionado. En otras palabras,
    // esta implementación de repositorio siempre devuelve un resultado negativo, lo que puede
    // ser útil para ciertos casos de prueba o situaciones de depuración.
    @Override
    public void registrar(String nombre) {

        LOG.info("NO SE REGISTRO A " + nombre);
    }

}