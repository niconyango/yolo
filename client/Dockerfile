# from the offial Node.js image base image
FROM node:alpine 
# Set the working directory in the container
WORKDIR /
# Copy package.json and package-lock.json files
COPY package*.json ./
# installing the dependencies
# RUN npm install --immutable
RUN npm install
# Copy the rest of the application code
COPY . .

EXPOSE 3000
# Command to run the Node.js application
CMD ["npm", "start"]