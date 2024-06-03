# Sample EKS

How to configure kubectl to access an EKS cluster.:

```
aws eks --region us-east-2 update-kubeconfig --name ex-terraform
```

Validate connectivity to the cluster:

```
kubectl get svc
```

## Deploy the sample application

First auth into your AWS account then

```
task infra:deploy
```

Once the infra is up and running, build and deploy the application:

```
task build
task ecr:login
task ecr:push
task eks:login
task eks:apply
```

## Manage the application with Helm

```
helm repo add stable https://charts.helm.sh/stable
helm repo update
helm create bb-demo
```
