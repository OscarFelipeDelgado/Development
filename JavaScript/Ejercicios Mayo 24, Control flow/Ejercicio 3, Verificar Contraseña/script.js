function verificarContraseña() {
    const contraseña = document.getElementById('contraseña').value;

    if (contraseña.length < 8) {
      document.getElementById('mensaje').textContent = 'Error: La contraseña debe tener al menos 8 caracteres.';
      document.getElementById('mensaje').style.color = 'red';
    } else {
      document.getElementById('mensaje').textContent = 'Contraseña ingresada con éxito.';
      document.getElementById('mensaje').style.color = 'green';
    }
  }