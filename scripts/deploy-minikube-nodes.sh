#!/bin/bash
# Build minikube virtual machine loaded with kubectl 

echo Start Minikube 
minikube start --nodes 2 -p sample-container --driver=hyperkit  # --vm-driver=virtualbox --driver=hyperkit 
echo List versions 
kubectl api-versions
echo Kubernetes status 
kubectl cluster-info 
# kubectl get deployment 
# kubectl get service 
