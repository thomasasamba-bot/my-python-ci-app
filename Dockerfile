# Use an official Python runtime as a base image.
FROM python:3.10-slim-buster

WORKDIR /app

COPY src/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application source code
COPY src/ ./src/

# Copy tests directory
COPY tests/ ./tests/

# Ensure tests are discoverable
RUN touch ./tests/__init__.py

# Run tests to ensure everything works
RUN python3 -m unittest discover tests -v

EXPOSE 80

CMD ["python3", "main.py"]