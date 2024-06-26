oc login -u developer -p developer https://api.ocp4.example.com:6443
oc whoami --show-console
oc project
oc new-project test100
vim fedora2.yml
oc apply -f fedora2.yml



oc get all -n test100



oc get pod -o wide


oc get vm



oc get vmi

./virtctl console fedora2

oc get pod

oc port-forward virtlauncherXXXX 8086:80
oc delete vm fedora2
oc delete project test100
END
