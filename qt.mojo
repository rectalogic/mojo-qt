import sys
from python import Python

fn main() raises:
    var QtGui = Python.import_module("PySide6.QtGui")    
    var QtQml = Python.import_module("PySide6.QtQml")    
    var app = QtGui.QGuiApplication(["mojo"])
    var engine = QtQml.QQmlApplicationEngine()
    engine.load("app.qml")
    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec())
