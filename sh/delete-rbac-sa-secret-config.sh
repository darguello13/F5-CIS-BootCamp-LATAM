#!/bin/bash
# Delete all config after delete CIS deployment
printf "##############################################\n"
printf "Delete all config after delete CIS deployment\n"
printf "##############################################\n\n\n"
kubectl delete clusterrolebinding k8s-bigip-ctlr-clusteradmin
kubectl delete serviceaccount bigip-ctlr -n kube-system
kubectl delete secret bigip-login -n kube-system
printf "\n\n##############################################\n"
printf "Using command: kubectl get pods -A to check containers status\n"
printf "Make sure that everything is up and running\n"
printf "Wait for all containers related to the demo to be in running mode\n"
printf "##############################################\n\n\n"
kubectl get pods -A