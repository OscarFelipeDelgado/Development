//Definiendo y llenando matriz

const matriz = [];

for (let i = 0; i < 11; i++) {
    
    const fila = [];
    
    for (let j = 0; j < 11; j++) {
        if (i == 0 && j == 0) {
            fila.push("");  // Espacio vacío en [0, 0]
        } else if (i == 0) {
            const multiplo = (i+1) * (j);
            fila.push(multiplo);
        } else if (j == 0) {
            const multiplo = (i) * (j+1);
            fila.push(multiplo); 
        } else {
            const multiplo = i * j;
            fila.push(multiplo);
        }
    }
    matriz.push(fila);
}

//mostrando en HTML
const tabla = document.getElementById('tabla');

for (let i = 0; i < matriz.length; i++) {
  const fila = document.createElement('tr');

    for (let j = 0; j < matriz[i].length; j++) {
        const celda = document.createElement('td');        
        celda.textContent = matriz[i][j];

        fila.appendChild(celda);
    }

    tabla.appendChild(fila);

}
