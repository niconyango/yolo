# Use the official Node.js image as the base image
FROM node:alpine as build

# Set the working directory in the container
WORKDIR /
# Copy package.json and package-lock.json files
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy the rest of the application code
COPY . .
EXPOSE 5000

# Command to run the Node.js application
CMD ["npm", "start"]


FROM node:alpine
#seting the working directory in the container
WORKDIR /
# reusing the build image
COPY --from=build ./node_modules ./node_modules
COPY --from=build . .

EXPOSE 5000
CMD ["npm", "start"]
