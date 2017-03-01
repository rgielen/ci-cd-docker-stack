# CI / CD Docker Stack

A docker-compose based Stack for CI/CD with Jenkins, Gitbucket and Nexus

## Preface

This setup is derived from [Marcel Birkners excellent Demo Setup](https://github.com/marcelbirkner/docker-ci-tool-stack) and [my fork](https://github.com/rgielen/docker-ci-tool-stack) of this setup.
I changed a whole lot of things, such that it justified a new derived project.
 
The key components are a pre-configured Jenkins image (based on [my own Jenkins Training Image](https://hub.docker.com/r/rgielen/jenkins-training/)), along with Sonatype Nexus and Gitbucket.
More features might be added in future.

## Warning

The pre-configuration used especially for the Jenkins service is not safe for production usage, especially the pre-configured secrets and SSH keys.
Please remove these for productive setups.

Also, for production setups enable Jenkins security and change default logins for Nexus and Gitbucket.

## Starting

I assume that recent docker and docker-compose are installed already on your machine.

One you cloned this repo or downloaded a copy, change to the directory where the `docker-compose.yml` file is found.
 
To build the according image, issue

```
docker-compose build --pull
```

Once the build has completed, the setup can be started with
```
docker-compose up
```
if you like to see logs immediately and being able to stop by hitting `Ctrl-C`.
If you like to start the setup in background, issue
```
docker-compose up -d
```
To stop the setup, use
```
docker-compose stop
```

## Usage

All services are accessible by browser, whereby `DOCKER_HOST` refers to the IP of the docker host machine - typically `localhost` when running Docker native, or `192.168.99.100` when running with Docker Toolbox on Mac / Windows.

### Jenkins

Jenkins will be accessible at `http://DOCKER_HOST:30080`. 
Global Security is turned off, such that you are able to start right away.

### Nexus 
Nexus will be accessible at `http://DOCKER_HOST:30081`.
Username is `admin`, password is `admin123`.

### Gitbucket
Gitbucket will be accessible at `http://DOCKER_HOST:30082` and runs it's SSH server on `DOCKER_HOST:17222`.
Username is `root`, password is `root`.
