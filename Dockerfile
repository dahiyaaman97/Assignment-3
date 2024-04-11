# Use an official Python runtime as a parent image
FROM circleci/python
 
# Set the working directory in the container
WORKDIR /app
 
# Copy the current directory contents into the container at /app
COPY . /app
 
# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir Flask
 
# Make port 5000 available to the world outside this container
EXPOSE 5000
 
# Define environment variable
ENV NAME World
 
# Run app.py when the container launches
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
