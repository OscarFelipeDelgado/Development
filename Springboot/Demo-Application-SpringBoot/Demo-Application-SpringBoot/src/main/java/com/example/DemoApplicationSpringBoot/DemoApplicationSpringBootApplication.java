package com.example.DemoApplicationSpringBoot;

import com.example.DemoApplicationSpringBoot.service.IPersonaService;
import com.example.DemoApplicationSpringBoot.service.PersonaServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DemoApplicationSpringBootApplication implements CommandLineRunner
{
	private static Logger LOG = LoggerFactory.getLogger(DemoApplicationSpringBootApplication.class);
	@Autowired
	private IPersonaService service;

	public static void main(String[] args) {

		SpringApplication.run(DemoApplicationSpringBootApplication.class, args);
	}
	@Override
	public void run(String... args) throws Exception {
		//Está creando un objeto "PersonaServiceImpl" y utilizando su método "registrar"
		// para agregar una nueva entidad "Persona" con el nombre
		// "MitoCode" a algún sistema de almacenamiento de datos.
		service = new PersonaServiceImpl();
		service.registrar("Alex Hernández");
	}

}
