from setuptools import setup, find_packages

setup(
    name="my-python-ci-app",
    version="0.1.0",
    description="A simple Python project to demonstrate CI with GitHub Actions",
    author="Thomas Asamba",
    author_email="asamba.thomas@gmail.com",
    packages=find_packages(),
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    python_requires='>=3.6',
)