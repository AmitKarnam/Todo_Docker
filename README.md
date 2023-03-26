# Todo_Docker
Learning Cloud Native technologies by building a simple flask app

## Service Oriented Architecture
- This project consists of 3 services : 
  1. ToDo 
  2. Efficiency
  3. Postgres DB
  
- **ToDo** : Application with simple form where user can add thier tasks. Basic CRUD applicaiton written in python flask framework.
- **Efficiency** : Application that calculates efficiency of user by acessing the shared database and calculating the total number of tasks completed with respect to total number of tasks present.
- **Postgres DB** : Shared Database used to store the Data generated from the ToDo application.

## Docker
- Used Dockerfile to containerize the applications
- docker compose is used to run the project as a whole, by running the command
`docker compose up`

  1. This runs the Todo, efficiency and Postgres DB services and configures the port as mentioned in the compose file
  2. Sets up a network for the project , named as consul using the default *bridge* driver
  
## Consul Service Mesh
- A service mesh is set up for communication between the services, which is the industry standard.
- For my project I've used the Consul service mesh with 3 server agents and 3 client agents.
- The inbuilt L4 proxies have been used as proxy for the incoming traffic for the services.
