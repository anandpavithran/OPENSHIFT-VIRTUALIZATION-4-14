oc login -u admin -p redhatocp https://api.ocp4.example.com:6443
oc whoami --show-console
oc new-project test100
vim fedora2.yml
oc apply -f fedora2.yml

Apply app: myvm2 labels to vm fedora2 VM in section spec.template.metadata.labels and delete  VM instance [VMI]

oc edit vm fedora2


oc delete vmi fedora2

oc create service clusterip fedora2 --tcp 80:80

Apply app: myvm2 labels to service fedora2  in section spec.selector

oc get endpoints 

oc edit svc fedora2

oc get endpoints

oc get vmi

oc expose svc fedora2 --path=/test

oc get route

curl http://

oc delete vm fedora2
oc delete project test100
END
