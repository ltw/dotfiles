export KUBECONFIG=$KUBECONFIG:$HOME/.kube/config-sre-infra

alias k=kubectl
alias sdmup='sdm connect -a && sdm ssh config && :> ~/.kube/config && sdm k8s update-config --force && kubectl config get-contexts'

function kgc {
   kubectl config get-contexts
}

function kuc {
   kubectl config use-context $1
}
