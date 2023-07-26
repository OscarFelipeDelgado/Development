function generarContrasena(){
    //Recopilar información del formulario
    let longitud = parseInt(document.getElementById("longitud").value);
    const mayusculas = document.getElementById("mayusculas");
    const minusculas = document.getElementById("minusculas");
    const numeros = document.getElementById("numeros");
    const simbolos = document.getElementById("simbolos");

    //Para imprimir
    const parrafo = document.querySelector("body p");

    const mayusculasOpc = document.createElement("p");
    const minusculasOpc = document.createElement("p");
    const numerosOpc = document.createElement("p");
    const simbolosOpc = document.createElement("p");

    mayusculasOpc.textContent = "Añadiste mayusculas";
    minusculasOpc.textContent = "Añadiste minusculas";
    numerosOpc.textContent = "Añadiste minusculas";
    simbolosOpc.textContent = "Añadiste minusculas";
    
    //Definir los caracteres permitidos según las opciones seleccionadas
    let caracteresPermitidos = '';

    if(mayusculas.checked){
        parrafo.appendChild(mayusculasOpc);
        caracteresPermitidos += 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    }
    if(minusculas.checked){
        parrafo.appendChild(minusculasOpc);
        caracteresPermitidos += 'abcdefghijklmnopqrstuvwxyz';
    }
    if(numeros.checked){
        parrafo.appendChild(numerosOpc);
        caracteresPermitidos += '0123456789';
    }
    if(simbolos.checked){
        parrafo.appendChild(simbolosOpc);
        caracteresPermitidos += '!@#$%^&*()_+~`|}{[]\:;?><,./-=';
    }

    // Generar la contraseña aleatoria
    let contrasena = '';
    for (let i = 0; i < longitud; i++) {
        const randomIndex = Math.floor(Math.random() * caracteresPermitidos.length);
    contrasena += caracteresPermitidos.charAt(randomIndex);
    }

    document.getElementById("resultado").innerHTML = "<b>Contraseña generada: </b>" + contrasena;

}
