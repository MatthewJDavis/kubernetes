# go to console and gke to enable the api
gcloud compute zones list
gcloud config set compute/zone northamerica-northeast1-a
gcloud container clusters create matt-cluster

# get creds for the cluster

gcloud container clusters get-credentials matt-cluster --zone northamerica-northeast1-a --project playground-s-11-6ccaf0

kubectl apply -f deployment.yml
kubectl apply -f service.yml