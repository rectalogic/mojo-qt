import sys
from python import Python

fn main() raises:
    var QtWidgets = Python.import_module("PySide6.QtWidgets")    
    var argv: PythonObject = [sys.argv()[0]]
    var app = QtWidgets.QApplication(argv)
    var button = QtWidgets.QPushButton("Hello")
    button.resize(100, 100)
    button.show()
    sys.exit(app.exec())
