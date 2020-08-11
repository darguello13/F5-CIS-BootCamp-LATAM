#!/bin/bash
# Create Secret, ServiceAccount, Cluster Role
printf "##############################################\n"
printf "Create Secret, ServiceAccount, Cluster Role\n"
printf "##############################################\n\n\n"
kubectl create secret generic bigip-login -n kube-system --from-literal=username=admin --from-literal=password=f5DEMOs4u#
kubectl create serviceaccount bigip-ctlr -n kube-system
kubectl create clusterrolebinding k8s-bigip-ctlr-clusteradmin --clusterrole=cluster-admin --serviceaccount=kube-system:bigip-ctlr
printf "\n\n##############################################\n"
printf "Using command: kubectl get pods -A to check containers status\n"
printf "Make sure that everything is up and running\n"
printf "Wait for all containers related to the demo to be in running mode\n"
printf "##############################################\n\n\n"
kubectl get pods -A