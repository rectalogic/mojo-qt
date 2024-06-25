# Mojo with Qt6

Install mojo and python.

```sh-session
$ curl -s https://get.modular.com | sh -
$ /opt/homebrew/bin/python3.11 -m venv venv
$ source venv/bin/activate
$ pip install PySide6
$ mojo qt.mojo
```

The demo launches a QML UI from mojo, and calls a mojo fn from QML when the button is clicked.
