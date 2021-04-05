from setuptools import find_packages, setup

setup(
    name="mypkg",
    version="0.0.1",
    description="",
    author="",
    url="",
    author_email="",
    license="MIT",
    install_requires=[
        "pytest",
        "black",
        "blackdoc",
        "flake8",
        "mypy",
        "isort",
    ],
    packages=find_packages(),
    entry_points={"console_scripts": "mycmd = mypkg.main:main"},
    classifiers=[
        "Programming Language :: Python :: 3.8",
        "License :: OSI Approved :: MIT License",
    ],
)
