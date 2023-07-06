# Use a base image with Python and your desired version
FROM python:3.10.9

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt
RUN git clone https://github.com/ronghuaiyang/arcface-pytorch.git

# Copy the entire Flask app to the container
COPY . .

# Set the environment variable for Flask
ENV FLASK_APP=app.py

# Expose the port on which the Flask app will run
EXPOSE 5000

# Run the Flask app when the container starts
CMD ["flask", "run", "--host", "0.0.0.0"]