Start minikube virtualbox driven

`minikube start --driver='virtualbox'`


## Kubectl commands
### namespaces

    kubectl get namespace
    
Setting namespace for a request

    kubectl run nginx --image=nginx --namespace=<insert-namespace-name-here>
    kubectl get pods --namespace=<insert-namespace-name-here>
    
Setting namespace preference

    kubectl config set-context --current --namespace=<insert-namespace-name-here>
    # Validate it
    kubectl config view --minify | grep namespace:
    
All objects with and without namespace

    # In a namespace
    kubectl api-resources --namespaced=true

    # Not in a namespace
    kubectl api-resources --namespaced=fals
   
