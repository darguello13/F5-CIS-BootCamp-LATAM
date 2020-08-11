#!/bin/bash
#Delete the clusterip environment
printf "##############################################\n"
printf "Delete the clusterip environment\n"
printf "##############################################\n\n\n"
kubectl delete -f nginx-deployment.yaml,nginx-clusterip-service.yaml,nginx-configmap.yaml
kubectl delete -f f5-cis-clusterip.yaml -n kube-system
printf "\n\n##############################################\n"
printf "Using command: kubectl get pods -A to check containers status\n"
printf "Make sure that everything is up and running\n"
printf "Wait for all containers related to the demo to be in running mode\n"
printf "##############################################\n\n\n"
kubectl get pods -A