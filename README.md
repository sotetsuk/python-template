![build](https://github.com/sotetsuk/python-template/workflows/build/badge.svg)

# python-template
Python package and CLI template available on both PyCharm and Visual Studio Code (VSCode)

## Features

|   | PyCharm | VSCode | Commands |
|:---|:---:|:---:|:---|
| Type check | via PyCharm | via Pylance | `make check` |
| Format/Check (**black/isort**) | ✔ | ✔ | `make format/check` |
| Test (**pytest/doctest**) | ✔ | ✔ | `make test` |

## Usage

1. Click `Use this template` in [github.com/sotetsuk/python-template](https://github.com/sotetsuk/python-template)
2. Write up `setup.py`
    - If you do not create CLI, please remove `entory_points`
3. Rename Python package name following the instruction below
4. For CLI usage, please rename command name folowing the instruction below
5. Attach new CI badge
6. Attach new License

### Rename `mypkg` to your package name

```sh
$ export PKG_NAME=<YOUR PACKAGE NAME>
$ git mv mypkg ${PKG_NAME}
$ for f in $(git grep mypkg | cut -d ":" -f 1); do sed -i "" -e "s/mypkg/${PKG_NAME}/" ${f} ; done
```

### Rename `mycmd` to your command name

```sh
$ export CMD_NAME=<YOUR COMMAND NAME>
$ for f in $(git grep mycmd | cut -d ":" -f 1); do sed -i "" -e "s/mycmd/${PKG_NAME}/" ${f} ; done
```

## Interpreter settings
This project uses virtualenv in `<repo-root>/venv`. Please initialize it if not exists.

- **PyCharm**: `Preferences` => `Python Interpreter` => `Add`
    - [Configure a Python interpreter - Help | PyCharm](https://www.jetbrains.com/help/pycharm/configuring-python-interpreter.html)
- **VSCode**: Manually prepare it or run `$ make venv`

## Run all tests

- **PyCharm**: [Run tests - Help | PyCharm](https://www.jetbrains.com/help/pycharm/performing-tests.html)
  - Add `pytest`
  - `Script path`: `<project-root>/<your pkg name>`
  - `Parameters`: `--doctest-modules`
- **VSCode**: [Python testing in Visual Studio Code](https://code.visualstudio.com/docs/python/testing)


## License

MIT License
