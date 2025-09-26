# Production-Environment-Homelab

This is a simple **Homelab Project** that demonstrates the collaboration of several modern technologies.\
In this project, I use the following tools: 
- **VirtualBox**: to create and manage virtual machines locally, providing an isolated environment for testing and development.  
- **Terraform**: to describe and provision infrastructure as code, ensuring consistent and reproducible VM creation.  
- **Ansible**: to automate the configuration and setup of the virtual machines created by Terraform.  
- **Docker**: to containerize and run applications in a lightweight, portable, and scalable environment.  
- **Git and GitHub**: to manage version control of the application and infrastructure code, enabling easy collaboration, history tracking, and integration with automation tools.  
- **Linux (Ubuntu Server)**: to serve as the host operating system, providing a stable and flexible foundation for running services.  
- **Python**: to develop and run a simple Flask-based application within the containerized environment.

## Project structure
<pre>
├── app/
│ └── app.py # Flask application
│ └── requirements.txt # Python dependencies
├── docker/
│ └── Dockerfile # Docker image definition
├── ansible/
| └── inventory.ini
| └── playbook.yml
├── terraform/
│ └── VMware_VM/
|   └── main.tf # To create docker container and run Flask app
│ └── VirtualBox_Host/
|   └── main.tf # To create VirtualBox VM
|   └── Vagrantfile
├── monitoring/
| └── prometheus.yml
│ └── grafana/
│   └── dashboards.json
├── .dockerignore
├── .gitignore
└── docker-compose.yml # To start Stack
</pre>
## Run application

1. Clone the repository
```bash
   git clone https://github.com/pleszkoi/Production-Environment-Homelab.git
   cd Production-Environment-Homelab
```
2. Create the Virtual Machine with Terraform
```bash
   cd terraform/VirtualBox_Host
   terraform init
   terraform apply -auto-approve
```
3. Configure the VM and deploy the application with Ansible
```bash
   cd ../../ansible
   ansible-playbook -i inventory.ini playbook.yml --limit debian
```
4. Open it in browser
```arduino
   http://localhost:5000
```

If everything went good, the "Hello from Dockerized Flask App!" message appears.\
If you modify the app/app.py file, the change will also be updated in the container (due to the volumes setting in docker-compose.yml).

**Author: Pleszkó István**\
**LinkedIn: https://www.linkedin.com/in/pleszko-istvan/**
