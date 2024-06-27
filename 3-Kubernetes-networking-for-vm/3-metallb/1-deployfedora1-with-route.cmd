oc login -u admin -p redhatocp https://api.ocp4.example.com:6443

oc whoami --show-console

oc new-project test100


oc projects |grep metal

oc get installplan,csv,subscription -n metallb-system


oc get all -n metallb-system

oc get pod -o wide -n metallb-system

oc get daemonsets -n metallb-system

oc get crd | grep metallb

oc describe crd bfdprofiles

oc get crd | grep metallb

oc get metallb -n metallb-system

oc get ipaddresspools -n metallb-system

oc get l2advertisement -n metallb-system

vim fedora1-ssh-web.yml
oc apply -f fedora1-ssh-web.yml

oc get vm/fedora1 -o yaml | grep -C 5 'kubevirt.io/domain'

Add to VM in spec.template.metadata.labels:  kubevirt.io/domain: fedora1

oc edit vm fedora1

oc delete vmi fedora1

oc get vm/fedora1 -o yaml | grep -C 5 'kubevirt.io/domain'
oc get vm

oc get vmi

oc get pod

POD=$(oc get pod -l kubevirt.io/domain=fedora1 -o name)

echo $POD

oc expose ${POD} --name=fedora1 --type=LoadBalancer --selector kubevirt.io/domain=fedora1 --port=22 -o yaml --dry-run=client | tee service.yaml

cat service.yaml

oc apply -f service.yaml

oc get service

oc get endpoints

ssh fedora1@IP


