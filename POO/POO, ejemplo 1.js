// Definición de la clase
class Persona {
    // Constructor de la clase
    constructor(nombre, edad) {
      this.nombre = nombre;
      this.edad = edad;
    }
  
    // Método de instancia
    saludar() {
      console.log(`Hola, mi nombre es ${this.nombre} y tengo ${this.edad} años.`);
    }
  }
  
  // Creación de objetos utilizando la clase
  const persona1 = new Persona("Juan", 30);
  const persona2 = new Persona("María", 25);
  
  // Acceso a las propiedades y métodos de los objetos
  console.log(persona1.nombre); // Output: "Juan"
  console.log(persona2.edad); // Output: 25
  
  persona1.saludar(); // Output: "Hola, mi nombre es Juan y tengo 30 años."
  persona2.saludar(); // Output: "Hola, mi nombre es María y tengo 25 años."