import sys
from python import Python

fn main() raises:
    var QtGui = Python.import_module("PySide6.QtGui")    
    var QtQml = Python.import_module("PySide6.QtQml")    
    var argv: PythonObject = [sys.argv()[0]]
    var app = QtGui.QGuiApplication(argv)
    var engine = QtQml.QQmlApplicationEngine()
    engine.load("app.qml")
    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec())
    _ = engine
