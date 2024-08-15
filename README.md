# My Cluster Addons

This repository contains Terraform scripts for installing various Kubernetes addons in a cluster. These addons are crucial for enhancing the functionality of Kubernetes clusters, providing features such as ingress controllers, message brokers, and more.

## Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Addons Included](#addons-included)
- [Usage](#usage)

## Overview

The `my-cluster-addons` project is designed to simplify the installation of essential Kubernetes addons using Terraform. This project uses Helm for installing addons.

## Prerequisites

Before using this project, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html)
- A Kubernetes cluster
- Necessary access permissions to manage resources in the cluster

## Addons Included

The following Kubernetes addons are installed by the Terraform scripts in this repository:

- **Ingress NGINX Controller:** A highly customizable ingress controller for Kubernetes
- **RabbitMQ Cluster Kubernetes Operator:** An operator for managing RabbitMQ clusters in Kubernetes
- **Kubernetes Metrics Server:** Scalable and efficient source of container resource metrics for Kubernetes built-in autoscaling pipelines
- **Longhorn:** Cloud-Native distributed storage built on and for Kubernetes
- **cert-manager:** Automatically provision and manage TLS certificates in Kubernetes
- **kube-prometheus-stack:** collects Kubernetes manifests, Grafana dashboards, and Prometheus rules combined with documentation and scripts to provide easy to operate end-to-end Kubernetes cluster monitoring with Prometheus using the Prometheus Operator.

Additional addons can be included as per your cluster requirements.

## Usage

### 1. Clone the repository

```bash
git clone https://github.com/yourusername/my-cluster-addons.git
cd my-cluster-addons
```

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Apply the Terraform scripts

```bash
terraform apply
```

## Add new addons

You can add new addons using Helm charts! you can find helm chart of different applications and add it to `main.tf` file
