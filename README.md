Kubernetes
Using YAML files, create a namespace with the following resources:
- A simple web app (feel free to use any existing image or build your own)
- A load balancer that listens for both HTTP and HTTPS traffic
- A redirect for all HTTP traffic to go the HTTPS endpoint
- A valid TLS certificate (self-signed is fine)


Terraform
Write a Terraform definition for the following AWS resources:
- A new bucket named "zypers-shared-docs"
- A new IAM group named "Zypers"
- A policy for that group that allows members to browse and read objects in that bucket, with no write
access
Questions:
1) What kinds of limitations do you face when moving applications from dedicated instances to
Kubernetes?
2) What are some ways to offset those limitations?
3) If there is a user in AWS that we want to remove, but aren't sure if doing so will break an application,
what can we do?
4) We have an application that launches instances on demand and then generates a DNS entry to give
our users to embed in static configuration files. In what ways does that help us? In what way can it hurt
us? Is there any other way to do something similar with fewer risks?
