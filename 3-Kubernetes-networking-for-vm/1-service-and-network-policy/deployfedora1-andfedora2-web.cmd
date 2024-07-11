oc login -u admin -p redhatocp https://api.ocp4.example.com:6443
oc whoami --show-console
oc get network/cluster -o yaml
oc project
oc new-project test100
vim fedora1.yml
vim fedora2.yml
oc apply -f fedora1.yml
oc apply -f fedora2.yml

Apply app: myvm1 labels to vm fedora1 VM and app: myvm2 to vm fedora2 VM in section spec.template.metadata.labels and delete both VM instances [VMI]

#oc edit vm fedora1

oc apply -f fedora1-with-label.yml

#oc edit vm fedora2
oc apply -f fedora2-with-label.yml

oc delete vmi fedora1
oc delete vmi fedora2

oc create service clusterip fedora1 --tcp 80:80
oc create service clusterip fedora2 --tcp 80:80

oc get endpoints

Apply app: myvm1 labels to service fedora1  and app: myvm2 to service fedora2  in section spec.selector
oc edit svc fedora1
oc get endpoints
oc edit svc fedora2
oc get endpoints
oc get vmi

Take console of vm in two terminals and execute curl http://ip-fedora1 in fedora2 VMI ,curl http://ip-fedora2 in fedora1 VMI

oc apply -f networkpolicy.yml

Try to curl from fedora2 VMI

oc delete vm fedora1
oc delete vm fedora2
oc delete project test100
END
