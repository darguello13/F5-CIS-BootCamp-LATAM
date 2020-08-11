#!/bin/bash
# Create nodeport CIS config
printf "##############################################\n"
printf "Create nodeport CIS config\n"
printf "##############################################\n\n\n"
kubectl apply -f f5-cis-nodeport.yaml -n kube-system
printf "\n\n##############################################\n"
printf "Using command: kubectl get pods -A  | grep bigip to check F5 CIS status\n"
printf "Make sure that everything is up and running\n"
printf "Wait for all containers related to the demo to be in running mode\n"
printf "##############################################\n\n\n"
kubectl get pod -A | grep bigip
printf "\n\n##############################################\n"
printf "Create nodeport deployment, service, configmap\n"
printf "##############################################\n\n\n"
kubectl apply -f nginx-deployment.yaml,nginx-nodeport-service.yaml,nginx-configmap.yaml
printf "\n\n##############################################\n"
printf "Chekck the POD status and IP addresses\n"
printf "kubectl get pod -o wide\n"
printf "\n\n##############################################\n\n\n"
kubectl get pod -o wide
printf "\n\n##############################################\n"
printf "Chekck the Services status and IP addresses\n"
printf "kubectl get svc -o wide\n"
printf "##############################################\n\n\n"
kubectl get svc -o wide