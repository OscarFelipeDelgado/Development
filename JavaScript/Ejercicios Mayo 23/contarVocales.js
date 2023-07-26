function contarVocales(cadena) {
    let vocales = "aeiouAEIOU";
    let vocalesArray = vocales.split("");
    let vocalesCount = 0;
    for (let i = 0; i < cadena.length; i++) {
      if (vocalesArray.includes(cadena[i])) {
        vocalesCount++;
      }
    }
    return vocalesCount;
  }
  
  console.log(contarVocales("OSCAR"));
  