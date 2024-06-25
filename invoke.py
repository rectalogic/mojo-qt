import ctypes
from PySide6.QtCore import QObject, Slot

prototype = ctypes.CFUNCTYPE(ctypes.c_void_p)

class Invoke(QObject):
    def __init__(self, fn_address):
        super().__init__()
        self.mojo_fn = prototype(fn_address)

    @Slot()
    def invoke(self):
        self.mojo_fn()
