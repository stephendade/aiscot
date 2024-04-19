# Use a Debian-based image
FROM python:3.10-slim-bookworm

# Set the working directory in the container
WORKDIR /app

# Copy all package files
COPY . /app

# Build
RUN pip install cryptography pytak && \
    pip install .

# Create a directory for configuration files
RUN mkdir /config

CMD ["aiscot", "-c", "/config/aiscot.ini"]
