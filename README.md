![build](https://github.com/sotetsuk/python-template/workflows/build/badge.svg)

# python-template
Python library and CLI template.

## Features

|   | PyCharm | VSCode | Commands |
|:---|:---:|:---:|:---|
| Strict type check (**mypy**) | ✔ | ✔ | `make checks` |
| Formatting (**black**) | ✔ | ✔ | `make formats/checks` |
| Organize imports (**isort**) | ✔ | ✔ | `make formats/checks` |
| Run tests (**pytest/doctest**) | ✔ | ✔ | `make tests` |

## Usage

1. Click `Use this template` in GitHub
2. Rename `mypkg` to your package using the following command

```sh
$ export PKG_NAME=<YOUR PACKAGE NAME>
$ git mv mypkg ${PKG_NAME}
$ for f in $(git grep mylib | cut -d ":" -f 1); do sed -i -e "s/mypkg/${PKG_NAME}/" ${f} ; done 
```

## Interpreter settings
This project uses virtualenv in `<repo-root>/venv`. Please initialize it if not exists.

- **PyCharm**: `Preferences` => `Python Interpreter` => `Add`
    - [Configure a Python interpreter - Help | PyCharm](https://www.jetbrains.com/help/pycharm/configuring-python-interpreter.html)
- **VSCode**: Manually prepare it or run `$ make venv`

## Run tests

- **PyCharm**: [Run tests - Help | PyCharm](https://www.jetbrains.com/help/pycharm/performing-tests.html)
  - Also please set `--doctest-modules` to `Parameters`
- **VSCode**: [Python testing in Visual Studio Code](https://code.visualstudio.com/docs/python/testing)


## License

MIT License
