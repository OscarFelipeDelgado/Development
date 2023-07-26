// Añade un evento de clic al elemento HTML con la clase "box1" que llama a la función "box_selected1"
document.querySelector(".box1").addEventListener("click", box_selected1);

// Añade un evento de clic al elemento HTML con la clase "box2" que llama a la función "box_selected2"
document.querySelector(".box2").addEventListener("click", box_selected2);

// Añade un evento de clic al elemento HTML con la clase "box3" que llama a la función "box_selected3"
document.querySelector(".box3").addEventListener("click", box_selected3);

// Declarando variables para cada elemento HTML de la caja
// Caja 1
box1 = document.querySelector(".box1");
check_bg1 = document.querySelector(".box1 .check");
icon_check1 = document.querySelector(".box1 .fa-check");

// Caja 2
box2 = document.querySelector(".box2");
check_bg2 = document.querySelector(".box2 .check");
icon_check2 = document.querySelector(".box2 .fa-check");

// Caja 3
box3 = document.querySelector(".box3");
check_bg3 = document.querySelector(".box3 .check");
icon_check3 = document.querySelector(".box3 .fa-check");

// Inicializa la variable "value_box" en 0
value_box = 0;

// La siguiente sección son funciones que se llaman cuando se hace clic en una de las cajas HTML

// Función que se llama cuando se hace clic en la caja 1
function box_selected1 () {
    // Quita la clase "box-selected" a la caja 2, y la clase "check-selected" y "icon-check" a sus elementos relacionados
    box2.classList.remove('box-selected');
    check_bg2.classList.remove('check-selected');
    icon_check2.classList.remove('icon-check');

    // Quita la clase "box-selected" a la caja 3, y la clase "check-selected" y "icon-check" a sus elementos relacionados
    box3.classList.remove('box-selected');
    check_bg3.classList.remove('check-selected');
    icon_check3.classList.remove('icon-check');

    // Agrega la clase "box-selected" a la caja 1, y la clase "check-selected" y "icon-check" a sus elementos relacionados
    box1.classList.toggle('box-selected');
    check_bg1.classList.toggle('check-selected');
    icon_check1.classList.toggle('icon-check');

    // Actualiza el valor de "value_box" a 1
    value_box = 1;
    console.log(value_box);
}


// Función que se llama cuando se hace clic en la caja 2
function box_selected2 () {
    // Quita la clase "box-selected" a la caja 1, y la clase "check-selected" y "icon-check" a sus elementos relacionados
    box1.classList.remove('box-selected');
    check_bg1.classList.remove('check-selected');
    icon_check1.classList.remove('icon-check');

    // Quita la clase "box-selected" a la caja 3, y la clase "check-selected" y "icon-check" a sus elementos relacionados
    box3.classList.remove('box-selected');
    check_bg3.classList.remove('check-selected');
    icon_check3.classList.remove('icon-check');

    box2.classList.toggle('box-selected');
    check_bg2.classList.toggle('check-selected');
    icon_check2.classList.toggle('icon-check');

     // Actualiza el valor de "value_box" a 2
    value_box = 2;
    console.log(value_box);
}

function box_selected3 () {
    /* esta línea elimina la clase box-selected del primer elemento box1.*/
    box1.classList.remove('box-selected');
    /** esta línea elimina la clase check-selected del primer elemento check_bg1. */
    check_bg1.classList.remove('check-selected');
    /**esta línea elimina la clase icon-check del primer elemento icon_check1. */
    icon_check1.classList.remove('icon-check');

    /** esta línea elimina la clase box-selected del segundo elemento box2. */
    box2.classList.remove('box-selected');
    /**esta línea elimina la clase check-selected del segundo elemento check_bg2. */
    check_bg2.classList.remove('check-selected');
    /**esta línea elimina la clase icon-check del segundo elemento icon_check2. */
    icon_check2.classList.remove('icon-check');

    /**esta línea cambia el estado de la clase box-selected del tercer elemento box3 entre activado y desactivado. */
    box3.classList.toggle('box-selected');
    /**esta línea cambia el estado de la clase check-selected del tercer elemento check_bg3 entre activado y desactivado. */
    check_bg3.classList.toggle('check-selected');
    /**esta línea cambia el estado de la clase icon-check del tercer elemento icon_check3 entre activado y desactivado. */
    icon_check3.classList.toggle('icon-check');

      // Actualiza el valor de "value_box" a 3
    value_box = 3;
    /**esta línea muestra el valor de value_box en la consola del navegador.- */
    console.log(value_box);
}

