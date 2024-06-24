import sys
from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine

if __name__ == "__main__":
    print(sys.argv)
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    engine.load("app.qml")
    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec())
