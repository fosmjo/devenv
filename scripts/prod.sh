#!/usr/bin/env bash

pod=$(kubectl --context prod.k8s --namespace prod get po|grep "$1"|grep Running|head -n 1|awk '{print $1}')
shift
cmd="kubectl --context prod.k8s --namespace prod exec -it $pod  -- env LANG=C.UTF-8 $@"
echo "$cmd"
eval "$cmd"
