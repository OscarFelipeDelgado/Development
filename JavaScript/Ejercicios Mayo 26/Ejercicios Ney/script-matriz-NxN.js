function matrizNxN(n){
    let matriz=[];

    for(i=0; i<n; i++){
        let fila=[];

        for(j=0; j<n; j++){
            
            if(i==j){
                fila[j]=1;
            } else{
                fila[j]=0;
            }
        }

        matriz[i]=fila;
    }

    return matriz;  
}

let n = 6;
console.log(matrizNxN(n));