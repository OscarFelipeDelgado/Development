// Definición de la clase Animal
class Animal {
  constructor(nombre, edad) {
    this.nombre = nombre;
    this.edad = edad;
  }

  comer() {
    console.log(`${this.nombre} está comiendo.`);
  }

  dormir() {
    console.log(`${this.nombre} está durmiendo.`);
  }
}

// Definición de la clase Perro, que hereda de Animal
class Perro extends Animal {
  constructor(nombre, edad, raza) {
    super(nombre, edad);
    this.raza = raza;
  }

  ladrar() {
    console.log(`${this.nombre} está ladrando.`);
  }
}

// Definición de la clase Gato, que hereda de Animal
class Gato extends Animal {
  constructor(nombre, edad, color) {
    super(nombre, edad);
    this.color = color;
  }

  maullar() {
    console.log(`${this.nombre} está maullando.`);
  }
}

// Creación de objetos
const perro = new Perro("Firulais", 5, "Labrador");
const gato = new Gato("Garfield", 3, "Naranja");

// Acceso a propiedades y llamada a métodos
console.log(perro.nombre); // Firulais
console.log(gato.edad); // 3
perro.comer(); // Firulais está comiendo.
gato.dormir(); // Garfield está durmiendo.
perro.ladrar(); // Firulais está ladrando.
gato.maullar(); // Garfield está maullando.