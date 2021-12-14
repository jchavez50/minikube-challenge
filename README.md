# Kubernetes environment on Minikube (optional AWS)


### OVERVIEW 

Prepare a simple deployment of Kubernetes cluster running 2 containers on Mac OS. 
Each node should be able to expose the container service with an Ingress port 5060.

### Prerequisites 

##### AWS 

- [AWS account or EKS](https://aws.amazon.com/console/)
- Terraform installed (optional if deploy AWS EKS) `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null`

##### Mac OS
- [Hombrew](https://brew.sh/) and [Hombrew Cask](https://brew.sh/) 
- [Docker for Mac install](https://docs.docker.com/docker-for-mac/install/) (Dockerfile)
- Virtualenv (VirtualBox or VMPlayer) `brew cask install virtualbox`
- Kubernetes installed `brew install kubectl`
- Minikube installed (hypervisor) - 
    ```
    curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.28.2/minikube-darwin-amd64 &&\
    chmod +x minikube &&\
    sudo mv minikube /usr/local/bin/

    ```
    Check running services within minikube
    `minikube start`, `kubectl api-versions`, `kubectl cluster-info`





