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

&#x20; "application": "devops-python-lab",

&#x20; "status": "healthy",

&#x20; "version": "1.1"

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



Terraform will be added to the project to demonstrate Infrastructure as Code and automated provisioning.



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



\## Next Steps



\- Add Terraform configuration

\- Provision the application using Infrastructure as Code

\- Document the Terraform deployment and teardown process

\- Continue improving project documentation

