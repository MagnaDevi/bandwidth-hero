# Use the official Node.js image as the base image
FROM node:8

# Set the working directory in the container
WORKDIR /app

# Copy the application files into the working directory
COPY . /app

# Install the application dependencies
RUN npm install --no-healthcheck; npm install caniuse-lite; npx browserslist@latest --update-db; 

# Expose port 80
EXPOSE 80
