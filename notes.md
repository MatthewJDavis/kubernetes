# K8s notes

Cluster for computers

One or more masters
-  masters provide the control plane, do the scheduling etc
One or more nodes
- node provide the runtime environment
  provide resources for the cluster - run the containers (pods)


Masters
 API Server
 etcd - k8s key value store (db for config
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


Replica Sets
Ensure that the specified number of pods are running across the node(s) at any given time.

kubectl - command line interface for managing the lifecycle of k8s objects. Interacts with the API server

Stateful apps

- Can be deployed with persistent storage
- Can not be scaled - the persistent volume can only be mounted in one pod at a time.
- Can not use rolling updates. strategy type is recreate, the pod is stopped a new pod is started and can then attach to the persistent storage.

Create a persistent volume
Create a claim for the volume
Create a pod that uses the claim to the volume.

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
