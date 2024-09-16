# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask
RUN pip install --no-cache-dir flask

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Define environment variable to prevent Python from buffering the output
ENV PYTHONUNBUFFERED=1

# Run the application
CMD ["python", "app.py"]
