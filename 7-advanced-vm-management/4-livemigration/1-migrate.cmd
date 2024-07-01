oc login -u admin -p redhatocp https://api.ocp4.example.com:6443

oc whoami --show-console

oc new-project test100

vim rhel2-dv-direct.yml
oc create -f rhel2-dv-direct.yml 

oc get vm,vmi

oc get vm,vmi

oc label node worker02 env=dev

oc edit vm rhel2 #Add in template-->spec-->nodeSelector-->env: dev

oc delete vmi rhel2

oc get vm,vmi


oc delete all --all
oc delete project test100
