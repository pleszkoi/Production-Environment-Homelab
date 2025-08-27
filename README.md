# Production-Environment-Homelab

This is a simple **Homelab Project** that demonstrates the collaboration of several modern technologies.\
In this project, I use: 
- **VMWare** to create Virtual Machines.
- **Terraform** to describe the structure of the Virtual Machines,
- **Ansible** to configure the Virtual Machines created by Terraform.
- I run applications in a containerized environment (**Git and GitHub**) and use
- **Prometheus** and **Grafana** to monitor processes.
- **Linux (Ubuntu Server)** provides the basic environment.
- An application written in **Python** runs in the environment.

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
| └── main.tf
├── monitoring
| └── prometheus.yml
│   └── grafana/
│     └── dashboards.json
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
2. Build and start with `docker compose`
```bash
   docker compose up --build
```
3. Open it in browser
```arduino
   http://localhost:5000
```

If everything went good, the "Hello from Dockerized Flask App!" message appears.\
If you modify the app/app.py file, the change will also be updated in the container (due to the volumes setting in docker-compose.yml).

**Author: Pleszkó István**\
**LinkedIn: https://www.linkedin.com/in/pleszko-istvan/**
