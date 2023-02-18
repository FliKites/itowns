# Use a Node.js base image with a specific version of Node.js
FROM node:latest

# Set the working directory to /app
WORKDIR /app

# Copy the contents of the iTowns repository to the Docker image
COPY . /app

# Install the required packages and dependencies
RUN npm install

# Expose port 8080
EXPOSE 8080

# Start the iTowns server when the container starts
CMD npm run start
