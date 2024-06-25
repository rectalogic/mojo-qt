import sys
from python import Python

fn on_clicked():
    print("mojo on_clicked called from Python")

fn main() raises:
    Python.add_to_path("./")
    var QtGui = Python.import_module("PySide6.QtGui")    
    var QtQml = Python.import_module("PySide6.QtQml")    
    var invoke = Python.import_module("invoke")

    var fn_address = UnsafePointer[fn () -> None].address_of(on_clicked).bitcast[Int64]()[0]
    var invoke_on_clicked = invoke.Invoke(fn_address)

    var argv: PythonObject = [sys.argv()[0]]
    var app = QtGui.QGuiApplication(argv)
    var engine = QtQml.QQmlApplicationEngine()
    engine.rootContext().setContextProperty("on_clicked", invoke_on_clicked)
    engine.load("app.qml")
    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec())
    _ = engine
    _ = invoke_on_clicked
