function verificarNumero() {
    const numero = parseFloat(document.getElementById('numero').value);

    if (numero > 0) {
      document.getElementById('mensaje').textContent = 'El número es positivo.';
      document.getElementById('mensaje').style.color = 'green';
    } else if (numero < 0) {
      document.getElementById('mensaje').textContent = 'El número es negativo.';
      document.getElementById('mensaje').style.color = 'red';
    } else {
      document.getElementById('mensaje').textContent = 'El número es cero.';
      document.getElementById('mensaje').style.color = 'blue';
    }
  }