import sys
from PySide6.QtWidgets import QApplication, QPushButton

if __name__ == "__main__":
    app = QApplication(sys.argv)
    button = QPushButton("Hello")
    button.resize(100, 100)
    button.show()
    sys.exit(app.exec())
