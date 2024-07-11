oc login -u admin -p redhatocp https://api.ocp4.example.com:6443
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
Take another terminal execute curl http://localhost:8086

INSPECTING THE VMS
oc get pod

oc logs 

oc get vm -A

oc describe vm fedora2


oc exec -it virt-launcherXXX -n test100 -- /bin/bash


./virtctl fslist fedora2

./virtctl guestosinfo fedora2

Providing RBAC
Login to console as developer.Try to list project and VM

oc create rolebinding view --clusterrole=view --user=developer -n test100

#Check the console again


oc delete vm fedora2
oc delete project test100
END
