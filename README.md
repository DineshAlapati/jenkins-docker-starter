# jenkins-docker-starter

**Jenkins-docker-starter** is a repository that helps you to setup Jenkins quickly on your machine.

This provides Jenkins setup for both 1.x and 2.x versions

## Usage

### Clone
clone the repo 

```
    $ git clone git@github.com:DineshAlapati/jenkins-docker-starter.git
    $ cd jenkins-docker-starter
```

Depending upon which jenkins version you would like to install navigate to the respective directory

```
    $ cd jenkins-2.x
```

### Install Docker

Install docker on you machine by following these [instructions](https://docs.docker.com/engine/installation/#supported-platforms).

### Build
Build the docker image by running following command

```
    $ make build
```

### Start Jenkins Service
Run the docker services by running following command

```
    $ make build
```

### Stop Jenkins Services
Stop the running docker containers

```
    $ make stop
```

### Clean up
Clean stopped docker containers

```
    $ make clean
```

clean docker images

```
    $ make clean-images
```