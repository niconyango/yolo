# Requirements.

To be able to successfully deploy the application I need the following installed:

- [Virtualbox and Vagrant](https://medium.com/@kadimasam/set-up-virtualbox-and-vagrant-on-ubuntu-22-04-9ac6b9ace94c)
- [Ansible](https://medium.com/@kadimasam/install-ansible-on-ubuntu-22-04-f5152edcbdce)
- [terraform](https://developer.hashicorp.com/terraform/install)

# For the Stage 1.

After the installation are done, browse through the project root directory and:

- Create `ansible configuration file`,`inventory` and `playbook`.
- `vagrant init` to create Vagrant configuration file.
- `vagrant up` to start the VM and start the app.

# Stage Two

- Create directory `Stage Two`.
- Create `ansible configuration file`,`inventory` and `playbook`.
- create `terraform configuration file` with all the provision details, then perform the following steps:
  - `terraform init` to create terraform state tracking file and folders.
  - `terraform plan`
  - `terraform apply`
-
