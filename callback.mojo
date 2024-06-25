from python import Python

fn callback() -> Int:
    print("mojo callback running")
    return 42

fn main() raises:
    Python.add_to_path("./")
    var callback_mod = Python.import_module("callback")    
    print("calling python callback from mojo")
    var fn_address = UnsafePointer[fn () -> Int].address_of(callback)
    callback_mod.callback(int(fn_address))
