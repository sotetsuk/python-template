.PHONY: clean formats checks install uninstall test pypi

venv:
	which python3
	python3 -m venv venv

clean:
	rm -rf build
	rm -rf dist
	rm -rf *.egg-info
	find . -name "*pycache*" | xargs rm -rf

formats:
	black mypkg
	blackdoc mypkg
	isort mypkg

checks:
	black mypkg --check --diff
	blackdoc mypkg --check
	flake8 --config pyproject.toml mypkg 
	mypy --config pyproject.toml mypkg
	isort mypkg --check --diff

install:
	python3 setup.py install

uninstall:
	python3 -m pip uninstall mycmd -y

tests:
	python3 -m pytest --doctest-modules

pypi:
	python3 setup.py register
	python3 setup.py sdist bdist bdist_egg upload
