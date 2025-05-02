# Use an official Python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose Flask port
EXPOSE 5000

# Set environment variable and start Flask app
ENV FLASK_APP=main.py
CMD ["flask", "run", "--host=0.0.0.0"]
