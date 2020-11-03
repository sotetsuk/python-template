.PHONY: clean formats checks install uninstall test pypi

clean:
	rm -rf build
	rm -rf dist
	rm -rf *.egg-info
	find . -name "*pycache*" | xargs rm -rf

formats:
	black mylib
	blackdoc mylib
	isort mylib

checks:
	black mylib --check --diff
	blackdoc mylib --check
	flake8 --config pyproject.toml mylib 
	mypy --config pyproject.toml mylib
	isort mylib --check --diff

install:
	python3 setup.py install

uninstall:
	python3 -m pip uninstall mycmd -y

tests:
	python3 -m pytest --doctest-modules

pypi:
	python3 setup.py register
	python3 setup.py sdist bdist bdist_egg upload
