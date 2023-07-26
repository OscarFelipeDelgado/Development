function ordenarMatriz(matriz) {
    // Crear una copia de la matriz original
    const matrizOrdenada = [...matriz];
  
    // Utilizar el método sort para ordenar los elementos de la matriz
    matrizOrdenada.forEach((fila) => fila.sort((a, b) => a - b));
  
    // Devolver la matriz ordenada
    return matrizOrdenada;
  }
  
  const matriz = [[9, 5, 2], [1, 7, 4], [6, 3, 8]];
  const matrizOrdenada = ordenarMatriz(matriz);
  console.log(matrizOrdenada);
  