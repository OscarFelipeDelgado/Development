const matriz1 = [[1,2],[3,4]];
const matriz2 = [[5,6],[7,8]];

function sumarMatrices(matriz1, matriz2){
    const suma = [];

    for(let i=0; i < matriz1.length; i++){
        const fila = [];
        
        for(j=0; j < matriz2.length; j++){
            sumaElemento=matriz1[i][j] + matriz2[i][j];
            fila[j] = sumaElemento;
        };

        suma[i] = fila;
    }

    return suma;
}

const resultado = sumarMatrices(matriz1, matriz2);
console.log(resultado);
