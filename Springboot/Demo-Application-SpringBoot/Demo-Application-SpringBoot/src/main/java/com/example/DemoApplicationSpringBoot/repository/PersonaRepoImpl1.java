package com.example.DemoApplicationSpringBoot.repository;
import com.example.DemoApplicationSpringBoot.DemoApplicationSpringBootApplication;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

//El código que has proporcionado es una clase de implementación de repositorio de
// Spring Boot llamada "PersonaRepoImpl1". Esta clase implementa la interfaz "IPersonaRepo"
// que define el método "registrar" para interactuar con algún tipo
// de repositorio de datos que almacena información de personas.


//Esta clase tiene la anotación "@Repository" que indica a Spring que esta clase es un
// componente que debe ser administrado por el contenedor de Spring.
@Repository
//la anotación "@Qualifier("persona1")" que le da un nombre específico a esta implementación
// del repositorio, lo que significa que si existen varias implementaciones
// de la misma interfaz,se puede usar el nombre calificado para distinguirlas.
@Qualifier("persona1")
public class PersonaRepoImpl1 implements IPersonaRepo{

    //La clase también tiene una variable estática "LOG" que se utiliza para registrar
    // información en el archivo de registro. La variable utiliza la biblioteca de registro
    // "SLF4J" y la clase "DemoConsolaApplication" como nombre del registrador.

    /*(LoggerFactory) se encarga de crear y gestionar las instancias de los registros.
     * El método getLogger se utiliza para obtener una instancia de registro para una clase o un nombre específico. */
    private static Logger LOG = LoggerFactory.getLogger(DemoApplicationSpringBootApplication.class);


    //el método "registrar" simplemente registra un mensaje en el archivo de registro
    // que indica que se ha registrado una persona con el nombre proporcionado.
    @Override
    public void registrar(String nombre) {

        LOG.info("SE REGISTRO A " + nombre);
    }

}
