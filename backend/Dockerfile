# Use the official Node.js image as the base image
FROM node:22-alpine3.18

# Set the working directory in the container
WORKDIR /
# Install dependencies
RUN npm install
# Fixing dependencies errors
RUN npm audit fix --force
# Copy the rest of the application code
COPY . .
EXPOSE 5000

# Command to run the Node.js application
CMD ["npm", "npm start"]