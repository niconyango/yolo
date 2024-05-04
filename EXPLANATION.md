# Git Work Flow

I made sure any step made is pushed however small, this was to ensure that any idea or step made is documented.

# Image selection

To ensure I end up with a minified version of the images, I applied the following from the few readings I made:

1. Multi-stage builds: this aided in discarding unnecessary build dependencies and only include the final artifacts.
2. Use of alpine-based images: alpine Linux fronted as being lightweight and security focused, helped in ensuring
   that the final images are reduced to size significantly.
3. .dockerignore: this helped in ensuring unnecessary directories and files are not copied to the final image.

# Image Versioning

![alt text](<Screenshot from 2024-05-04 22-23-32.png>)
![alt text](<Screenshot from 2024-05-05 00-33-39.png>)

# Image Deployment

I built two images: frontend and backend which are deployed.
![alt text](<Screenshot from 2024-05-05 00-32-00.png>)

# Service Orchestration

The service is deployable by just running the docker-compose file included in the root folder as it has all the requirements for deployment.
![alt text](<Screenshot from 2024-05-05 00-36-47.png>)

# Persistence of the added products

There being more than one option to achieve this, I managed to set up both the volume and MongoDB Atlas in efforts to make sure that either works.
