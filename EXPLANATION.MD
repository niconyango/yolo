# Git Work Flow

I made sure any step made is pushed however small, this was to ensure that any idea or step made is documented.

# Image selection

To ensure I end up with a minified version of the images, I applied the following from the few readings I made:

1. Multi-stage builds: this aided in discarding unnecessary build dependencies and only include the final artifacts.
2. Use of alpine-based images: alpine Linux, fronted as being lightweight and security focused, helped in ensuring that the final images are as small as possible.
3. .dockerignore: this helped in ensuring unnecessary directories/files are not copied to the final image.

The above enable me to achieve `227.1 MB` in total for all the images i.e backend: `184 MB` and frontend `43.1 MB`.

![alt text](<Screenshot from 2024-05-08 20-00-21.png>)

# Image Versioning

Being that they were first images, I settled on v1.0.0 as the tag version.

![alt text](<Screenshot from 2024-05-08 20-00-21-1.png>)

# Image Deployment

I built two images: frontend and backend which are successfully deployed in the repository as attached.
![alt text](<Screenshot from 2024-05-05 00-32-00.png>)

backend image:
![alt text](<Screenshot from 2024-05-05 22-08-30.png>)

frontend image:
![alt text](<Screenshot from 2024-05-05 22-07-55.png>)

# Service Orchestration

The service is deployable by running the docker-compose file as it has everything for deployment.
![alt text](<Screenshot from 2024-05-05 22-11-04.png>)
When deployed, it is possible to view the page and also add products.
![alt text](<Screenshot from 2024-05-05 00-36-47.png>)

# Persistence of the added products

With the help of volumes, images are therefore, persistent even when the containers are stopped and recreated again. This had two solutions to it, volume which has been enabled and MongoDB Atlas.

# IP 3

# Playbook Structure

Mentioned as best practice in coming up with a well structured `Playbook`, I employed the use of `ansible-galaxy` in developing the roles which are later played in the order below.

1. test-connect:

   This is meant to test the connect to the created VM so as to acertain that the control node is able to reach it.

2. update-server:

   This is meant to update the server packages in prepation other installations which may require updated package indexes.

3. install-dependencies:

   Being that we needed `docker` to deploy our containers, I needed to firt install all its dependencies before I could install it.

4. install-docker:

   After `docker-dependencies` are installed, the environment was therefore ready to now be installed.

5. install-git:

   I needed to clone a git repository that is to be used to build images and this, meant I had to have git installed.

6. clone-repo:

   After installing `git`, everything was ready for me to clone the repository.

7. deploy-containers:

   After all installations are done, the environment was ready to support deployment of containers.
