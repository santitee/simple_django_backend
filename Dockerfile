# syntax=docker/dockerfile:1
FROM python:3.9-alpine
ENV PYTHONUNBUFFERED=1

# Directory Creation
RUN mkdir /code
WORKDIR /code
COPY . /code/

# Install dependecies
COPY requirements.txt /code/
RUN pip install -r requirements.txt
