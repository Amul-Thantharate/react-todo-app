# Purpose: Dockerfile for the nodejs application
FROM node:latest

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json . /app/

# Bundle app source
RUN npm install

# Copy the rest of the files
COPY . /app/

# Expose the port
EXPOSE 3000

# Start the application
CMD npm start

# Finall app deployment