# Use an official Python runtime as the base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

#Copy installation direction file and perform packages installation
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
 
#Copy application to working directoy
COPY *.py ./

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]
