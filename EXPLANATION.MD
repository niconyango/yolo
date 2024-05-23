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
