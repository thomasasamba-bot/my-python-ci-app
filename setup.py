from setuptools import setup, find_packages

setup(
    name="python-devops-demo",  # Match your project name
    version="0.1.0",
    description="A complete Python DevOps demo with CI/CD, Docker, and AWS CloudFormation",
    author="Thomas Asamba",
    author_email="asamba.thomas@gmail.com",
    packages=find_packages(where="src"),
    package_dir={"": "src"},  # Tell setuptools packages are in src/
    install_requires=[
        "flask==2.3.3",  # Add your actual dependencies
    ],
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
        "Topic :: Software Development :: DevOps",
        "Intended Audience :: Developers",
    ],
    python_requires='>=3.8',
    keywords="devops ci-cd docker aws cloudformation flask",
)