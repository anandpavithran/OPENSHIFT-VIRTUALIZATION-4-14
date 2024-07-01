oc login -u admin -p redhatocp https://api.ocp4.example.com:6443

oc whoami --show-console

oc new-project test100

vim rhel2-dv-direct.yml
oc create -f rhel2-dv-direct.yml 

oc get vm

oc get vmi

./virtctl console rhel2 #add file

oc get vm

oc get vmi

oc create -f virtualmachine-rhel2-clone.yaml #Clone VM

oc get vm #shows pending .Need stop parent vm

oc get vmi

./virtctl stop rhel2

oc get dv,pvc,vmi,vm


./virtctl start rhel2

oc delete all --all
oc delete project test100
