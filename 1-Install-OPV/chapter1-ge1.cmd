oc login -u admin -p redhatocp https://api.ocp4.example.com:6443
oc projects
oc get nodes -o wide
vim namespace.yml
oc apply -f namespace.yml
oc projects | grep openshift-cnv
oc get all -n openshift-cnv
oc get operatorgroups -A
vim operatorgroup.yml
oc apply -f operatorgroup.yml
oc get operatorgroup -A
oc get subscription -A
vim  subscription.yml
oc apply -f subscription.yml
oc get sub,installplan,csv -n openshift-cnv
vim hcooperator.yml
oc apply -f hcooperator.yml


