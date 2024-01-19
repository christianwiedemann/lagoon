# Register "Lagoon Remote" to "Lagoon Core"
After installling lagoon remote you have to register your remote to lagoon core. Lagoon core needs to know about your remote cluster.
This is one time step.

1. Register your remote:

    ```
      lagoon YOUR NEW COMMAND --url=${URL TO REMOTE COMMAND} --name=name --consoleUrl=${consoleUrl} --token={token}
    ```

    1. `name`: get from `lagoon-remote-values.yml lagoon-build-deploy.lagoonTargetName`
    2. `consoleUrl`: API Endpoint of Kubernetes cluster. Get from kubernetes config. `~/.kube/config:clusters.cluster.server`
    4. `token`: get a token for the `ssh-core` service account

      ```bash title="Get token"
      kubectl -n lagoon get secret/lagoon-remote-ssh-core-token -o json | jq -r '.data.token | @base64d'
      ```
If something goes wrong you can update the cluster via:

2. Update your remote:

    ```
      lagoon YOUR NEW COMMAND --url=${URL TO REMOTE UPDATE COMMAND} --name=name --consoleUrl=${consoleUrl} --token={token}
    ```
    See arguments from above
