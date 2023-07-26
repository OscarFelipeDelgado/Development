package com.example.ApiRest.MySql.Springboot.Controller;

import com.example.ApiRest.MySql.Springboot.Entity.Persona;
import com.example.ApiRest.MySql.Springboot.Service.PSIMPL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/*Nos ayuda a enviar y recibir las peticiones y respuestas que haremos en nuestro programa*/
@RestController
/*Especifica el mapeo de la URL base para todas la solicitudes que llegan a este controlador*/
@RequestMapping ("CRUDRepo")
public class Controlador
{
    @Autowired
    private PSIMPL psimpl;

    /*La anotación GetMapping nos ayuda mapear una solicitud GET*/
    @GetMapping
    /*Inicializamos la ruta para realizar el mapeo de la petición GET
     *
     * http:localhost:8080/CRUDRepo/ConsultarPersonas*/
    @RequestMapping(value = "/ConsultarPersonas", method = RequestMethod.GET)
    /*Este método maneja la solicitud GET para consultar todas las personas que están guardadas y si los datos correcto, me mostrará una respuesta de código HTTP 200*/
    public ResponseEntity<?> ConsultarPersonas(){
        List<Persona> personaList=this.psimpl.ConsultarPersonas();
        return ResponseEntity.ok(personaList);
    }
    @PutMapping
    /*Usamos este mapeo http:localhost:8080/CRUDRepo/CrearPersona para insertar datos*/
    @RequestMapping(value = "/CrearPersona", method = RequestMethod.POST)
    public ResponseEntity<?> CrearPersona(@RequestBody Persona persona){
        Persona personaCrear=this.psimpl.CrearPersona(persona);
        return ResponseEntity.status(HttpStatus.CREATED).body(personaCrear);
    }

    /*Usamos este mapeo http:localhost:8080/CRUDRepo/ModificarPersona para actualizar datos*/
    @PutMapping
    @RequestMapping(value = "/ModificarPersona", method = RequestMethod.PUT)
    public ResponseEntity<?> ModificarPersona(@RequestBody Persona persona){
        Persona personaModificada=this.psimpl.ModificarPersona(persona);
        return ResponseEntity.status(HttpStatus.CREATED).body(personaModificada);
    }

    /*Usamos este mapeo http:localhost:8080/CRUDRepo/BuscarPersona/{id} para actualizar datos*/
    @GetMapping
    @RequestMapping(value = "/BuscarPersona/{id}", method = RequestMethod.GET)
    /*La anotación @PatVariable nos ayuda a insertar una ruta*/
    public ResponseEntity<?> BuscarPersona(@PathVariable int id) {
        Persona persona=this.psimpl.BuscarPersona(id);
        return  ResponseEntity.ok(persona);
    }

    @DeleteMapping
    @RequestMapping(value = "/EliminarPersona/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<?> EliminarPersona(@PathVariable int id){
        this.psimpl.EliminarPersona(id);
        return ResponseEntity.ok().build();
    }

}