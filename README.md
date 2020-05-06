# Local environment

1. Docker and Docker Compose (for example, Docker for Windows)
2. GitHub and DockerHub (CI/CD)

# Use

Up and running dev environment:
>docker-compose up --build -d 

# Integration with Docker Hub

In order to deploy flask app container to test and shared the application (or deploy it in production), we can push an image to docker hub **automatically** when commit occurs (continuous integration). Moreover, it is also posible to run test before push to DockerHub automatically with *docker-compose.test.yml* file. 

&rarr; [docker blog](!https://www.docker.com/blog/how-to-build-and-test-your-docker-images-in-the-cloud-with-docker-hub/) &larr;

We have to create a Docker Hub repository (for example, *flask-dev*) and configure it as shown below:

![Docker Hub Configuration](/assets/dockerhub1.png)

![Docker Hub Configuration](/assets/dockerhub2.png)

We have configurated two rules:
1. Push image always when commit occurs with *latest* tag
2. Push release image (release-x.x.x) when a new release is generated in the github repo with tag x.x.x

# Test or deploy DockerHub image

docker run -d -p 5000:5000 itarano/flask-dev:release-1.0.0