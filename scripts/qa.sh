#!/usr/bin/env bash

pod=`kubectl --context dev.k8s --namespace qa get po|grep $1|grep Running|head -n 1|awk '{print $1}'`
shift
echo "kubectl --context dev.k8s --namespace qa exec -it $pod -- env LANG=C.UTF-8 $@"
kubectl --context dev.k8s --namespace qa exec -it $pod -- env LANG=C.UTF-8 $@
