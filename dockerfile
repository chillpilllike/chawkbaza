# Use the latest Node.js image as the base image
FROM node:latest

# Install dependencies
RUN apt-get update && apt-get install -y git

# Set the working directory in the container
WORKDIR /app

RUN yarn build

# Specify the command to run the app
CMD ["yarn", "start"]
