function contarElemento(matriz, elemento) {
    let contador = 0;
  
    for (let i = 0; i < matriz.length; i++) {
      for (let j = 0; j < matriz[i].length; j++) {
        if (matriz[i][j] === elemento) {
          contador++;
        }
      }
    }
  
    return contador;
  }

  const matriz = [[1, 2, 3], [4, 2, 2], [5, 6, 2]];
  const elemento = 2;
  const cantidad = contarElemento(matriz, elemento);
  console.log(`El elemento ${elemento} aparece ${cantidad} veces en la matriz.`);
  