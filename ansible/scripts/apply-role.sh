#!/bin/sh
set -e

role=$1
shift
host=$1
shift
ansible-playbook $@ -e "role=$role" -i "$host," playbooks/apply.yml
