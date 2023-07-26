// Clase base
class Animal {
  constructor(nombre) {
    this.nombre = nombre;
  }

  hablar() {
    console.log("El animal hace ruidos.");
  }
}

// Clase derivada
class Perro extends Animal {
  hablar() {
    console.log("El perro ladra.");
  }
}

// Clase derivada
class Gato extends Animal {
  hablar() {
    console.log("El gato maulla.");
  }
}

// Uso de polimorfismo
const perro = new Perro("Bobby");
const gato = new Gato("Tom");

perro.hablar(); // Salida: "El perro ladra."
gato.hablar();  // Salida: "El gato maulla."