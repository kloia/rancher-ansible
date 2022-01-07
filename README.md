# Rancher Ansible Playbook

## Overview

This playbook installs stable version of Rancher with kubectl and HELM CLIs.

Currently it uses privateCA signed certificates for TLS options.

## How to use

### Prereqs

- Docker installed on jump server

### First steps
1. Clone this repository into jumper server
2. Build docker image with `docker build . -t rancher-ansible`
3. Update variables on `vars/general-config.yml` if necessary

### Rancher Installation
1. Copy your CA certficate, TLS key and certificate files to the root of the repository (e.g. /home/my-user/rancher-ansible/tls.crt ca.crt and tls.key)
2. Copy your kubeconfig file to the root of this repository **(You may need to set insecure-skip-tls-verify: true and remove certificate-authority-data if you're getting TLS errors)**
3. Update variables on `vars/rancher-config.yml` if necessary **(Don't forget to update hostname variable)**
4. Run `docker run -it -v $(pwd):/app rancher-ansible "./provision_rancher.sh"`

### Monitoring Installation
1. Update variables on `vars/monitoring-config` according to your installation and infrastructure
2. Run `docker run -it -v $(pwd):/app rancher-ansible "./provision_rancher_monitoring.sh`

## How to contribute

You can check TODO.md for contributions and suggestions.
