# Pull Base Image
FROM python:3.7

# Set environment varibales for python logs and avoiding .pyc file
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Create working directory for docker container
RUN mkdir code
WORKDIR /code

# Copy requirements.txt from curerent local directory to docker container working directory
COPY requirements.txt /code/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy all files from current local directory to docker container working directory
COPY . /code/