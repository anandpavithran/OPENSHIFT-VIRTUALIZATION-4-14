oc login -u admin -p redhatocp https://api.ocp4.example.com:6443

oc whoami --show-console

oc new-project test100

vim rhel2-dv-direct.yml
oc create -f rhel2-dv-direct.yml 


./virtctl console rhel2 #add file

oc get vm

oc get vmi
2 Ways to export - cli and yml

./virtctl vmexport create --vm=rhel2 rhel2-export # commandline

oc get vmexport #shows pending

./virtctl vmexport delete rhel2-export

oc create -f vmexport.yml 

oc get vmexport #Running vmshows pending

oc get svc

./virtctl stop rhel2

oc get dv,pvc

oc get vmexport

oc describe vmexport rhel2-export 

mkdir download

virtctl vmexport download rhel2-export --keep-vme --manifest --include-secret --output download/rhel2-vm.yml

ls download/

vim download/rhel2-vm.yml 

virtctl vmexport download rhel2-export --keep-vme --volume rhel2-vm --output download/rhel2-vm-disk.img.gz

./virtctl start rhel2
#To export data from a running VM, you must first create a VM snapshot and then execute the command below
#virtctl vmexport create --snapshot=rhel2-snapshot rhel2-export-snapshot #snapshot will discuss later

virtctl vmexport delete rhel2-export
oc get svc
oc delete all --all
##OpenShift Virtualization and the virtctl command-line tool can import VM definition from another OpenShift Virtualization cluster only.#
oc apply -f download/rhel2-vm.yml #Will not work
oc delete all --all
oc delete project test100
