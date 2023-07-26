function eliminarDuplicados(matriz) {
    const matrizSinDuplicados = [];
  
    for (let i = 0; i < matriz.length; i++) {
      const fila = matriz[i];
      const filaSinDuplicados = [];
  
      for (let j = 0; j < fila.length; j++) {
        const elemento = fila[j];
  
        if (!filaSinDuplicados.includes(elemento)) {
          filaSinDuplicados.push(elemento);
        }
      }
  
      matrizSinDuplicados.push(filaSinDuplicados);
    }
  
    return matrizSinDuplicados;
  }
  const matriz = [[1, 2, 2], [3, 4, 3], [1, 2, 2]];
  const matrizSinDuplicados = eliminarDuplicados(matriz);
  console.log(matrizSinDuplicados);
    