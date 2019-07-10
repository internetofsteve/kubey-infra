# kubey-infra

Template store for setting up the Kubernetes environment for our demo app.

## Deployment
TODO

## Components

### Kops Components

[Kops](https://github.com/kubernetes/kops) is used to deploy our physical environment to AWS.

### Kubernetes Components

#### Ingress Controller
[Traefic Kubernetes Ingress Controller](https://docs.traefik.io/user-guide/kubernetes/) is used to manage external access (I.e. by users over the Internet) to services within our Kubey cluser.

#### External DNS
[External DNS](https://github.com/kubernetes-incubator/external-dns) is used to make our Kubernetes resources discoverable via [AWS Route53](https://aws.amazon.com/route53/).

#### Cert-Manager
[Cert Manager](https://github.com/jetstack/cert-manager) is used to automatically issue HTTPS certs (powered by [Lets Encrypt](https://letsencrypt.org/)) for our services.

## CI
This project also contains Kubernetes templates that enable CI to perform deployments




### docker-compose

Used for local development of individual apps including APIs and UIs that make up our demo project.


