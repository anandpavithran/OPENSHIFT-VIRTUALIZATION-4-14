oc login -u admin -p redhatocp https://api.ocp4.example.com:6443
oc whoami --show-console
oc project
vim fedora1.yml
oc get pvc -n openshift-virtualization-os-images

oc get pv

oc get sc


oc get VirtualMachineClusterPreference
oc describe VirtualMachineClusterPreference fedora

vim fedora1.yml

oc get virtualmachineclusterinstancetype

oc login -u developer  -p developer https://api.ocp4.example.com:6443
oc new-project test100
oc apply -f fedora1.yml

oc get pod -A | grep cdi

oc get datavolume,pvc
oc get pod -A | grep cdi

oc get pod -A | grep cdi

oc get all -n test100

oc get pod -o wide


oc get vm


oc get vmi


oc delete vm fedora1
oc delete project test100
END
