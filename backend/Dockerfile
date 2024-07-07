# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory
WORKDIR /app

# Copy the project files into the container
COPY . /app

# Install Poetry
RUN pip install poetry

# Install dependencies defined in pyproject.toml
RUN poetry install

# Copy and run prestart.sh
COPY ./prestart.sh /app/prestart.sh
RUN chmod +x /app/prestart.sh
RUN poetry run bash ./prestart.sh

# Expose the port the app runs on
EXPOSE 8000

# Define the command to run the application
CMD ["poetry", "run", "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
