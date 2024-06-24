import sys
from python import Python

fn main() raises:
    var QtGui = Python.import_module("PySide6.QtGui")    
    var argv: PythonObject = [sys.argv()[0]]
    var app = QtGui.QGuiApplication(argv)
    var window = QtGui.QWindow()
    window.resize(100, 100)
    window.requestActivate()
    print("size", window.size(), "active", window.isActive())
    window.show()
    sys.exit(app.exec())
