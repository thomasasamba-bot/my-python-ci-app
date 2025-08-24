# my-python-ci-app
A simple Python project to demonstrate CI with GitHub Actions
![CI Pipeline](https://github.com/thomasasamba-bot/my-python-ci-app/actions/workflows/ci.yaml/badge.svg)

# Python CI Demo Project

A simple Python application to demonstrate a Continuous Integration (CI) pipeline using GitHub Actions.

## 🚀 Technologies Used

- **Python 3.13**
- **unittest** (Python's built-in testing framework)
- **GitHub Actions** (for CI/CD automation)

## 📦 What's Inside

- `calculator.py`: A simple module with an `add()` function.
- `main.py`: A script that uses the `add()` function.
- `tests/test_calculator.py`: Unit tests for the `add()` function.
- `.github/workflows/ci.yml`: The GitHub Actions workflow configuration.

## ✅ How to Run Locally

1. Clone the repository:
   git clone https://github.com/thomasasamba-bot/my-python-ci-app.git

2.⁠ ⁠Navigate to the project directory:
    cd my-python-ci-app

3.⁠ ⁠Run the tests:
    python3 -m unittest discover tests -v

⚙️ CI Pipeline

This project is configured with a GitHub Actions workflow that automatically runs the unit tests on every push to the main branch. You can view the workflow runs in the Actions tab of this repository.

🏗️ Project Structure
my-python-ci-app/
├── .gitignore
├── LICENSE
├── README.md
├── calculator.py
├── main.py
├── requirements.txt
├── setup.py
└── tests/
    └── test_calculator.py

📝 License

This project is licensed under the MIT License - see the LICENSE file for details.