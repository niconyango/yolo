# Use the official Node.js image as the base image
FROM node:alpine3.18 

# Set the working directory in the container
WORKDIR /
# Copy package.json and package-lock.json files
COPY package*.json ./
# Install dependencies
# RUN npm install --immutable
RUN npm install
# Copy the rest of the application code
COPY . .
# Access port
EXPOSE 5000

# Command to run the Node.js application
CMD ["npm", "start"]
