# Use the official Python image from the Docker Hub
FROM --platform=linux/amd64 python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt /app
COPY app.py /app/

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Set the command to run the application
CMD ["python3", "/app/app.py"]

# # Use the official Python base image
# #FROM registry.access.redhat.com/ubi8/python-311
# FROM --platform=linux/amd64 python:3.8-slim

# # Set the working directory inside the container
# WORKDIR /app
# USER root
# # Copy the requirements file to the working directory
# COPY requirements.txt .

# # Install the Python dependencies
# RUN pip install -r requirements.txt

# # Copy the application code to the working directory
# COPY . .

# # Expose the port on which the application will run
# EXPOSE 8080

# # Run the FastAPI application using uvicorn server
# CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]

FROM registry.access.redhat.com/ubi8/python-311

or 

FROM --platform=linux/amd64 python:3.8-slim

WORKDIR /app

COPY requirements.txt /app
COPY app.py /app/


RUN pip3 install -r requirements.txt --user

EXPOSE 8080

CMD ["python3", "/app/main.py"]