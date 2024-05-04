# STAGE 1
# From base image node
FROM node:alpine as build
# Changing working directory
WORKDIR /code

# Copy package.json and package-lock.json files
COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm install --production
# COPY all the files from Current Directory into the Container
COPY . .

# Install the Project Dependencies like Express Framework
RUN npm run build

# STAGE 2
FROM nginx:1.22-alpine as prod

COPY --from=build /code/build /usr/share/nginx/html

# Tell that this image is going to Open a Port 
EXPOSE 3000

# Default Command to launch the Application
CMD ["nginx", "-g", "daemon off;"]