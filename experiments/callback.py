import ctypes

def callback(mojo_fn_address):
    print(f"in python callback, address {mojo_fn_address}")
    prototype = ctypes.CFUNCTYPE(ctypes.c_int)
    mojo_func = prototype(mojo_fn_address)
    print("calling mojo fn from python")
    result = mojo_func()
    print(f"result {result}")
