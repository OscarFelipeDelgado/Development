CREATE DATABASE colegio;

USE colegio;

CREATE TABLE estudiantes(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    edad INT,
    grado VARCHAR(10)
    );

CREATE TABLE profesores(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    especialidad VARCHAR(50)
    );

 CREATE TABLE materias(
      id INT AUTO_INCREMENT PRIMARY KEY,
     nombre VARCHAR(50) NOT NULL
     );

 CREATE TABLE cursos(
     id INT AUTO_INCREMENT PRIMARY KEY,
     nombre VARCHAR(50) NOT NULL,
     profesor_id INT,
     FOREIGN KEY (profesor_id) REFERENCES profesores(id)
     );

  CREATE TABLE estudiantes_cursos(
      estudiante_id INT,
      curso_id INT,
      FOREIGN KEY (estudiante_id) REFERENCES estudiantes (id),
      FOREIGN KEY (curso_id) REFERENCES cursos(id),
      PRIMARY KEY (estudiante_id, curso_id)
      );

 CREATE TABLE curso_materias(
 curso_id INT,
 materia_id INT,
     FOREIGN KEY (curso_id) REFERENCES cursos(id),
     FOREIGN KEY (materia_id) REFERENCES materias(id),
     PRIMARY KEY (curso_id, materia_id)
 );
 
 