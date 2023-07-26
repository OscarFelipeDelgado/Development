function calcularImc(){

    let peso=parseFloat(document.getElementById("peso").value);
    let altura=parseFloat(document.getElementById("altura").value);

    const parrafo = document.querySelector("body p");

    const imcCalculado = document.createElement("p");
    const categoria = document.createElement("p");
    
    imc=peso/(altura^2);

    imcCalculado.textContent = imc.toFixed(1);
    

    if (imc<18.4){
        categoria.textContent = "Bajo peso";
    } else if(18.5<=imc && imc<25){
        categoria.textContent = "Peso normal";
    } else if(25<=imc && imc<30){
        categoria.textContent = "Sobrepeso";
    } else if(30<=imc && imc<35){
        categoria.textContent = "Obesidad Tipo 1";
    } else if(35<=imc && imc<40){
        categoria.textContent = "Obesidad Tipo 2";
    } else if(35<=imc){
        categoria.textContent = "Obesidad Tipo 3, ¡Te vas a infartar amigo!";
    } 

    parrafo.appendChild(imcCalculado);
    parrafo.appendChild(categoria);
}