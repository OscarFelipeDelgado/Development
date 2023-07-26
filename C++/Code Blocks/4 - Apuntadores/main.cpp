#include <iostream>

using namespace std;

int main()
{
    // & Obtiene la direccion de memoria de una variable
    // * Obtiene lo que hay en la direccion de memoria que se le indica


    int Direccion = 3509l;
    int SegundaDireccion = 1337;// Declaracion de variables

    int* ApuntadorADir;  // Variable apuntador

    ApuntadorADir = &Direccion;  // La variable obtiene la direccion de memoria

    *ApuntadorADir = 3; // Lo que habia en dicha direccion ahora es igual a 3
    ApuntadorADir = &SegundaDireccion; // Obtiene la direccion de memoria de SegundaDireccion

    //cuando tiene el asterisco, se refiere al contenido, cuando la variable apuntador no tiene el asterisco
    //.. se refiere a la dirección en memoria

    cout<< *ApuntadorADir<<endl; // Imprime en pantalla lo que hay en la Direccion de memoria de  SegundaDireccion


    return 0;
}
