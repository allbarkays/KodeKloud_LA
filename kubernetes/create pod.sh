The Nautilus DevOps team has started practicing some pods and services deployment on Kubernetes platform as they are planning to migrate most of their applications on Kubernetes platform. Recently one of the team members has been assigned a task to create a pod as per details mentioned below:

Create a pod named pod-nginx using the image nginx with latest tag only and remember to mention tag i.e nginx:latest.

Labels app should be named as nginx_app, also container should be named as nginx-container.

Note: The kubectl utility on jump_host has been configured to work with the kubernetes cluster.

# steps

1. At first  kubectl  utility configure and working from jump server, run below commands

    kubectl get namespace
    kubectl get pods


2.  Create pod.yaml file with all the parameters as below:

    vi /tmp/pod.yaml

                apiVersion: v1
                kind: Pod
                metadata:
                    name: pod-nginx
                    labels:
                        app: nginx_app
                spec:
                    containers:
                    - name: nginx-container
                      image: nginx:latest

3.  Run below command to create pod 

    kubectl create -f /tmp/pod.yaml

4.  Wait for  pods to get running status

    kubectl get pods
    kubectl get pods -o wide
    kubectl logs -f pod-nginx


Ref: https://www.nbtechsupport.co.in/2021/05/create-pods-in-kubernetes-cluster.html