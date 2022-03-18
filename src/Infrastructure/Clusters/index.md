# Clusters

## Introduction
Clusters are the backbone of the Solodev Cloud architecture. Clusters provide developers access to cloud-based compute environments designed for high-availability applications and services. Solodev provides an offering of private and public clusters that are built for rapid scalability as well as high density container management and allows developers to host and deploy applications and websites at scale.

 

Developers can use both offerings of clusters to launch applications with EC2 instances, autoscaling, and loadbalancing or run containers. This document provides an overview of Kubernetes and the public and private cluster offerings.

 

## Considerations and advantages of Managed Kubernetes
Coming soon

 

## Containers
Containers allows users to bundle and deploy applications and websites on a variety of systems reliably and consistently. Deploying software and websites in a portable fashion speeds up development, simplifies automation and ensures that the applications run consistently in production and everywhere else. Containers provide the same portability and consistency as VMs, but in a smaller faster and more lightweight fashion because a full copy of the operating system is not required for each container. Solodev Cloud allows users to deploy their websites and applications on private or public clusters. A description of each are provided below.

 

## Public Clusters
Prerequisites: The developer must configure a VPC prior to launching a public cluster.

Description: Public clusters are the backbone of the Solodev Cloud architecture and the default option for launching containerized applications and services. Public clusters allow developers to launch applications and start building websites quickly with minimal configuration. The subscription pricing for each public offering varies among applications and services.   

 

## Private Clusters
Prerequisites: The customer must create an IAM User, obtain an IAM User Access and User Secret Key, configure a VPC EC2 Key Pair, deploy a Kubernetes (EKS) cluster in AWS, and have a DevOps team prior to launching a private cluster.

Description: This feature allows developers to host applications and websites in their own Kubernetes cluster on their own AWS account. Developers and organizations can enjoy dedicated clusters, concierge assistance building and managing their clusters, and advanced security. 

 

## Kubernetes
In a production environment, users must manage the containers running their websites and applications and ensure that there is no downtime. Kubernetes is a framework that provides deployment patterns and automates scaling and failover for applications and websites.

[Learn more about Kubernetes.](https://kubernetes.io/)