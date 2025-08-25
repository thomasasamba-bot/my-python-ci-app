# Use an official Python runtime as a base image.
FROM python:3.10-slim-buster

# Set the working directory in the container.
WORKDIR /app

# Copy requirements and install dependencies
COPY src/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code from your local directory to the container's /app.
COPY . .

# Run tests to ensure everything works
RUN python3 -m unittest discover tests -v

# Inform Docker that the container listens on port 80 at runtime.
EXPOSE 80

# Define the command to run the application when the container starts.
CMD ["python3", "main.py"]