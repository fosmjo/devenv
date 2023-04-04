#!/usr/bin/env bash

pod=$(kubectl --context prod22 --namespace prod get po|grep "$1"|grep Running|head -n 1|awk '{print $1}')
shift
cmd="kubectl --context prod22 --namespace prod exec -it $pod  -- env LANG=C.UTF-8 $@"
echo "$cmd"
eval "$cmd"
