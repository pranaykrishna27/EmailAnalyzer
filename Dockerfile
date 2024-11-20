# Use an official Python runtime as the parent image
FROM python:3.11
 
# Add a unique tag to the image
LABEL version="1.0.0"
 
# Set the working directory to /app
WORKDIR /app
 
# Copy the requirements file to the working directory
COPY requirements.txt .
 
# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt
 
# Copy the rest of the application code to the working directory
COPY . .
 
# Expose port 5000
EXPOSE 8080