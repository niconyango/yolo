# from the offial Node.js image base image: similar to the LTS I installed in my machine.
FROM node:20.12.2-alpine3.18

# Set the working directory in the container
WORKDIR /
# installing the dependencies
RUN npm install
# Fixing dependencies errors: this helped me sort a specific run time issue
RUN npm audit fix --force
# Copy the rest of the application code
COPY . .

EXPOSE 3000

# Command to run the Node.js application
CMD ["npm", "npm start"]