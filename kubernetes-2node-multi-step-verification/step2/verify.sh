#!/bin/bash

OUTPUT=$(kubectl get pod my-pod)
echo "$OUTPUT"
if kubectl get pod my-pod; then exit 1; fi
