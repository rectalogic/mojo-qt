import sys
from PySide6.QtGui import QGuiApplication, QWindow

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    window = QWindow()
    window.setTitle("Python window")
    window.resize(100, 100)
    window.requestActivate()
    window.show()
    print("size", window.size(), "active", window.isActive(), "winid", window.winId())
    sys.exit(app.exec())
