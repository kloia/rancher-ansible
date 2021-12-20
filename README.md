# Rancher Ansible Playbook

## Overview

This playbook installs stable version of Rancher with kubectl and HELM CLIs.

Currently it uses privateCA signed certificates for TLS options.

## How to use

1. Clone this repository into jumper server
2. Build docker image with `docker build . -t rancher-ansible`
3. Copy your CA certficate, TLS key and certificate files to the root of the repository (e.g. /home/my-user/rancher-ansible/tls.crt ca.crt and tls.key)
4. Copy your kubeconfig file to the root of this repository **(You may need to set insecure-skip-tls-verify: true and remove certificate-authority-data if you're getting TLS errors)**
4. Update variables on vars/general-config according to your installation and infrastructure
5. Run `docker run -it -v $(pwd):/app rancher-ansible "./run.sh"`

## How to contribute

You can check TODO.md for contributions and suggestions. Currently we're missing support for other TLS options and Rancher versions.
