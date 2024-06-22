# FROM python:3.8.5-slim-buster

# WORKDIR /app

# COPY . /app

# RUN pip install -r requirements.txt

# CMD ["python3", "app.py"]

# Use an official Python runtime as a parent image
FROM python:3.8.5-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    libssl-dev \
    libffi-dev \
    libxml2-dev \
    libxslt1-dev \
    zlib1g-dev

# Upgrade pip
RUN pip install --upgrade pip

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Run app.py when the container launches
CMD ["python3", "app.py"]
