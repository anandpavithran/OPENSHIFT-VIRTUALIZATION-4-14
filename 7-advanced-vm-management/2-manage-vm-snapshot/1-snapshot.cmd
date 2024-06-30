oc login -u admin -p redhatocp https://api.ocp4.example.com:6443

oc whoami --show-console

oc new-project test100

vim rhel2-dv-direct.yml
oc create -f rhel2-dv-direct.yml 

oc get dv

oc get pvc

oc get pv


oc apply -f snapshot.yml

oc get virtualmachinesnapshot

oc get virtualmachinesnapshot

oc get virtualmachinesnapshotcontents

oc get virtualmachinesnapshotcontents


oc get volumesnapshotclass

./virtctl console rhel2 #add new file

oc create -f restoresnap.yml
./virtctl stop rhel2

oc get vm

oc create -f restoresnap.yml

oc get virtualmachinerestore

oc get virtualmachinerestore
oc describe virtualmachinerestore


./virtctl console rhel2 #check

oc delete project test100
