# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install required libraries
RUN pip install --no-cache-dir \
    google.generativeai\
    google.ai.generativelanguage \
    python-dotenv

# Ensure the .env file is copied
COPY .env /app/.env

# Run the Python script when the container launches
CMD ["python", "rec.py"]
