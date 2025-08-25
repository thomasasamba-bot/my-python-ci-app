FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Set Python path to include src
ENV PYTHONPATH=/app/src

# Copy requirements first for better caching
COPY src/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Run tests
RUN python3 -m unittest discover tests -v

# Expose port
EXPOSE 80

# Command to run the application
CMD ["python3", "src/main.py"]