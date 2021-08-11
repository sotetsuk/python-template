.PHONY: clean format check install uninstall test pypi

venv:
	which python3
	python3 -m venv venv

clean:
	rm -rf build
	rm -rf dist
	rm -rf *.egg-info
	find . -name "*pycache*" | xargs rm -rf

format:
	black mypkg
	blackdoc mypkg
	isort mypkg

check:
	black mypkg --check --diff
	blackdoc mypkg --check
	flake8 --config pyproject.toml --ignore E203,E501,W503 mypkg
	mypy --config pyproject.toml mypkg
	isort mypkg --check --diff

install:
	python3 setup.py install

uninstall:
	python3 -m pip uninstall mypkg -y

test:
	python3 -m pytest --doctest-modules
