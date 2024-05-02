# from the offial Node.js image base image
FROM node:alpine

# Set the working directory in the container
WORKDIR /
# Copy package.json and package-lock.json files
COPY package*.json ./
# installing the dependencies
RUN npm install
# Copy the rest of the application code
COPY . .

EXPOSE 3000

# Command to run the Node.js application
CMD ["npm", "start"]

#reusing the build image
FROM node:alpine
#seting the working directory in the container
WORKDIR /
# reusing the build image
COPY --from=build ./node_modules ./node_modules
COPY --from=build . .

EXPOSE 5000
CMD ["npm", "start"]