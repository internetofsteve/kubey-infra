#!/bin/bash
kubectl get secret $(kubectl get secrets --no-headers | awk '{print $1}' | grep ci-token-) -o=jsonpath='{.data.token}' | pbcopy