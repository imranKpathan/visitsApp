# A Simple web App To Count Visits. 
A Simple Web App developed using NodeJS and Redis. Deployed using Docker.

## Application Server Code
- package.json
- index.js

## Infrastructure Design
- This Application will need at least 2 containers
    1. Node-App Container
    2. Redis-Server Container
- Application can be scaled up by increasing number of Node-App Containers.

## Build Docker Image For Node-App From Docker File
 - Build and Start-up Node-App container using 'docker build .'
 - Build and run Redis-Server container using 'docker run redis'
 - Both containers will be started but they won't be able to communicate with each other.
 - In order for this app to work we would need to establish communication between both containers.
 - When initiating containers with Docker-CLI, each container will have it's own VPN
 - Use Docker Compose to build both containers inside a shared network.