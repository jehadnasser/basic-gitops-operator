# basic-gitops-operator
This is a simple GitOps continuous delivery operator.

### Limitations
It cannot prune any resources that are no longer defined in Git. Another limitation is that it does not deal with any credentials required to connect to the Git repository.

```shell
# Create a testing cluster
kind create cluster --config kind-cluster-configs.yaml

kubectl apply -f operator-helpers.yaml -f gitops-cronjob.yaml

# It will clone and deploy this project each 2 minutes(see the cronjob)
# https://github.com/jehadnasser/demo-k8s-deploy

# to imitate reconcile
kubectl create job --from=cronjob/gitops-cron gitops-cron-XXXX
```