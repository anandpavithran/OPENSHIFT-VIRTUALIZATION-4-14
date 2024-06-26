oc login -u admin -p redhatocp https://api.ocp4.example.com:6443
oc whoami --show-console
oc project
oc get nodes -o wide
oc new-project test100
vim fedora2.yml
oc apply -f fedora2.yml



oc get all -n test100



oc get pod -o wide


oc get vm



oc get vmi

./virtctl console fedora2


END
