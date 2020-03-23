# Local environment

1. Docker (Docker for Windows for example)
2. Windows

PS: Within linux, it is easy to transform *.bat* scripts into *.sh* scripts because they are self-explained.

# Use

Up and running dev environment:
>docker-compose up -d 

Install dependencies:
>install_dependencies.bat

Run flask app:
>run_flask.bat

# Integration with Docker Hub

In order to deploy flask app container to test and shared the application, we can push an image to docker hub automatically when commit occurs.

We have to create a Docker Hub repository (for example with the same name like PROJECT_NAME variable in .env file) and configure it as shown below:

![Docker Hub Configuration](/assets/dockerhub1.png)

![Docker Hub Configuration](/assets/dockerhub2.png)

It's also possible to configure rules to generate different versions of the application (add different **build rules**).

# Run docker hub container

docker run -d -p 5000:5000 itarano/flask-test:latest