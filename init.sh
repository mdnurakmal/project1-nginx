#!/bin/bash

helm repo add bitnami https://charts.bitnami.com/bitnami
helm install -f values.yaml ws-reverse-proxy bitnami/nginx