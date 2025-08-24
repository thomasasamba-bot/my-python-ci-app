# Use an official Python runtime as a base image.
FROM python:3.10-slim-buster

# Set the working directory in the container.
WORKDIR /app

# Install dependencies if this file changes.
# COPY requirements.txt ./
# RUN pip install --no-cache-dir -r requirements.txt
# Since we don't have dependencies yet, we'll comment this out but leave it for best practices.

# Copy the rest of the application code from your local directory to the container's /app.
COPY . .

# Run tests to ensure everything works
RUN python -m unittest discover tests -v

# Inform Docker that the container listens on port 80 at runtime.
EXPOSE 80

# Define the command to run the application when the container starts.
CMD ["python3", "main.py"]# Docker build timestamp: Sun Aug 24 16:51:21 EAT 2025# Docker build timestamp: Sun Aug 24 16:59:48 EAT 2025
