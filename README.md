# Expense Tracker (MERN)

> Full stack expense tracker
> This is forked from https://github.com/bradtraversy/expense-tracker-mern

Work has been done to containerized it to run in minikube / kubernetes

## Usage

```
change config.env file in config folder
```

```
All images will be deployed in the namespace "development"

1. To build the images, go the the deploy folder and run:

 build-images.sh

This will build, tag and push the built images to my github registry.

2. To deploy the images to minikube, use kubectl to apply the scripts in the following order:

    ns-deployment.yml
    mongo-deployment.yml
    backend-deployment.yml
    frontend-deployment.yml

This should get the application running
```
