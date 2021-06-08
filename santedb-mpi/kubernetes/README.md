# SanteDB kubernetes 

To start
- cd to dev folder
- kubectl apply -f db-deployment.yaml,db-service.yaml,santedb-deployment.yaml,santedb-service.yaml,santedb-mpi-dev-persistentvolumeclaim.yaml

To check
- kubectl get deployments
- kubectl get pods 
- kubectl describe <podname>

To scale down
- kubectl scale deployments <name of deployment> --replicas=0