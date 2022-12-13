kubectl get secret wildcard-darwinist-io -o json \
   | jq 'del(.metadata["namespace","creationTimestamp","resourceVersion","selfLink","uid"])' \
   | kubectl apply -n code-server -f -