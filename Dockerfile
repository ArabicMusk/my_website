# Use Python 3.13 as the base image
FROM python:3.13-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port your app will run on
EXPOSE 5000

# Set the command to run your app using gunicorn
CMD ["gunicorn", "app:app", "-b", "0.0.0.0:5000"]
