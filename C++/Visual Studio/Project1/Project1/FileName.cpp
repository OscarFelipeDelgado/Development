
int main() {

	int direccion = 35091;
	int segundaDireccion = 1337;

	int* apuntador;

	apuntador = &direccion;

	cout << *apuntador << endl;

	*apuntador = 3;

	cout << *apuntador << endl;

	apuntador = &segundaDireccion;

	cout << *apuntador << endl;

}