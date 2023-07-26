package org.example;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class OperacionesTest {

    @Test
    void sumar() {
        // Prueba 1: Suma de dos números positivos
        int resultado1 = Operaciones.sumar(2, 3);
        assertEquals(4, resultado1);
    }
}