#!/bin/bash

kubectl apply -f ./deployment.yaml
kubectl rollout restart deployment/ws-reverse-proxy