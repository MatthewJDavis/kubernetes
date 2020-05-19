# K8s notes

Cluster for computers

One or more masters
-  masters provide the control plane, do the scheduling etc
One or more nodes
- node provide the runtime environment
  provide resources for the cluster - run the containers (pods)


Masters
 API Server
 etcd - k8s keyvalue store (db for config
 scheduler - picks nodes to run work on
 cloud controller manager - integrates with cloud services
 kube controller manager

Node
 kubelet - k8s agent communicates with the control plane
 kube-proxy - manages network connections in and out of the node
 container runtime - runs docker (or other container engine)


Cloud providers
Fully managed K8s, creates the masters and nodes for you, deals with the CA side, networking, availability. Auto upgrades, self repair, no maintenance - high availability. Resource control and cluster scaling.
Don't touch the master control plane.

kubectl - command line interface for managining the lifecycle of k8s objects. Interacts with the API server


Process

create a deployment see src/hello_flask_app/flask_deployment.yml
create a service to expose the container via a loadbalancer. See src/hello_flask_app/flask_service.yml


Helm

Package manager for k8s
Uses tiller (which will be removed in future versions)

Process for helm
Install helm tool
Enable helm on cluster
Install helm chart
 - templated manifests are then applied to the cluster
 