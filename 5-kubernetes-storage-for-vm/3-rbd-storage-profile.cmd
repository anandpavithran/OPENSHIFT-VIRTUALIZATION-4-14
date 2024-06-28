oc login -u admin -p redhatocp https://api.ocp4.example.com:6443
oc whoami --show-console
oc project
vim rhel2-dv-direct.yml

oc get pv

oc get sc
oc describe sc


oc get storageprofile

oc describe storageprofile

oc new-project test100
oc apply -f rhel2-dv-direct.yml

oc get pod 

oc get datavolume,pvc

oc get datavolume,pvc

oc get all -n test100


oc get vm


oc get vmi


oc delete vm rhel2
oc delete project test100
END
