# kubernetes-microservices
[![olufunbi](https://circleci.com/gh/olufunbi/kubernetes-microservices.svg?style=svg)](https://app.circleci.com/pipelines/github/olufunbi/kubernetes-microservices)

Containerized micro-services for automated Machine Learning and Prediction

## Project Overview
The Kubernetes-Microservices project contains a Machine Learning Microservice, built using **Scikit-Learn**. It contains a model that predicts house prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). 

## Features of this project
- Installs necessary python binary
- Lints the python files
- Lints the Docker file
- Runs a docker container
- Upload container into a public registry (hub.docker.com)
- Run the deployed application in a Kubernetes cluster
- Integrate with CircleCI for continuous integration

## Requirements
 - Python 3.7
 - (Optional): It is advisable to use a cloud environmentsuch as AWS cloud9 to avoid installation issues.

### Step 1
- Start by forking this repository

### Step 2: Install dependencies
- Set up the environment by running `make setup`. This will create a virtual environment in your home directory called `.devops`
- Install dependencies by running `make install`
- Install hadolint if you want to lint the Docker file
- (Optionally) Lint application (requires hadolint)
- Lint the necessary files by running `make lint`

### Step 2: Run Docker container
- Run the application on docker using the bash script `./run_docker.sh`

### Step 3: Upload to Docker Hub
- In the `./upload_docker.sh` bash script, edit the dockerpath and change the docker username to a personalized one.
- To upload to docker hub, run `./upload_docker.sh`

### Step 4: Kubernetes deployment
- To deploy to kubernetes, run `./run_kubernetes.sh`

#### Happy coding! Your's sincerely, Olufunbi!