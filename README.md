# README

Note that AWS credentials should be set to local variables in order for these playbooks to function correctly.

# create.yml
Creates a fresh ec2 instance. Uses an existing keypair called cmpe172-key-pair. To ssh into this instance, the .pem file needs to be downloaded and added using `ssh-add cmpe172-key-pair.pem`. Run using:
```
ansible-playbook create.yml
```

# provision.yml
Provisions instances with a setup script. Uses ssh connection to 'production' hosts in hosts file, so make sure it is correctly configured. To run:
```
ansible-playbook provision.yml --extra-vars "instance_id=i-00f5bb3c986b291d8 region=us-west-2"
```

# terminate.yml
This playbook terminates a ec2 instance. Extra vars needed are instance_id and region. To run,
```
ansible-playbook terminate.yml --extra-vars "instance_id=i-00f5bb3c986b291d8 region=us-west-2"
```

