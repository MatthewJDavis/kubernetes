# go to console and gke to enable the api
gcloud compute zones list
gcloud config set compute/zone northamerica-northeast1-a
gcloud container clusters create matt-cluster

# get creds for the cluster
gcloud projects list
projid=playground-s-11-6ccaf0

gcloud container clusters get-credentials matt-cluster --zone northamerica-northeast1-a --project $projid

kubectl apply -f deployment.yml
kubectl apply -f service.yml

# update deployment then roll back
kubectl apply -f deployment.yml
kubectl rollout undo deployment.v1.apps/dotnet-core-deployment
kubectl rollout history deployment.v1.apps/dotnet-core-deployment
kubectl rollout history deployment.v1.apps/dotnet-core-deployment --revision=4

# cheaper
gcloud container clusters create cheaper-cluster --num-nodes=2 --machine-type=e2-medium
gcloud container clusters get-credentials cheaper-cluster --zone northamerica-northeast1-a --project $projid

# tidy up
gcloud container clusters list
gcloud container clusters delete cheaper-cluster
gcloud container clusters delete matt-cluster
