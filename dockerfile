# Use the latest Node.js image as the base image
FROM node:latest

# Install dependencies
RUN apt-get update && apt-get install -y git

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install --legacy-peer-deps

# Copy the rest of the application files to the working directory
COPY . .

# Build the application
RUN npm run build

# Expose the port the app runs on
EXPOSE 3000

# Specify the command to run the app
CMD ["npm", "start"]
