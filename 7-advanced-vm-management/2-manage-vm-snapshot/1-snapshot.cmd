oc login -u admin -p redhatocp https://api.ocp4.example.com:6443

oc whoami --show-console

oc new-project test100

vim fedora1.yml
oc create -f fedora1.yml 

oc get dv

oc get pvc

oc get pv

./virtctl console fedora1 

oc delete project test100
