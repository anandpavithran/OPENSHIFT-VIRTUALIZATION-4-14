oc login -u admin -p redhatocp https://api.ocp4.example.com:6443
oc whoami --show-console
oc new-project test100
vim fedora1.yml
oc apply -f fedora1.yml

Apply app: myvm1 labels to vm fedora1 VM in section spec.template.metadata.labels and delete  VM instance [VMI]

oc edit vm fedora1


oc delete vmi fedora1

oc create service clusterip fedora1 --tcp 80:80

Apply app: myvm1 labels to service fedora1  in section spec.selector

oc edit svc fedora1

oc get vmi

oc expose svc fedora1

oc get route

curl http://

oc delete vm fedora1
oc delete project test100
END
