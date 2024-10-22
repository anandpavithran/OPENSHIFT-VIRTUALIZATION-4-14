oc login -u admin -p redhatocp https://api.ocp4.example.com:6443
oc whoami --show-console
oc project
vim fedora40-direct-dv.yml
oc get pv

oc get sc

oc new-project test100
oc apply -f fedora40-direct-dv.yml

oc get pod -A | grep cdi

oc get datavolume,pvc,vm,vmi,pod -o wide

oc get datavolume,pvc,vm,vmi,pod -o wide

oc get all -n test100

oc get pod -o wide
oc get pod -o wide

oc get vm,vmi,pod -o wide

oc get vm,vmi,pod -o wide

oc delete vm fedora2
oc delete project test100
END
