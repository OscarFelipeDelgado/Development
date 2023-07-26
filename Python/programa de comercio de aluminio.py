
import sys
from PyQt5.QtWidgets import QApplication, QMainWindow, QLabel, QPushButton, QLineEdit, QTableWidget, QTableWidgetItem

class InventarioApp(QMainWindow):
    def __init__(self):
        super().__init__()

        self.setWindowTitle('Inventario')
        self.setGeometry(100, 100, 800, 600)

        self.initUI()

def initUI(self):
        # Etiqueta para el nombre del producto
        self.lbl_nombre = QLabel('Nombre del producto:', self)
        self.lbl_nombre.move(20, 20)
        self.lbl_nombre.resize(150, 20)

        # Campo de texto para el nombre del producto
        self.txt_nombre = QLineEdit(self)
        self.txt_nombre.move(180, 20)
        self.txt_nombre.resize(200, 20)

        # Etiqueta para la descripción del producto
        self.lbl_descripcion = QLabel('Descripción:', self)
        self.lbl_descripcion.move(20, 50)
        self.lbl_descripcion.resize(150, 20)

        # Campo de texto para la descripción del producto
        self.txt_descripcion = QLineEdit(self)
        self.txt_descripcion.move(180, 50)
        self.txt_descripcion.resize(200, 20)

        # Etiqueta para la cantidad del producto
        self.lbl_cantidad = QLabel('Cantidad:', self)
        self.lbl_cantidad.move(20, 80)
        self.lbl_cantidad.resize(150, 20)

        # Campo de texto para la cantidad del producto
        self.txt_cantidad = QLineEdit(self)
        self.txt_cantidad.move(180, 80)
        self.txt_cantidad.resize(200, 20)

        # Etiqueta para el precio del producto
        self.lbl_precio = QLabel('Precio:', self)
        self.lbl_precio.move(20, 110)
        self.lbl_precio.resize(150, 20)

        # Campo de texto para el precio del producto
        self.txt_precio = QLineEdit(self)
        self.txt_precio.move(180, 110)
        self.txt_precio.resize(200, 20)

        # Botón para agregar un producto al inventario
        self.btn_agregar = QPushButton('Agregar', self)
        self.btn_agregar.move(400, 20)
        self.btn_agregar.clicked.connect(self.agregar_producto)

        # Tabla para mostrar los productos en el inventario
        self.tbl_productos = QTableWidget(self)
        self.tbl_productos.move(20, 170)
        self.tbl_productos.resize(760, 400)
        self.tbl_productos.setColumnCount(4)
       
        Self.setWindowTitle('Inventario')
        self.setGeometry(100, 100, 800, 600)

        self.initUI()

    def initUI(self):
    # Etiqueta para el nombre del producto
    self.lbl_nombre = QLabel('Nombre del producto:', self)
    self.lbl_nombre.move(20, 20)
    self.lbl_nombre.resize(150, 20)

    # Campo de texto para el nombre del producto
    self.txt_nombre = QLineEdit(self)
    self.txt_nombre.move(180, 20)
    self.txt_nombre.resize(200, 20)

    # Etiqueta para la descripción del producto
    self.lbl_descripcion = QLabel('Descripción:', self)
    self.lbl_descripcion.move(20, 50)
    self.lbl_descripcion.resize(150, 20)

    # Campo de texto para la descripción del producto
    self.txt_descripcion = QLineEdit(self)
    self.txt_descripcion.move(180, 50)
    self.txt_descripcion.resize(200, 20)

    # Etiqueta para la cantidad del producto
    self.lbl_cantidad = QLabel('Cantidad:', self)
    self.lbl_cantidad.move(20, 80)
    self.lbl_cantidad.resize(150, 20)

    # Campo de texto para la cantidad del producto
    self.txt_cantidad = QLineEdit(self)
    self.txt_cantidad.move(180, 80)
    self.txt_cantidad.resize(200, 20)

    # Etiqueta para el precio del producto
    self.lbl_precio = QLabel('Precio:', self)
    self.lbl_precio.move(20, 110)
    self.lbl_precio.resize(150, 20)

    # Campo de texto para el precio del producto
    self.txt_precio = QLineEdit(self)
    self.txt_precio.move(180, 110)
    self.txt_precio.resize(200, 20)

    # Botón para agregar un producto al inventario
    self.btn_agregar = QPushButton('Agregar', self)
    self.btn_agregar.move(400, 20)
    self.btn_agregar.clicked.connect(self.agregar_producto)

    # Tabla para mostrar los productos en el inventario
    self.tbl_productos = QTableWidget(self)
    self.tbl_productos.move(20, 170)
    self.tbl_productos.resize(760, 400)
    self.tbl_productos.setColumnCount(4)

    # Encabezado de la tabla
    headers = ['Nombre', 'Descripción', 'Cantidad', 'Precio']
    self.tbl_productos.setHorizontalHeaderLabels(headers)

def agregar_producto(self):
    # Obtener los valores de los campos de texto
    nombre = self.txt_nombre.text()
    descripcion = self.txt_descripcion.text()
    cantidad = int(self.txt_cantidad.text())
    precio = float(self.txt_precio.text())

    # Agregar el producto a la tabla
    row_count = self.tbl_productos.rowCount()
    self.tbl_productos.insertRow(row_count)
    self.tbl_productos.setItem(row_count, 0, QTableWidgetItem(nombre))
    self.tbl_productos.setItem(row_count, 1, QTableWidgetItem(descripcion))
    self.tbl_productos.setItem(row_count, 2, QTableWidgetItem(str(cantidad)))
    self.tbl_productos.setItem(row_count, 3, QTableWidgetItem(str(precio)))        

    if name == 'main':
    app = QApplication(sys.argv)
    inventario = InventarioApp()
    inventario.show()
    sys.exit(app.exec_())