\# DevOps Python Lab



A hands-on DevOps learning project demonstrating a simple Python web application and a basic containerized deployment workflow.



\## Project Goals



This project is being used to develop practical experience with:



\- Python and Flask

\- Git and GitHub

\- Docker and containerization

\- Terraform and Infrastructure as Code (IaC)



\## Application



The application is a small Flask REST API with two endpoints:



\### `/`



Returns basic application information.



\### `/status`



Returns application health and version information.



Example response:

```json
{
  "application": "devops-python-lab",
  "status": "healthy",
  "version": "1.1"
}
```



\## Running Locally



Create and activate a Python virtual environment, then install the dependencies:



```powershell

python -m venv .venv

.\\.venv\\Scripts\\Activate.ps1

python -m pip install -r requirements.txt

```



Start the application:



```powershell

python app.py

```



The API will be available at:



```text

http://localhost:5000

```



\## Running with Docker



Build the Docker image:



```powershell

docker build -t devops-python-lab .

```



Create and start the container:



```powershell

docker run -d -p 5000:5000 --name devops-lab-container devops-python-lab

```



Verify the container is running:



```powershell

docker ps

```



Test the health endpoint:



```text

http://localhost:5000/status

```



View application logs:



```powershell

docker logs devops-lab-container

```



Stop and restart the container:



```powershell

docker stop devops-lab-container

docker start devops-lab-container

```



\## Infrastructure as Code



## Infrastructure as Code (Terraform)

Terraform is used to provision and manage the Flask application's Docker container using Infrastructure as Code (IaC).

The configuration is located in `terraform/main.tf` and uses the `kreuzwerker/docker` provider.

### Prerequisites

- Terraform installed
- Docker Desktop running
- Docker image built locally

From the project root, build the application image:

```powershell
docker build -t devops-python-lab .
```

### Deploy with Terraform

Navigate to the Terraform directory:

```powershell
cd terraform
```

Initialize Terraform and validate the configuration:

```powershell
terraform init
terraform fmt
terraform validate
```

Preview and apply the infrastructure:

```powershell
terraform plan
terraform apply
```

Approve the proposed changes when prompted.

Verify the deployment:

```powershell
docker ps
```

Test the application at `http://localhost:5000/status`.

### Manage Infrastructure Changes

Modify `main.tf`, then run:

```powershell
terraform plan
terraform apply
```

Terraform compares the desired configuration with the existing infrastructure and determines which resources need to be created, updated, or replaced.

### Destroy Infrastructure

Remove the Terraform-managed resources:

```powershell
terraform destroy
```

Confirm that the resources were removed:

```powershell
docker ps
terraform state list
```

### Key Concepts Practiced

- Terraform providers and resources
- Declarative infrastructure configuration
- Initialization, validation, planning, and application
- Terraform state management
- Idempotency and infrastructure drift detection
- Resource replacement and deployment implications
- Controlled infrastructure teardown

**Note:** This project provisions Docker infrastructure locally. Cloud deployment is a possible future enhancement.



\## What I've Learned



This project provides hands-on experience with:



\- Managing source code and commit history with Git

\- Publishing and maintaining a remote GitHub repository

\- Managing Python dependencies with virtual environments

\- Building Docker images using a Dockerfile

\- Understanding Docker image layers and build caching

\- Running and managing containers

\- Mapping host ports to container ports

\- Viewing container logs for troubleshooting

\- Rebuilding an image and redeploying a container after an application change



## Next Steps

- Deploy the containerized application to Microsoft Azure.
- Expand Terraform configuration to provision cloud infrastructure.
- Implement a CI/CD pipeline using GitHub Actions.
- Add automated testing for the Flask API.
- Continue improving project documentation.

