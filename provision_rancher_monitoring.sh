#!/bin/bash -e

ansible-playbook \
    --connection=ssh \
    --timeout=30 \
    playbooks/monitoring.yml
