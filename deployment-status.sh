#!/bin/bash
if ! kubectl get ns zeru-yang; then
    kubectl create ns zeru-yang
fi

if ! kubectl rollout status deployment sample-spring-boot -n zeru-yang; then
    kubectl apply -f kubernetes.yml
fi