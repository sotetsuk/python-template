from setuptools import setup, find_packages

setup(
    name="python-template",
    version="0.0.1",
    description="Python template",
    author="sotetsuk",
    url="https://github.com/sotetsuk/python-template",
    author_email="koyamada-s@sys.i.kyoto-u.ac.jp",
    license="MIT",
    install_requires=["pytest", "black", "blackdoc", "flake8", "mypy", "isort"],
    packages=find_packages(),
    entry_points={"console_scripts": "mycmd = mylib.main:main"},
    classifiers=[
        "Programming Language :: Python :: 3.8",
        "License :: OSI Approved :: MIT License",
    ],
)
