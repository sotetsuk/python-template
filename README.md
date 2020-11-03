![build](https://github.com/sotetsuk/python-template/workflows/build/badge.svg)

# python-template
Python library and CLI template.

## Features

|   | PyCharm | VSCode | Commands |
|:---|:---:|:---:|:---|
| Strict type check (**mypy**) | ✔ | ✔ | `make checks` |
| Formatting (**black**) | ✔ | ✔ | `make formats/checks` |
| Organize imports (**isort**) | ✔ | ✔ | `make formats/checks` |
| Run all tests (**pytest/doctest**) |  |  | `make tests` |


## Interpreter settings
This project uses virtualenv in `<repo-root>/venv`. Please initialize it if not exists.

- **PyCharm**: `Preferences` => `Python Interpreter` => `Add` ([JetBrains Help](https://www.jetbrains.com/help/pycharm/configuring-python-interpreter.html))
- **VSCode**: Manually prepare it or run `$ make venv`


## License

MIT License
