#Demo of adding a datadisk
oc login -u admin -p redhatocp https://api.ocp4.example.com:6443

oc whoami --show-console

oc new-project test100
oc get pv

oc get pvc

oc get dv

vim fedora1.yml
oc create -f fedora1.yml 

oc get dv

oc get pvc

oc get pv

scp web1-disk1.img root@utility:/var/www/html/openshift4/images/web1-disk1.img


ssh root@utility #list

oc create -f datavolume-disk1.yaml 

oc get dv

oc get pvc

oc get pv

./virtctl console fedora1 #NO disk inside

Add from console and list

oc delete project test100

