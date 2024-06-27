oc login -u admin -p redhatocp https://api.ocp4.example.com:6443
oc whoami --show-console
oc project
vim fedora1.yml
oc new-project test100
oc apply -f fedora1.yml


oc get all -n test100

oc get pod -o wide

oc get vm

oc get vmi


oc delete vm fedora1
oc delete project test100
END
