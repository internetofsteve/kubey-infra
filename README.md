# 🏗kubey-infra


## Overview
This project configures the kubey staging and production environments.

Each *kubey environment* is a Kubernetes cluster, provisioned in AWS using Kops. For more info on Kubernetes and Kops, see:
- Kubernetes Website - [https://kubernetes.io/](https://kubernetes.io/)
- Kops Github [https://github.com/kubernetes/kops](https://github.com/kubernetes/kops)

### Demo Apps
A running *kubey environment* provides useful things like loadbalancing, TLS and scalibility out of the box. It can house any dockerized application that we choose, providing that the application also supplies a kubernetes configuration file.

For demonstrations purposes, we currently have two apps - a UI and an API:
- [kubey-api](https://github.com/internetofsteve/kubey-api) - A simple express API
- [kubey-ui](https://github.com/internetofsteve/kubey-ui) - A simple React application that makes requests to kubey-api


## Deployment
TODO

## Components


### docker-compose

Used for local development of individual apps including APIs and UIs that make up our demo project.


### Kops Components

 is used to deploy our physical environment to AWS.


### Kubernetes Components

#### Ingress Controller
[Traefic Kubernetes Ingress Controller](https://docs.traefik.io/user-guide/kubernetes/) is used to manage external access (I.e. by users over the Internet) to services within our Kubey cluser.

#### External DNS
[External DNS](https://github.com/kubernetes-incubator/external-dns) is used to make our Kubernetes resources discoverable via [AWS Route53](https://aws.amazon.com/route53/).

#### Cert-Manager
[Cert Manager](https://github.com/jetstack/cert-manager) is used to automatically issue HTTPS certs (powered by [Lets Encrypt](https://letsencrypt.org/)) for our services.


## CI
This project also contains Kubernetes templates that enable CI to perform deployments







