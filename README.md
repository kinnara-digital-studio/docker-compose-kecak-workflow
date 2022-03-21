# About me
Easiest way to run Kecak Workflow out of the box

# Pre requisite
* [Docker](https://docs.docker.com/install)

# Deployment
Clone this project
```sh
git clone https://github.com/kinnara-digital-studio/docker-compose-kecak-workflow.git
```

Navigate to project's folder
```sh
cd docker-compose-kecak-workflow
```

Run Docker Compose
```sh
docker-compose up -d
```
Show Logs
```sh
docker-compose logs -f --tail=10
```
# Debugging
Remote Server Debugging mode can be accessed using maven remote debugger on port 8000
